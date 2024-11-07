#!/bin/sh

weight=$1
height=$2

height_to_m=$(echo "$height / 100" | bc -l)

bmi=$(echo "scale=2; $weight / ($height_to_m * $height_to_m)" | bc -l)

bmi_check=$(echo "$bmi < 18.5" | bc)
if [ "$bmi_check" -eq 1 ]; then
	echo "저체중입니다."
else
	bmi_check=$(echo "$bmi >= 18.5 && $bmi < 23" | bc)
	if [ "$bmi_check" -eq 1 ]; then
		echo "정상체중입니다."
	else
		echo "과체중입니다."
	fi
fi
