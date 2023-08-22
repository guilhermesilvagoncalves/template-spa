echo "Creation started for Cloudformation Stack named $1"
echo "-------------------"
aws cloudformation create-stack \
  --stack-name $1 \
  --template-body file://react-cors-spa-stack.yaml