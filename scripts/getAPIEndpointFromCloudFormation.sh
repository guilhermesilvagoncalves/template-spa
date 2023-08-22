API_ENDPOINT=$(aws cloudformation describe-stacks \
  --stack-name $1 \
  --profile personal | jq '.Stacks[0].Outputs[] | select (.OutputKey=="APIEndpoint").OutputValue' | sed -e 's/\"//g')
echo "Page endpoint created by CloudFormation: $API_ENDPOINT"