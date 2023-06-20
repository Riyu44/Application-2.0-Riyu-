data=$(curl -s --location 'https://api.nasa.gov/planetary/apod?api_key=oMQkVEwCiuwFhmvM4ZXutP9Xg3PpnNUKXgyH2yJD')
url=$(echo "$data" | jq -r '.hdurl')
curl -o NASAOP.jpg "$url"
start NASAOP.jpg
echo "$url"
sleep 2
rm NASAOP.jpg