#!/bin/bash
# Print the system information
echo "System information:"
uname -a

# List all installed packages
echo "Installed packages:"
if command -v dpkg &> /dev/null; then
    dpkg --list
elif command -v rpm &> /dev/null; then
    rpm -qa
else
    echo "Unable to determine package manager"
fi

# Check the disk space
echo "Disk space:"
df -h

# Check the memory usage
echo "Memory usage:"
free -m

# Print a closing message
echo "Script execution completed. Goodbye!"
