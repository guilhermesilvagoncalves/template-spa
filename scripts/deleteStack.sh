echo "Deletion started for Cloudformation Stack named $1"
echo "-------------------"
aws s3 rm s3://$1 --recursive
aws s3 rm s3://$1-logs --recursive
aws cloudformation delete-stack --stack-name $2