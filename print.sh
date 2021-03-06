#!/usr/bin/expect -f

#should ssh into a bb136 box and then print a file
spawn scp /home/<localuname>/tmp/toprint <minesuname>@imagine.mines.edu:~/tmp
expect "100%"

#now ssh into imagine and place the file on a bbbox
spawn ssh <minesuname>@imagine.mines.edu
expect "$ "
send "scp ~/tmp/toprint <minesuname>@bb136-17:~/tmp\r"
expect "100%"
send "rm ~/tmp/toprint\r"
expect "$ "
send "exit\r"

exit
