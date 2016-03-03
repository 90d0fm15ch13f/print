#!/bin/sh

sed s/"<localuname>"/"$USER"/ print.sh > print1.sh
echo -e "Mines Username:"
read uname
sed 's/<minesuname>/'"${uname}"'/g' print1.sh > print.sh
rm print1.sh

echo -e "Local setup complete.\n  Be sure that you have shared ssh keys with all the necessary computers.\n  It is also highly recommended that you add an alias"
