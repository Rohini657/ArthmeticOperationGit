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
for i in {1..3};
do
	echo ${add[@]}
done
