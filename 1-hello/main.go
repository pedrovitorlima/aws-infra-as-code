package main

import (
	"fmt"
	"net/http"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

func handler(request events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error) {
	name := request.QueryStringParameters["name"]
	if name == "" {
		name = "User"
	}

	message := fmt.Sprintf("Hello, %s!", name)

	return events.APIGatewayProxyResponse{
		StatusCode: http.StatusOK,
		Headers:    map[string]string{"Content-Type": "text/plain"},
		Body:       message,
	}, nil
}

func main() {
	lambda.Start(handler)
}
