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
. ./scripts/createStack.sh $PAGE_NAME

## Get S3 bucket name from CloudFormation
. ./scripts/getS3BucketName.sh $PAGE_NAME

## Delete stack
. ./scripts/deleteStack.sh $S3_BUCKET $PAGE_NAME

## Get APIEndpoint from CloudFormation
. ./scripts/getAPIEndpointFromCloudFormation.sh $PAGE_NAME

## Upload files to S3
. ./scripts/uploadFilesToS3.sh "react-spa" $S3_BUCKET

Based on https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/deploy-a-react-based-single-page-application-to-amazon-s3-and-cloudfront.html