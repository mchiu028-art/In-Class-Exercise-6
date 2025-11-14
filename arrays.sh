office_inventory=(
  "pen"
  "pen"
  "pen"
  "pencil"
  "pencil"
  "notebook"
  "notebook"
  "notebook"
  "notebook"
  "stapler"
  "paper"
  "paper"
  "paper"
  "paper"
  "envelope"
  "envelope"
  "envelope"
  "tape"
  "tape"
  "scissors"
)

declare -A stock

for item in office_inventory; do
  stock[$item] = $((stock[$item] + 1))

done

for item in ${!stock[@]}; do
  if[[ ${stock[$item]} -le 2]]; then
    echo $item $[stock[$item]] RESTOCK NEEDED
  else
  echo $item ${stock[$item] + 1}
done