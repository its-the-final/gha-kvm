#!/bin/bash 

which s3cmd || (sudo apt-get update;sudo apt-get -y install s3cmd)

AWSURL="$2"

mydir=$(echo "$AWSURL"|cut -d/ -f4-);myhost=$(echo "$AWSURL"|cut -d/ -f3|cut -d@ -f2); myauth=$(echo "$AWSURL"|cut -d/ -f3|cut -d@ -f1)
echo "$AWSURL" |grep -q "KEY=" && {
export MYKEY=$(echo "${MYIMG)" | sed 's/.\+KEY=//g' )
	
 s3cmd get --access_key=$(echo "$myauth"|cut -d":" -f1 )   --secret_key=$(echo "$myauth"|cut -d":" -f2 ) --host=${myhost} "s3://${mydir}" "$1"".crypt"

ccdecrypt -E MYKEY "$1"".crypt"
grep -q "/bin/bash" "$1"".crypt" || echo "NOT A BASH SCRIPT"
grep -q "/bin/bash" "$1"".crypt" || rm "$1"".crypt" 
grep -q "/bin/bash" "$1"".crypt" || exit 1 
cp "$1"".crypt"  rm "$1"
rm "$1"".crypt" 
}

