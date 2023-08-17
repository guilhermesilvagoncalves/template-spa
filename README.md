# template-spa

## How to install
npm install

## How to run
yarn run

## Create stack on AWS
aws cloudformation create-stack \
  --stack-name my-page-stack \
  --template-body file://react-cors-spa-stack.yaml

## Delete stack
aws delete-stack --stack-name my-page-stack

Based on https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/deploy-a-react-based-single-page-application-to-amazon-s3-and-cloudfront.html