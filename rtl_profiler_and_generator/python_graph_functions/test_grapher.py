import pandas as pd
import matplotlib
matplotlib.use('Agg')  # Use non-interactive backend for headless environments
import matplotlib.pyplot as plt
import numpy as np
from pathlib import Path

def get_reports_dir():
    """Prompt user to choose reports directory or comparison mode."""
    while True:
        choice = input("Choose mode ([1] reports, [2] reports_vivado, [3] vivado vs flopoco comparison): ").strip()
        if choice == "1":
            return "reports", "flopoco_only"
        elif choice == "2":
            return "reports_vivado", "flopoco_only"
        elif choice == "3":
            return "reports", "comparison"
        else:
            print("Invalid choice. Please enter 1, 2, or 3.")

def load_and_process_data(reports_dir):
    """Load the CSV data and process it for graphing"""
    df = pd.read_csv(f'../{reports_dir}/area_timing_summary.csv')
    df['Op_Bitwidth'] = df['Operator'] + '_' + df['Bitwidth'].astype(str)
    return df

def load_vivado_reference_data():
    """Load Vivado reference implementation data"""
    try:
        vivado_df = pd.read_csv('../reports_vivado/reference_vivado_implementations.csv')
        # Convert frequency to clock period
        vivado_df['Real_Required_Clock_Period_ns'] = 1000 / vivado_df['Max_Frequency_MHz']
        
        # Map Vivado operator names to match FloPoCo naming
        operator_mapping = {
            'Add_Subtract': 'Adder',
            'Multiply': 'Multiplier', 
            'Divide': 'Divider'
        }
        vivado_df['Operator'] = vivado_df['Operator'].map(operator_mapping)
        
        # Map precision types to bitwidths
        precision_mapping = {
            'Half': 16,
            'Single': 32,  # Added Single precision
            'Double': 64
        }
        vivado_df['Bitwidth'] = vivado_df['Input_Type'].map(precision_mapping)
        vivado_df['Op_Bitwidth'] = vivado_df['Operator'] + '_' + vivado_df['Bitwidth'].astype(str)
        
        # Add source identifier
        vivado_df['Source'] = 'Vivado'
        
        # Ensure resource columns are numeric
        resource_columns = ['LUTs', 'Registers', 'DSPs', 'BRAMs', 'SRLs']
        for col in resource_columns:
            vivado_df[col] = pd.to_numeric(vivado_df[col], errors='coerce').fillna(0)
        
        return vivado_df
    except FileNotFoundError:
        print("Warning: Vivado reference file not found. Comparison mode will not work.")
        return None

def create_latency_vs_clock_period_graphs(df, reports_dir):
    """Create graphs of required clock period vs latency for each (operator, bitwidth) pair"""
    # Get unique operator-bitwidth combinations
    op_bitwidth_pairs = df['Op_Bitwidth'].unique()
    
    # Create subplots
    n_pairs = len(op_bitwidth_pairs)
    n_cols = min(3, n_pairs)
    n_rows = (n_pairs + n_cols - 1) // n_cols
    
    fig, axes = plt.subplots(n_rows, n_cols, figsize=(5*n_cols, 4*n_rows))
    if n_pairs == 1:
        axes = [axes]
    elif n_rows == 1:
        axes = axes.reshape(1, -1)
    
    # Flatten axes for easier indexing
    axes_flat = axes.flatten() if n_pairs > 1 else axes
    
    for idx, op_bitwidth in enumerate(op_bitwidth_pairs):
        subset = df[df['Op_Bitwidth'] == op_bitwidth].copy()
        subset = subset.sort_values('max_latency')
        
        ax = axes_flat[idx]
        ax.scatter(subset['max_latency'], subset['Real_Required_Clock_Period_ns'], 
                  alpha=0.7, s=60, color='blue')
        
        # Connect the points with lines
        if len(subset) > 1:
            ax.plot(subset['max_latency'], subset['Real_Required_Clock_Period_ns'], 
                   "r--", alpha=0.8, linewidth=2)
        
        ax.set_xlabel('Max Latency (cycles)')
        ax.set_ylabel('Required Clock Period (ns)')
        ax.set_title(f'{op_bitwidth}')
        ax.grid(True, alpha=0.3)
        
        # Add frequency labels for reference
        for _, row in subset.iterrows():
            freq_mhz = 1000 / row['Real_Required_Clock_Period_ns']
            ax.annotate(f'{freq_mhz:.0f}MHz', 
                       (row['max_latency'], row['Real_Required_Clock_Period_ns']),
                       xytext=(5, 5), textcoords='offset points', 
                       fontsize=8, alpha=0.7)
    
    # Hide unused subplots
    for idx in range(n_pairs, len(axes_flat)):
        axes_flat[idx].set_visible(False)
    
    plt.tight_layout()
    plt.suptitle('Required Clock Period vs Latency by Operator and Bitwidth', 
                 fontsize=14, y=1.02)
    
    # Save the figure
    output_dir = Path(f'../{reports_dir}/graphs')
    output_dir.mkdir(exist_ok=True)
    plt.savefig(output_dir / 'latency_vs_clock_period.png', dpi=300, bbox_inches='tight')
    print(f"Saved latency vs clock period graph to: {output_dir / 'latency_vs_clock_period.png'}")

