#shell prgm to kill process consuming CPU greater than a threshold value
echo "Process managment...."
echo "Top consuming process are..."
echo "Paid	cpu-load	pname"
ps aux | sort -nrk 3 | head | awk '{print $2"	"$3"		"$11}' >psout
cat psout
read -p "Enter the Threshold Level" th

while IFS= read line
do
	pno=$(echo $line | awk '{print $1}')
	cpuload=$(echo $line | awk '{print $2}')
	if (( $(echo "$cpuload > $th" |bc -l) ));
	then 
		kill $pno
	fi
done <"psout"

