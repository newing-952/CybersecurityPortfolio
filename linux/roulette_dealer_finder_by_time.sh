#!/bin/bash

grep "${2:0:11}" "${1}_Dealer_schedule" < ../Player_Analysis/Roulette_Losses | awk '{print $1, $2, $5, $6}'
