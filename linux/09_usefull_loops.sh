#!/bin/bash
#
# Shell Script for Week_06 Activity 09_STU_Useful_Loops
#
file_list=('/etc/shadow' '/etc/passwd')

for file in ${file_list[@]}
do
	echo $file $(ls -la $file | awk {'print$1'})
done

# 
# BONUS 1
#

user_list=$(ls /home)

for user in ${user_list[@]}
do
#
# If you know you're always going to use bash, it's much easier to always
# use the double bracket conditional compound command [[ ... ]], instead
# of the Posix-compatible single bracket version [ ... ]. Inside a
# [[ ... ]] compound, word-splitting and pathname expansion are not
# applied to words, so you can rely on
#
# if [[ $aug1 == "and" ]];
#
# to compare the value of $aug1 with the string and.
#
# If you use [ ... ], you always need to remember to double quote variables like this:
#
# if [ "$aug1" = "and" ];
#
# If you don't quote the variable expansion and the variable is undefined
# or empty, it vanishes from the scene of the crime, leaving only
#
# if [ = "and" ];
#
# which is not a valid syntax. (It would also fail with a different error
# message if $aug1 included white space or shell metacharacters.)
#
# The modern [[ operator has lots of other nice features, including
# regular expression matching.
#
# Note: Copied Directly from: (URL split for size, enter as 1 string)
#
# https://stackoverflow.com/questions/13617843/
# unary-operator-expected-error-in-bash-if-condition
#
# All of the above to explain the following line of code:
#
	if [[ $(grep $user /etc/passwd) != "" ]]
	then
		sudo -l -U $user
	else
		echo User $user Not in /etc/passwd
	fi
done
# Could pretty up the output a bit, but leave that for another day.
#
# The following line does it all in one command line:
#
for user in $(ls /home); do sudo -l -U $user; done
#
# It turns out, I really didn't need the if block as sudo prints a relevant message if user is not found
#
# BONUS 2
#
echo BONUS 2
command_list=("date" "uname -a" "hostname -s")
for command in "${command_list[@]}"
do
	echo "The results of the $command command are: $($command)"
done
#
# Notice the double quotes around the list in the for loop.  I had to do that, without them the spaces
# in the second and third elements of the lists we expanded to create another list item.
#
# The solution guide used a for x in {0..2} to create indices to interate through the list.  I think my
# way is more elegant
#