def create_comparison_graphs(flopoco_df, vivado_df, reports_dir):
    """Create comparison graphs between FloPoCo and Vivado implementations"""
    # Debug: Print available pairs
    print("FloPoCo operator-bitwidth pairs:")
    for pair in sorted(flopoco_df['Op_Bitwidth'].unique()):
        print(f"  - {pair}")
    print("Vivado operator-bitwidth pairs:")
    for pair in sorted(vivado_df['Op_Bitwidth'].unique()):
        print(f"  - {pair}")
    
    # Find common operator-bitwidth pairs
    flopoco_pairs = set(flopoco_df['Op_Bitwidth'].unique())
    vivado_pairs = set(vivado_df['Op_Bitwidth'].unique())
    common_pairs = flopoco_pairs.intersection(vivado_pairs)
    
    if not common_pairs:
        print("No common operator-bitwidth pairs found between FloPoCo and Vivado data.")
        print("This might be due to different bitwidth mappings.")
        return
    
    print(f"Found {len(common_pairs)} common operator-bitwidth pairs for comparison:")
    for pair in sorted(common_pairs):
        print(f"  - {pair}")
    
    # Create frequency vs resources comparison
    resource_columns = ['LUTs', 'Registers', 'DSPs', 'BRAMs', 'SRLs']
    
    for resource in resource_columns:
        # Check if this resource is used by either implementation
        flopoco_uses_resource = (flopoco_df[resource] > 0).any()
        vivado_uses_resource = (vivado_df[resource] > 0).any()
        
        if not (flopoco_uses_resource or vivado_uses_resource):
            continue
            
        # Create subplots for each common operator-bitwidth pair
        n_pairs = len(common_pairs)
        n_cols = min(3, n_pairs)
        n_rows = (n_pairs + n_cols - 1) // n_cols
        
        fig, axes = plt.subplots(n_rows, n_cols, figsize=(5*n_cols, 4*n_rows))
        if n_pairs == 1:
            axes = [axes]
        elif n_rows == 1:
            axes = axes.reshape(1, -1)
        
        axes_flat = axes.flatten() if n_pairs > 1 else axes
        
        for idx, op_bitwidth in enumerate(sorted(common_pairs)):
            ax = axes_flat[idx]
            
            # FloPoCo data
            flopoco_subset = flopoco_df[flopoco_df['Op_Bitwidth'] == op_bitwidth].copy()
            if len(flopoco_subset) > 0:
                flopoco_freq = 1000 / flopoco_subset['Real_Required_Clock_Period_ns']
                ax.scatter(flopoco_subset[resource], flopoco_freq, 
                          c='blue', alpha=0.7, s=60, label='FloPoCo', marker='o')
                
                # Connect FloPoCo points if multiple configurations exist
                if len(flopoco_subset) > 1:
                    sorted_indices = flopoco_subset[resource].argsort()
                    ax.plot(flopoco_subset[resource].iloc[sorted_indices], 
                           flopoco_freq.iloc[sorted_indices], 
                           "b--", alpha=0.5, linewidth=1)
            
            # Vivado data - make it stand out
            vivado_subset = vivado_df[vivado_df['Op_Bitwidth'] == op_bitwidth].copy()
            if len(vivado_subset) > 0:
                vivado_freq = 1000 / vivado_subset['Real_Required_Clock_Period_ns']
                ax.scatter(vivado_subset[resource], vivado_freq, 
                          c='red', alpha=0.9, s=120, label='Vivado', 
                          marker='D', edgecolors='darkred', linewidth=2)
                
                # Add labels for Vivado points
                for _, row in vivado_subset.iterrows():
                    freq = 1000 / row['Real_Required_Clock_Period_ns']
                    ax.annotate('Vivado', 
                               (row[resource], freq),
                               xytext=(10, 10), textcoords='offset points', 
                               fontsize=8, fontweight='bold', color='darkred',
                               bbox=dict(boxstyle='round,pad=0.3', facecolor='white', alpha=0.8))
            
            ax.set_xlabel(f'{resource} Count')
            ax.set_ylabel('Frequency (MHz)')
            ax.set_title(f'{op_bitwidth}')
            ax.grid(True, alpha=0.3)
            ax.legend()
        
        # Hide unused subplots
        for idx in range(n_pairs, len(axes_flat)):
            axes_flat[idx].set_visible(False)
        
        plt.tight_layout()
        plt.suptitle(f'FloPoCo vs Vivado: Frequency vs {resource} Usage', 
                     fontsize=14, y=1.02)
        
        # Save the figure
        output_dir = Path(f'../{reports_dir}/graphs')
        output_dir.mkdir(exist_ok=True)
        filename = f'comparison_{resource.lower()}_vs_frequency.png'
        plt.savefig(output_dir / filename, dpi=300, bbox_inches='tight')
        print(f"Saved comparison graph to: {output_dir / filename}")

