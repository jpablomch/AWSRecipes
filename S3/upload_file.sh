programname=$0

function usage {
    echo "usage: $programname name"
    echo "  bucket    bucket-name"
    echo "  file      file" 
    exit 1
}

if [ $# == 0 ]; then
    usage
fi

BUCKET=$1
FILE=$2

aws s3 cp ${FILE} S3://${BUCKET}/ 
