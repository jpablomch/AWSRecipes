programname=$0
  
function usage {
    echo "usage: $programname name"
    echo " bucket    bucket name"
    echo " folder    folder name"
    exit 1
}

if [ $# == 0 ]; then
    usage
fi

BUCKET=$1
FOLDER=$2 

aws s3 rm s3://${BUCKET}/${FOLDER} --recursive
