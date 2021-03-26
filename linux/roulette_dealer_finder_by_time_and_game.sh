#!/bin/bash
#
# $1 is the 4 digit date code MMDD
# $2 is the time in the format "05:00:00 AM"
# $3 is an integer 1-3 as follows:
#	1 = BlackJack Dealer
#	2 = Roulette Dealer
# 	3 = Texas Hold'em Dealer
#
if [ $3 -eq 1 ]
	then grep "${2:0:11}" "${1}_Dealer_schedule" < ../Player_Analysis/Roulette_Losses | awk '{print $1, $2, $3, $4}'
elif [ $3 -eq 2 ]
	then grep "${2:0:11}" "${1}_Dealer_schedule" < ../Player_Analysis/Roulette_Losses | awk '{print $1, $2, $5, $6}'
elif [ $3 -eq 3 ]
	then grep "${2:0:11}" "${1}_Dealer_schedule" < ../Player_Analysis/Roulette_Losses | awk '{print $1, $2, $7, $8}'
fi
 

