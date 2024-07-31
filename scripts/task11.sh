curl \
  --data '{"communityid":"spassaro","serviceurl":"https://northbreeze2.cfapps.us10-001.hana.ondemand.com/odata/v4/northbreeze","task":"northbreeze-stockValue"}' \
  --header 'Content-Type: application/json' \
  --url 'https://developer-challenge-2024-07.cfapps.eu10.hana.ondemand.com/tester/testServer'

curl -X POST \
  -H "Content-Type: application/json" \
  -d '{"communityid": "QmacrO"}' \
  https://northbreeze2.cfapps.us10-001.hana.ondemand.com/odata/v4/northbreeze/selectProduct
curl -X POST \
  -H "Content-Type: application/json" \
  -d '{"communityid": "QmacrO"}' \
  http://localhost:4004/odata/v4/northbreeze/selectProduct


