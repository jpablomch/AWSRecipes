programname=$0

function usage {
    echo "usage: $programname name"
    echo " bucket    bucket name"
    exit 1
}

if [ $# == 0 ]; then
    usage
fi

BUCKET=$1

aws s3 ls --recursive s3://${BUCKET}
