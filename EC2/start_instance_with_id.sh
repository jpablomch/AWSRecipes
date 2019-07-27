programname=$0

function usage {
    echo "usage: $programname name"
    echo "  id    instance id"
    exit 1
}

if [ $# == 0 ]; then
    usage
fi

ID=$1

echo aws ec2 start-instances --instance-ids $ID
aws ec2 start-instances --instance-ids $ID
