read -p "Type a num or string: " input
if [[ $input =~ ^[+-]?[0-9]+$ ]] 
then
echo "Input is an integer"
elif [[ $input =~ ^[+-]?[0-9]+\.$ ]] 
then
echo "input is string"
elif [[ $input =~ ^[+-]?[0-9]+\.?[0-9]*$ ]] 
then
echo "input is float"
else 
echo "input is a string"
fi
