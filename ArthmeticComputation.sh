#####Arthmetic Operation#####
#### Use Case1
#!/bin/bash -x
read -p "Enter First Numbeer : " a;
read -p "Enter Second Number : " b;
read -p "Enter Third Number :  " c;

#### Use Case2
a1=$((a+b*c))
echo "First Operation:= $a1"

#### Use Case3
a2=$((a*b+c))
echo "Second Operation: $a2"

#### Use Case4
a3=$((c+a/b))
echo "Third Operation: $a3"

#### Use Case5
a4=$((a%b+c))
echo "Fourth Operation: $a4"

#### Use Case6
declare -A add

add[First Operation]=$a1;
add[Second Operation]=$a2;
add[Third Operartion]=$a3;
add[Fourth Operation]=$a4;

echo "All Operation" ${add[@]}

#### Use Case7
echo "Array Representation"
echo "Array Representation"
arr[0]=${add[a1]}
arr[1]=${add[a2]}
arr[2]=${add[a3]}
arr[3]=${add[a4]}

#### Use Case8
echo "Decending Order"
for ((i=0;i<4;i++))
do
        for ((j=0;j<4-$i-1;j++))
        do
        if [[ ${arr[j]} -lt ${arr[$((j+1))]} ]]
        then
                temp=${arr[$j]}
                arr[$j]=${arr[$((j+1))]}
                arr[$((j+1))]=$temp
        fi
        done
done
#Print number Sorted order
for ((j=0;j<4;j++))
do
        echo ${arr[j]}
done

####Ascending Order
echo "Asending Order:"
for ((i=0;i<4;i++ ))
do
        for ((j=0;j<4-i-1;j++ ))
        do
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
                temp=${arr[j]}
                arr[$j]=${arr[$((j+1))]}
                arr[$((j+1))]=$temp
        fi
        done
done

#echo"Asending Order:"

for ((j=o;j<4;j++))
do
        echo ${arr[j]}
done

