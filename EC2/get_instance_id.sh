programname=$0

function usage {
    echo "usage: $programname name"
    echo "  id    instance id"
    exit 1
}

if [ $# == 0 ]; then
    usage
fi

#TODO 
#ID=$1

#aws ec2 start-instances --instances-ids $ID

