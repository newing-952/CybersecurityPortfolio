#!/bin/bash

while read line; 
do 
	grep "${line:26:11}" "${line:0:4}_Dealer_schedule" | awk '{print $1, $2, $5, $6}' >> Dealers_working_during_losses
done < ../Player_Analysis/Roulette_Losses
