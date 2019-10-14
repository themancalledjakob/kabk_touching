#! /bin/sh
echo "Checking PreReq Node" 

/usr/local/bin/node --version | grep "v" &> /dev/null 
if [ $? == 0 ]; then 
 echo "Node Installed"
 exit 0;
else 
 echo "Node not installed"
 exit 1;
fi