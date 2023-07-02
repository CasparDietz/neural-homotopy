#!/bin/bash

./bin/data_sampler ./data/delivery_area_dslr_undistorted/delivery_area/dslr_calibration_undistorted/ 10 > ./DATA/anchor_data.txt
message="./bin/data_sampler ./data/delivery_area_dslr_undistorted/delivery_area/dslr_calibration_undistorted/ 10 > ./DATA/anchor_data.txt"
echo "$message" >> my_file.txt

python3 add_number_of_lines.py data/anchor_data.txt

./bin/data_sampler ./data/electro_dslr_undistorted/electro/dslr_calibration_undistorted/ 10 > ./DATA/val_data.txt
message="./bin/data_sampler ./data/electro_dslr_undistorted/electro/dslr_calibration_undistorted/ 10 > ./DATA/val_data.txt"
echo "$message" >> my_file.txt

python3 add_number_of_lines.py data/val_data.txt

./bin/data_sampler ./data/playground_dslr_undistorted/playground/dslr_calibration_undistorted/ 10 > ./DATA/test_data.txt
message="./bin/data_sampler ./data/playground_dslr_undistorted/playground/dslr_calibration_undistorted/ 10 > ./DATA/test_data.txt"
echo "$message" >> my_file.txt

python3 add_number_of_lines.py data/test_data.txt

./bin/data_sampler ./data/terrains_dslr_undistorted/terrains/dslr_calibration_undistorted/ 25 > ./DATA/train_data_terrains.txt
message="./bin/data_sampler ./data/terrains_dslr_undistorted/terrains/dslr_calibration_undistorted/ 25 > ./DATA/train_data_terrains.txt"
echo "$message" >> my_file.txt

python3 add_number_of_lines.py data/train_data_terrains.txt

./BIN/connectivity ./DATA/anchor_data.txt ./MODEL ./MODEL/trainParam.txt
message="./BIN/connectivity ./DATA/anchor_data.txt ./MODEL ./MODEL/trainParam.txt"
echo "$message" >> my_file.txt

./BIN/anchors ./DATA/anchor_data.txt ./MODEL ./MODEL/trainParam.txt
message="./BIN/anchors ./DATA/anchor_data.txt ./MODEL ./MODEL/trainParam.txt"
echo "$message" >> my_file.txt

./BIN/labels ./DATA/val_data.txt ./MODEL ./MODEL val ./MODEL/trainParam.txt
message="./BIN/labels ./DATA/val_data.txt ./MODEL ./MODEL val ./MODEL/trainParam.txt"
echo "$message" >> my_file.txt

./BIN/labels ./DATA/train_data_terrains/.txt ./MODEL ./MODEL train_terrains ./MODEL/trainParam.txt
message="./BIN/labels ./DATA/train_data_terrains/.txt ./MODEL ./MODEL train_terrains ./MODEL/trainParam.txt"
echo "$message" >> my_file.txt

python3 ./ROOT/train_nn.py ./MODEL ./MODEL/trainParam.txt
message="python3 ./ROOT/train_nn.py ./MODEL ./MODEL/trainParam.txt"
echo "$message" >> my_file.txt