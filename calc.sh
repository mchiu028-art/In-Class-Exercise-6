

while true; do
function add() {
    echo $(($1 + $2))
}
function sub() {
    echo $(($1 - $2))
}
read -p "Enter number 1: " x
read -p "Enter number 2: " y
read -p "what operation? " op
echo $x $y

done
