FRONT_ENDPOINT=$(aws cloudformation describe-stacks \
  --stack-name $1 \
  --profile personal | jq '.Stacks[0].Outputs[] | select (.OutputKey=="CFDistributionURL").OutputValue' | sed -e 's/\"//g')
echo "Front endpoint created by CloudFormation: $FRONT_ENDPOINT"