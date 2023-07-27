
#Run the local dynamodb emulator
docker run -p 8000:8000 amazon/dynamodb-local

#Create the Names table based on the json definition
aws dynamodb create-table --cli-input-json file://create-table-names.json --endpoint-url http://localhost:8000

#Build using a container and specify environment variables
sam build -u -ef local-env.json

#start the api
sam local start-api