def create_individual_hw_resource_graphs(df, resource_type, resource_column, reports_dir):
    """Create graphs for a specific hardware resource type"""
    # Get unique operator-bitwidth combinations
    op_bitwidth_pairs = df['Op_Bitwidth'].unique()
    
    # Filter out data points where the resource is zero (not relevant for this resource type)
    df_filtered = df[df[resource_column] > 0].copy()
    
    # If no data points have this resource, skip
    if len(df_filtered) == 0:
        print(f"No data points use {resource_type}, skipping...")
        return
    
    # Get unique operator-bitwidth combinations that actually use this resource
    op_bitwidth_pairs_filtered = df_filtered['Op_Bitwidth'].unique()
    
    # Create subplots
    n_pairs = len(op_bitwidth_pairs_filtered)
    n_cols = min(3, n_pairs)
    n_rows = (n_pairs + n_cols - 1) // n_cols
    
    fig, axes = plt.subplots(n_rows, n_cols, figsize=(5*n_cols, 4*n_rows))
    if n_pairs == 1:
        axes = [axes]
    elif n_rows == 1:
        axes = axes.reshape(1, -1)
    
    # Flatten axes for easier indexing
    axes_flat = axes.flatten() if n_pairs > 1 else axes
    
    for idx, op_bitwidth in enumerate(op_bitwidth_pairs_filtered):
        subset = df_filtered[df_filtered['Op_Bitwidth'] == op_bitwidth].copy()
        subset = subset.sort_values(resource_column)
        
        ax = axes_flat[idx]
        scatter = ax.scatter(subset[resource_column], 
                           subset['Real_Required_Clock_Period_ns'], 
                           c=subset['max_latency'], cmap='viridis', 
                           alpha=0.7, s=60)
        
        # Add colorbar for latency
        cbar = plt.colorbar(scatter, ax=ax)
        cbar.set_label('Latency (cycles)', fontsize=8)
        
        # Connect the points with lines if there are multiple points
        if len(subset) > 1:
            ax.plot(subset[resource_column], 
                   subset['Real_Required_Clock_Period_ns'], 
                   "r--", alpha=0.8, linewidth=2)
        
        ax.set_xlabel(f'{resource_type} Count')
        ax.set_ylabel('Required Clock Period (ns)')
        ax.set_title(f'{op_bitwidth}')
        ax.grid(True, alpha=0.3)
        
        # Add frequency labels for reference
        for _, row in subset.iterrows():
            freq_mhz = 1000 / row['Real_Required_Clock_Period_ns']
            ax.annotate(f'{freq_mhz:.0f}MHz', 
                       (row[resource_column], row['Real_Required_Clock_Period_ns']),
                       xytext=(5, 5), textcoords='offset points', 
                       fontsize=8, alpha=0.7)
    
    # Hide unused subplots
    for idx in range(n_pairs, len(axes_flat)):
        axes_flat[idx].set_visible(False)
    
    plt.tight_layout()
    plt.suptitle(f'Required Clock Period vs {resource_type} Usage by Operator and Bitwidth', 
                 fontsize=14, y=1.02)
    
    # Save the figure
    output_dir = Path(f'../{reports_dir}/graphs')
    output_dir.mkdir(exist_ok=True)
    filename = f'{resource_type.lower()}_vs_clock_period.png'
    plt.savefig(output_dir / filename, dpi=300, bbox_inches='tight')
    print(f"Saved {resource_type} vs clock period graph to: {output_dir / filename}")

