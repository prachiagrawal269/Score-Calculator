x#!bin/bash

filename=$1
a=1
score=0

# array containing answers to all questions stored as dictionary
declare -A arr
arr[1]="None of the other options are correct."
arr[2]="Green"
arr[3]="E"
arr[4]="Two out of three"
arr[5]=70
arr[6]="Tito"
arr[7]="A, 5"
arr[8]="Connor and Emma have the same amount of money."
arr[9]="Neither"
arr[10]="Match"
arr[11]=6
arr[12]=0
arr[13]="pixnarth"
arr[14]=1
arr[15]="B alone is sufficient"
arr[16]=178
arr[17]="Rye"
arr[18]="4.69%"
arr[19]=""
arr[20]="Legal Authorization"
arr[21]=1000
arr[22]=17
arr[23]="Mother"
arr[24]="Switch:Light"
arr[25]=0.25
arr[26]=3
arr[27]=4


for i in `seq 1 27`
do 

	s="$"
	new="$s$a"

	str1="awk -F\"\\t\" '{print "
	str2="}' "
	str=$str1$new$str2$filename
	
	output=`eval $str`
	#awk -F"\t" '{print $s}' $filename



	# +3 on correct output , -1 on wrong output
	if [ $a == 19 ]
	then
		score=$(($score+3))
	else 
		if [ "$output" == "${arr[$a]}" ]
		then
			score=$(($score+3)) 
		elif [ "$output" == "" ]
		then
			score=$(($score+0))
		else
			 score=$(($score-1)) 
		fi
	fi


	a=$(($a+1)) 

done


echo $score
