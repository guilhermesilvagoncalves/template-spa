For english version, [click here](#README_eng.md)

# template-spa
Este template pretende ser um frontend react-spa pronto para uso, baseado em uma stack AWS usando CloudFront e S3.
Sinta-se à vontade para criar um repositório baseado nele e contribuir com melhorias no código :)

## Pre-requisites
Para usar este repositório, você precisa ter uma conta AWS, configurada localmente em sua máquina para usar CLI.

Para obter mais informações: https://docs.aws.amazon.com/pt_br/cli/latest/userguide/cli-chap-configure.html

## Como instalar
npm install

## <a id="Build-application">Como fazer o build</a>
npm build

## Como rodar
npm run

## Passos
1. [Definir variáveis de ambiente](#define-environment-variables)
2. [Criar stack na AWS](#create-stack-on-AWS)
3. [Obter nome do bucket S3 do CloudFormation](#Get-S3-bucket-name-from-CloudFormation)
4. [Build application](#Build-application)
5. [Fazer upload dos arquivos para o S3](#Upload-files-to-S3)
6. [Obter endpoint do frontend do CloudFormation and access your application](#Get-Frontend-Endpoint-from-CloudFormation-and-access-your-application)


</br>
</br>

## <a id="define-environment-variables">Definir variáveis de ambiente</a>
export PAGE_NAME=my-page-stack
export AWS_PROFILE=personal

## <a id="create-stack-on-AWS">Criar stack na AWS</a>
. ./scripts/createStack.sh $PAGE_NAME

## <a id="Get-S3-bucket-name-from-CloudFormation"> Obter nome do bucket S3 do CloudFormation </a>
. ./scripts/getS3BucketName.sh $PAGE_NAME

## <a id="Delete-stack"> Deletar stack </a>
. ./scripts/deleteStack.sh $S3_BUCKET $PAGE_NAME

## <a id="Get-Frontend-Endpoint-from-CloudFormation"> Obter endpoint do frontend do CloudFormation </a>
. ./scripts/getFrontEndpointFromCloudFormation.sh $PAGE_NAME

## <a id="Upload-files-to-S3"> Fazer upload dos arquivos para o S3 </a>
. ./scripts/uploadFilesToS3.sh "react-spa" $S3_BUCKET

### Baseado em https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/deploy-a-react-based-single-page-application-to-amazon-s3-and-cloudfront.html