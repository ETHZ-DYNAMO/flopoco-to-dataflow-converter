import pandas as pd
import matplotlib
matplotlib.use('Agg')  # Use non-interactive backend for headless environments
import matplotlib.pyplot as plt
import numpy as np
from pathlib import Path

def get_reports_dir():
    """Prompt user to choose reports directory."""
    while True:
        choice = input("Choose reports directory ([1] reports, [2] reports_vivado): ").strip()
        if choice == "1":
            return "reports"
        elif choice == "2":
            return "reports_vivado"
        else:
            print("Invalid choice. Please enter 1 or 2.")

def load_and_process_data(reports_dir):
    """Load the CSV data and process it for graphing"""
    df = pd.read_csv(f'../{reports_dir}/area_timing_summary.csv')
    df['Op_Bitwidth'] = df['Operator'] + '_' + df['Bitwidth'].astype(str)
    return df

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
    reports_dir = get_reports_dir()
    print("Loading and processing area timing data...")
    df = load_and_process_data(reports_dir)
    
    print(f"Loaded {len(df)} data points")
    print(f"Found {len(df['Op_Bitwidth'].unique())} unique (Operator, Bitwidth) pairs:")
    for pair in sorted(df['Op_Bitwidth'].unique()):
        count = len(df[df['Op_Bitwidth'] == pair])
        print(f"  - {pair}: {count} configurations")
    print()
    
    create_resource_utilization_summary(df)
    print()
    
    print("Creating latency vs clock period graphs...")
    create_latency_vs_clock_period_graphs(df, reports_dir)
    
    print("Creating individual hardware resource vs clock period graphs...")
    create_all_hw_resource_graphs(df, reports_dir)
    
    print("Analysis complete!")

if __name__ == "__main__":
    main()