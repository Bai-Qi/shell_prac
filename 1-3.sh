#/bin/bash
sum=0

for i in `ps aux |sed '1d' |awk '{print $6}' `
do
	sum=$[ $sum + $i ]
done

echo $sum
