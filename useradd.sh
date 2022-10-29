

#!/bin/bash
#Author : Eli Ncho
#Creation Date: 2022-10-29
#Description: Automation account creation for new employees
#Modification Date:

##################### ENTER YOUR PERSONAL INFORMATION ###################

echo

echo "What is your first name"
read fname
echo "What is your last name"
read lname
echo "What is your email address"
read email
echo "What is your Profession"
read prof
echo "create a username"
read uname
echo "Create a password"
read pswd
cat /etc/passwd |grep -i $uname

	if
        [ $? -eq 0 ]
        then
        echo "ERROR $uname Already exist"
        echo "PLEASE CHOOSE ANOTHER USERNAME"
        exit 0
        fi

useradd $name -c "$fname $lname: $prof: $email"; echo $pswd | passwd --stdin $uname 



