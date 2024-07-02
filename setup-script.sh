#!/bin/bash

# Function to check if the OS is macOS
check_os() {
  if [[ "$OSTYPE" != "darwin"* ]]; then
    echo "This GitHub SSH script is only for macOS only right now and will be available for other OS later this year."
    exit 1
  fi
}

#Main script
main() {

    #Checks if host is macOS as this script works only for macOS right now.
    check_os

    #Just some info ;)
    echo "Follow the easy instructions and get your SSH set up done quickly."
    echo "If you are familiar with Windows and PowerShell then you can help porting this script to Windows."
    echo "Linux script under development."

    #Setup begins
    
    #User email for github commit purposes
    echo "Enter your email that is used in GitHub account:"
    read email
    git config --global user.email "${email}"
    echo "Updated email in git credentials."

    #User name for github commit purposes
    echo "Enter your GitHub username:"
    read username
    git config --global user.name "${username}"
    echo "Updated username in git credentials."
    }