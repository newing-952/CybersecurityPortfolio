
import random
#
pwlen = input("How many character PW would you like? ")
pwlen = int(pwlen)
#
all_uc = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
all_lc = "abcdefghijklmnopqrstuvwxyz"
all_num = "0123456789"
all_sc = "!@#$%^&*(),./"
uc_flag = False
lc_flag = False
num_flag = False
sc_flag = False
source_str = all_sc + all_uc + all_lc + all_num

while True:
	passwd_str =""
	for x in range(pwlen):
		idx = random.randrange(0,75)
		passwd_str = passwd_str + source_str[idx]
		if source_str[idx] in all_uc:
			uc_flag = True
		if source_str[idx] in all_lc:
			lc_flag = True
		if source_str[idx] in all_num:
			num_flag = True
		if source_str[idx] in all_sc:
			sc_flag = True
	if uc_flag and lc_flag and num_flag and sc_flag:
		break

print (passwd_str)

