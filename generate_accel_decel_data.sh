echo ""
echo ">>>>COMPILING<<<<"
make clean
make
echo ""
echo ">>>>EXECUTING extract_stride_data on DECLERATION DATASET<<<<"
./extract_stride_data Deceleration_Walk_Dataset.csv deceleration_output.csv deceleration_strides.csv 6.7
echo ""
echo ">>>>EXECUTING extract_stride_data on ACCLERATION DATASET<<<<"
./extract_stride_data Acceleration_Walk_Dataset.csv acceleration_output.csv acceleration_strides.csv 6.7
