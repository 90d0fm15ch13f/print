#!/bin/sh

echo -e "Mines Username:"
read uname
sed -e 's/<minesuname>/'"${uname}"'/g' -e s/"<localuname>"/"$USER"/ print.sh < print1.sh > print.sh

echo -e "Local setup complete.\n  Be sure that you have shared ssh keys with all the necessary computers.\n  It is also highly recommended that you add an alias"
