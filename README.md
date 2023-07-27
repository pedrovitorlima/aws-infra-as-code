
### 1 - Hello lambda
<p>Stack</p>
Golang, AWS sam, Lambda

<strong><p>How to run</p></strong>
<code>cd 1-hello</code><br />
<code>GOARCH=amd64 GOOS=linux go build -o main main.go</code><br />
<code>chmod +x main</code><br />
<code>sam build</code><br />
<code>sam local start-api</code><br />

### 2 - Lambda and DynamoDB
<p>Stack</p>
Python, Terraform, Lambda, DynamoDB

<p>Create an endpoint to insert a name in a dynamodb and another to return all names</p>
<strong><p>How to run</p></strong>
<code>cd 1-hello</code><br />
<code>GOARCH=amd64 GOOS=linux go build -o main main.go</code><br />
<code>chmod +x main</code><br />
<code>sam build</code><br />
<code>sam local start-api</code><br />
