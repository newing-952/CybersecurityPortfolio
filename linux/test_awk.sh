#!/bin/bash


awk	'BEGIN {
		last_idx=0;\
		date_time_idx=0;\
		print "Times the losses occured on each day"}\

# Body of awk

	{d1 = substr($1,1,4)}\
	{t1=substr($0,27,11)}\
	{n1=substr($0,48)}\
	{date_time_idx+=1}\
	{date_time_lst[date_time_idx]=d1 t1}\
	{print d1,t1}\
	{gsub(/^[ \t]+/,"",n1)}\
	{gsub(/[ \t]+$/,"",n1)}\
	{gsub("  ", " ",n1)}\
	{gsub(" ,", ",",n1)}\
	{gsub(", ",",",n1)}\
	{split(n1,n1_lst,",")}\
	{for(idx in n1_lst) {\
		last_idx +=1; \
		full_names_lst[last_idx]=n1_lst[idx]; \
		full_dates_lst[last_idx]=d1;\
		full_times_lst[last_idx]=t1}}\


	END { \

		{for(i=1; i<=last_idx; ++i) \
			{ \
			if (full_names_lst[i] in repeat_names_lst == 0) \
				{ \
				repeat_names_lst[full_names_lst[i]] = 1; \
				} \
			else
				{ \
				repeat_names_lst[full_names_lst[i]] += 1; \
				} \
			} \
		} \


		{for (name in repeat_names_lst)\
			{ \
			if (repeat_names_lst[name] > 1) print name, "was playing multiple (", repeat_names_lst[name], ") times";\
			if (repeat_names_lst[name] == date_time_idx) print name, "was playing during EACH of these times" \
			} \
		} \
	}' Roulette_Losses






