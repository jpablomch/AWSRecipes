programname=$0

function usage {
    echo "usage: $programname name"
    echo "  priv_dns_name   private_dns_name"
    exit 1
}

if [ $# == 0 ]; then
    usage
fi

PDNSN=$1

aws ec2 describe-instances --filters "Name=network-interface.private-dns-name,Values=${PDNSN}"


