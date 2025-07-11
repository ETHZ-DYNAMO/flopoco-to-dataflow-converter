for bit in 32 64; do
  for freq in 100 300 500 800; do
    sudo python3 float_gen.py \
      --name "FloatingPointSubtractor" \
      --bitSize "$bit" \
      --targetFrequencyMHz "$freq" \
      --wrapper_file_name "../generation_results0425/FloatingPointSubtractor_${bit}_${freq}_wIO/wrapper.vhd" \
      --out_file_name "../generation_results0425/FloatingPointSubtractor_${bit}_${freq}_wIO/operator.vhd"
  done
done
