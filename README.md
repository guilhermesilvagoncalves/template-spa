# template-spa

## How to install
npm install

## How to build

## How to run
yarn run

## Define environment variables
export PAGE_NAME=my-page-stack
export AWS_PROFILE=personal

## Create stack on AWS
aws cloudformation create-stack \
  --stack-name $PAGE_NAME \
  --template-body file://react-cors-spa-stack.yaml

## Delete stack
aws delete-stack --stack-name $PAGE_NAME

## Get APIEndpoint from CloudFormation
aws cloudformation describe-stacks \
  --stack-name $PAGE_NAME \
  --profile personal | jq '.Stacks[0].Outputs[] | select (.OutputKey=="APIEndpoint").OutputValue'

## Get S3 bucket name from CloudFormation
aws cloudformation describe-stacks \
  --stack-name $PAGE_NAME \
  --profile personal | jq '.Stacks[0].Outputs[] | select (.OutputKey=="BucketName").OutputValue'


Based on https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/deploy-a-react-based-single-page-application-to-amazon-s3-and-cloudfront.html