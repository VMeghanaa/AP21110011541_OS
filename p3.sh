echo "Enter the size(N)"
read N
i=1
sum=0
echo "enter the numbers"
while [ $i -le $N ]
do
  read n
  sum=$((sum + n))
  i=$((i+1)) 
done
avg=$(echo $sum / $N | bc -l) 
echo $avg


