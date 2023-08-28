# template-spa
This template intends to be an ready-to-use react-spa frontend, based on a AWS stack using CloudFront e S3.
Feel free to create an repository based on it, and to contribute with code improvements :)

## Pre-requisites
To use this repo, you need to have an AWS account, locally configured on your machine to use CLI.

For more information: https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html

## How to install
npm install

## <a id="Build-application">How to build</a>
npm build

## How to run
npm run

## Steps
1. [Define environment variables](#define-environment-variables)
2. [Create stack on AWS](#create-stack-on-AWS)
3. [Get S3 bucket name from CloudFormation](#Get-S3-bucket-name-from-CloudFormation)
4. [Build application](#Build-application)
5. [Upload files to S3](#Upload-files-to-S3)
6. [Get Frontend Endpoint from CloudFormation and access your application](#Get-Frontend-Endpoint-from-CloudFormation-and-access-your-application)


</br>
</br>

## <a id="define-environment-variables">Define environment variables</a>
export PAGE_NAME=my-page-stack
export AWS_PROFILE=personal

## <a id="create-stack-on-AWS">Create stack on AWS</a>
. ./scripts/createStack.sh $PAGE_NAME

## <a id="Get-S3-bucket-name-from-CloudFormation"> Get S3 bucket name from CloudFormation </a>
. ./scripts/getS3BucketName.sh $PAGE_NAME

## <a id="Delete-stack"> Delete stack </a>
. ./scripts/deleteStack.sh $S3_BUCKET $PAGE_NAME

## <a id="Get-APIEndpoint-from-CloudFormation"> Get APIEndpoint from CloudFormation </a>
. ./scripts/getAPIEndpointFromCloudFormation.sh $PAGE_NAME

## <a id="Get-Frontend-Endpoint-from-CloudFormation"> Get Frontend Endpoint from CloudFormation </a>
. ./scripts/getFrontEndpointFromCloudFormation.sh $PAGE_NAME

## <a id="Upload-files-to-S3"> Upload files to S3 </a>
. ./scripts/uploadFilesToS3.sh "react-spa" $S3_BUCKET

### Based on https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/deploy-a-react-based-single-page-application-to-amazon-s3-and-cloudfront.html