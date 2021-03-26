#!/bin/bash

state_list=('Oklahoma' 'Texas' 'Nebraska' 'Ohio' 'New York')
hawaii_flag=0

for states in ${state_list[@]}
do
#	echo $states
	if [ $states == 'Hawaii' ]
	then
		hawaii_flag=1
	fi
done

if [ $hawaii_flag == 0 ]
then
	echo "I'm not fond of Hawaii"
else
	echo "Hawaii is the best!"
fi

number_list=$(echo {0..9})
for number in ${number_list[@]}
do
	if [ $number = 3 ] || [ $number = 5 ] || [ $number = 7 ]
	then
		echo $number
	fi
done

ls_list=$(ls)
for ls in ${ls_list[@]}
do
	echo $ls
done

find_list=$(find /home -type f -perm 777 2> /dev/null)
for find in ${find_list[@]}
do
	echo $find
done


