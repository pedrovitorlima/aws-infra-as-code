
### 1 - Hello lambda (golang)
<p>Simple lambda function written in golang to print a greetings message using the parameter "name" specified in the request via get.</p>
<strong><p>How to run</p></strong>
<code>cd 1-hello</code><br />
<code>GOARCH=amd64 GOOS=linux go build -o main main.go</code><br />
<code>chmod +x main</code><br />
<code>sam build</code><br />
<code>sam local start-api</code><br />

### 2 - Lambda and DynamoDB (python)
<p>Create an endpoint to insert a name in a dynamodb and another to return all names</p>
<strong><p>How to run</p></strong>
<code>cd 1-hello</code><br />
<code>GOARCH=amd64 GOOS=linux go build -o main main.go</code><br />
<code>chmod +x main</code><br />
<code>sam build</code><br />
<code>sam local start-api</code><br />
