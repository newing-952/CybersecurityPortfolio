str='u Yocanen vecar tcthh e phAlab Betant,di Mney xtar Tgeist  Cvialnsou Hse'
ptxt = ''

for x in range (0,len(str),6):
	ptxt += str[x+2]
	ptxt += str[x+3]
	ptxt += str[x]
	ptxt += str[x+1]
	ptxt += str[x+4]
	ptxt += str[x+5]

print (ptxt)