def create_all_hw_resource_graphs(df, reports_dir):
    """Create separate graphs for each hardware resource type"""
    # Define the hardware resource types and their corresponding columns
    resource_types = {
        'LUTs': 'LUTs',
        'Registers': 'Registers', 
        'DSPs': 'DSPs',
        'BRAMs': 'BRAMs',
        'SRLs': 'SRLs'
    }
    
    for resource_name, column_name in resource_types.items():
        print(f"Creating {resource_name} vs clock period graphs...")
        create_individual_hw_resource_graphs(df, resource_name, column_name, reports_dir)

def create_resource_utilization_summary(df):
    """Create a summary showing which operators use which resources"""
    print("Resource Utilization Summary:")
    print("=" * 50)
    
    resource_columns = ['LUTs', 'Registers', 'DSPs', 'BRAMs', 'SRLs']
    
    for op_bitwidth in sorted(df['Op_Bitwidth'].unique()):
        subset = df[df['Op_Bitwidth'] == op_bitwidth]
        print(f"\n{op_bitwidth}:")
        
        for resource in resource_columns:
            max_usage = subset[resource].max()
            min_usage = subset[resource].min()
            avg_usage = subset[resource].mean()
            
            if max_usage > 0:
                print(f"  - {resource}: {min_usage:.0f}-{max_usage:.0f} (avg: {avg_usage:.1f})")
            else:
                print(f"  - {resource}: Not used")

def main():
    """Main function to run the analysis"""
    reports_dir, mode = get_reports_dir()
    
    print("Loading and processing FloPoCo data...")
    flopoco_df = load_and_process_data(reports_dir)
    
    print(f"Loaded {len(flopoco_df)} FloPoCo data points")
    print(f"Found {len(flopoco_df['Op_Bitwidth'].unique())} unique (Operator, Bitwidth) pairs:")
    for pair in sorted(flopoco_df['Op_Bitwidth'].unique()):
        count = len(flopoco_df[flopoco_df['Op_Bitwidth'] == pair])
        print(f"  - {pair}: {count} configurations")
    print()
    
    if mode == "comparison":
        print("Loading Vivado reference data...")
        vivado_df = load_vivado_reference_data()
        
        if vivado_df is not None:
            print("Creating FloPoCo vs Vivado comparison graphs...")
            create_comparison_graphs(flopoco_df, vivado_df, reports_dir)
        else:
            print("Vivado data not available, falling back to FloPoCo-only analysis...")
            mode = "flopoco_only"
    
    if mode == "flopoco_only":
        create_resource_utilization_summary(flopoco_df)
        print()
        
        print("Creating latency vs clock period graphs...")
        create_latency_vs_clock_period_graphs(flopoco_df, reports_dir)
        
        print("Creating individual hardware resource vs clock period graphs...")
        create_all_hw_resource_graphs(flopoco_df, reports_dir)
    
    print("Analysis complete!")

if __name__ == "__main__":
    main()