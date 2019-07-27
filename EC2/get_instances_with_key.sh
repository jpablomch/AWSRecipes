programname=$0

function usage {
    echo "usage: $programname name"
    echo "  key   key-name"
    exit 1
}

if [ $# == 0 ]; then
    usage
fi

KEY=$1

aws ec2 describe-instances --filters "Name=key-name,Values=${KEY}"

