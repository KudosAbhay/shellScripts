#!/bin/bash

####################################
#Script to provide appropriate appropriate user permissions to folders and files present in:
#
#    backendScripts/ and shellScripts/
#    Checks if Username is Valid or Not and only then provides appropriate permissions to folders
####################################

unameChecker(){
  if [[ -z "$uname" ]];
  then
     # Check if username is empty
     # If username is empty then keep traversing loop until a username is received
     echo "Please enter a username..."
     read uname
     unameChecker
   else
       userVerifier="grep -c '^$uname:' /etc/passwd"
       response=$(eval $userVerifier)
       if [[ $response == '1' ]];
       then
         echo "valid username..."
         echo "providing permissions to folders under username: "$uname" ..."

         # Commands to provide appropriate permissions to 'backendScripts' folder
         backendScripts_userPermission="chown -R $uname:$uname ../../backendScripts/*"
         backendScripts_readWritePermission="chmod 770 ../../backendScripts/*"
         backendScripts_executePermission="chmod +x ../../backendScripts/*"

         # Commands to provide appropriate permissions to 'shellScripts' folder
         shellScripts_userPermission="chown -R $uname:$uname ../../shellScripts/*"
         shellScripts_readWritePermission="chmod 770 ../../shellScripts/*"
         shellScripts_executePermission="chmod +x ../../shellScripts/*"

         # Execute all commands
         eval "$backendScripts_userPermission"
         eval "$backendScripts_readWritePermission"
         eval "$backendScripts_executePermission"
         eval "$shellScripts_userPermission"
         eval "$shellScripts_readWritePermission"
         eval "$shellScripts_executePermission"

         echo "permission provided..."
       else
         echo "invalid username..."
       fi
   fi
}

# Capture Username of the user from command line
unameChecker
