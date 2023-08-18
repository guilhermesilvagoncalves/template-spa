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
aws cloudformation delete-stack --stack-name $PAGE_NAME

## Get APIEndpoint from CloudFormation
API_ENDPOINT=$(aws cloudformation describe-stacks \
  --stack-name $PAGE_NAME \
  --profile personal | jq '.Stacks[0].Outputs[] | select (.OutputKey=="APIEndpoint").OutputValue' | sed -e 's/\"//g')
echo $API_ENDPOINT

## Get S3 bucket name from CloudFormation
S3_BUCKET=$(aws cloudformation describe-stacks \
  --stack-name $PAGE_NAME \
  --profile personal | jq '.Stacks[0].Outputs[] | select (.OutputKey=="BucketName").OutputValue' | sed -e 's/\"//g')
echo $S3_BUCKET    

## Upload files to S3
aws s3 cp "my-page/build" s3://$S3_BUCKET --recursive

Based on https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/deploy-a-react-based-single-page-application-to-amazon-s3-and-cloudfront.html