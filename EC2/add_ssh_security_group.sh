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

aws ec2 authorize-security-group-ingress --group-id $GRID --protocol tcp --port 22 --cidr 0.0.0.0/0

