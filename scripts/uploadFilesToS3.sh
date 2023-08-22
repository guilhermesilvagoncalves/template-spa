echo "Uploading files from $1 to $2 S3 bucket"
echo "-------------------"
aws s3 cp "$1/build" s3://$2 --recursive
echo "-------------------"
echo "Upload Complete!"