data=$(curl --silent --location 'https://api.api-ninjas.com/v1/bucketlist' --header 'x-api-key: AfbT3zZSTbPGbxPbLwlXUQ==bZ2FLXno76StDa8K')
filtered=$(echo "$data" | jq -r .item)
echo $filtered