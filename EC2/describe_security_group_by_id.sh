programname=$0

function usage {
    echo "usage: $programname name"
    echo " group-id   group-id"
    exit 1
}

if [ $# == 0 ]; then
    usage
fi

GRID=$1

aws ec2 describe-security-groups --group-ids $GRID 

