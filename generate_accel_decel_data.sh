#!/bin/bash

if [ $1 ]; then
		threshold=$1
else
		threshold=6
fi

echo ""
echo ">>>>COMPILING<<<<"
make clean
make

echo ""
echo ">>>>EXECUTING extract_stride_data on DECELERATION DATASET<<<<"
./extract_stride_data \
	Deceleration_Walk_Dataset.csv \
	deceleration_output.csv \
	deceleration_strides.csv \
	$threshold

echo ""
echo ">>>>EXECUTING extract_stride_data on ACCELERATION DATASET<<<<"
./extract_stride_data \
	Acceleration_Walk_Dataset.csv \
	acceleration_output.csv \
	acceleration_strides.csv \
	$threshold

echo ""
echo "Lines in accel and decel output.csv"
wc -l acceleration_output.csv
wc -l deceleration_output.csv

echo ""
echo "Tail of accel output.csv"
tail acceleration_output.csv

echo ""
echo "Tail of decel output.csv"
tail deceleration_output.csv
