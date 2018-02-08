#/bin/bash -e

#make the formatting pretty
echo "Update procedue initalizing"
echo "$(date)"
echo "------------------------------------------------------------------------------------------------------------------------------------"

#update the DB
/usr/bin/sudo apt update

# upgrade that shizzle
/usr/bin/sudo apt upgrade -y

#Then check for kernel upgrades and whatnot.
/usr/bin/sudo rpi-update

#break that line so the logs look nice
echo "------------------------------------------------------------------------------------------------------------------------------------"

