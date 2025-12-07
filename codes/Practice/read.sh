# question : Write a script to read a number from user and print the sum of its digits. If user enters a non-numeric value, print "Invalid number".

read -p "Enter number: " num

if [[ $num =~ ^[0-9]+$ ]]; then
	sum=0
	for(( i=0; i<${#num};i++ )); do
		digit=${num:$i:1}
		sum=$((sum+digit))
	done
	echo $sum
else 
	echo "Invalid number"
fi
