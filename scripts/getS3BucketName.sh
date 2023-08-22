S3_BUCKET=$(aws cloudformation describe-stacks \
  --stack-name $1 \
  --profile personal | jq '.Stacks[0].Outputs[] | select (.OutputKey=="BucketName").OutputValue' | sed -e 's/\"//g')
echo "S3 Bucket created by CloudFormation: $S3_BUCKET"