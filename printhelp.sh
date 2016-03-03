#!/bin/sh

cp "${1}" ~/tmp/toprint
"$PWD"/print.sh
echo $"\n"
