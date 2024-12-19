#!/bin/bash

for i in {1..10}
do
	mkdir output_$i
	sed -i "s/transformed_im_*/transformed_im_$i/g" segment_picture.py
	eval "sbatch parallel_execution.sh"
	echo "segmentation $i started"
done	
