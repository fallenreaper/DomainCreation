# config a new domain name.
#sample:  ericswetts.com

#if [$1 -eq --help]
#then
#	echo The Domain should look something like ericswetts.com
#	echo "The Regex should look something like (^|\.)ericswetts\.com$"
#	echo ensure you have root access.
#	exit 0
#fi

#sample domain is:  ericswetts.com, hodor.net
domain=$1
#sample regex is:   \(\^\|\\\.\)ericswetts\\\.com\$
regex=$2

echo $1
echo $2

folder=/home/Domains/$domain/http
mkdir -p $folder
chown lighttpd:freaper $folder

logs=/var/log/lighttpd/Domains/$domain
mkdir -p $logs
chown -R lighttpd:lighttpd $logs/..

./node.sh $folder $logs $regex >> /etc/lighttpd/lighttpd.conf
/etc/init.d/lighttpd restart

