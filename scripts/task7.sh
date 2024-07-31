curl \
  --data '{"communityid":"spassaro","serviceurl":"https://stefanonorthbreeze.cfapps.us10-001.hana.ondemand.com/odata/v4/northbreeze","task":"northbreeze-productInfo"}' \
  --header 'Content-Type: application/json' \
  --url 'https://developer-challenge-2024-07.cfapps.eu10.hana.ondemand.com/tester/testServer'


curl -s --url 'https://port4004-workspaces-ws-nwn8g.us10.trial.applicationstudio.cloud.sap/odata/v4/northbreeze/productInfo(id=11)' | jq
curl -s --url 'https://stefano-july24-devchall.cfapps.us10-001.hana.ondemand.com/odata/v4/northbreeze/productInfo(id=3)' | jq