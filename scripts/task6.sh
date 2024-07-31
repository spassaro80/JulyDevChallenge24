curl \
  --data '{"communityid":"spassaro","serviceurl":"https://stefano-july24-devchall.cfapps.us10-001.hana.ondemand.com/rest/plain","task":"plain-highestValue"}' \
  --header 'Content-Type: application/json' \
  --url 'https://developer-challenge-2024-07.cfapps.eu10.hana.ondemand.com/tester/testServer'

curl -X POST \
  -H "Content-Type: application/json" \
  -d '[54, 203, -3, 0, 1]' \
  http://localhost:4004/rest/plain/highestValue