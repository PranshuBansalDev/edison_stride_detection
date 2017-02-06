echo ">>>>COMPILING<<<<"
make clean
make
echo ">>>>RUNNING DECLERATION TEST<<<<"
./extract_stride_data Deceleration_Walk_Dataset.csv deceleration_output.csv deceleration_strides.csv
echo ">>>>RUNNING ACCELERATION TEST<<<<"
./extract_stride_data Acceleration_Walk_Dataset.csv acceleration_output.csv acceleration_strides.csv
