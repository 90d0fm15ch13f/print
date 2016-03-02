#!/usr/bin/expect -f

#should ssh into a bb136 box and then print a file
spawn scp /home/<localuname>/tmp/toprint <minesuname>@imagine.mines.edu:</path/to/mines/home>/tmp
expect "100%"

spawn ssh <minesuname>@imagine.mines.edu
expect "$ "
send "cd ~/tmp\r"
expect "$ "
send "scp toprint <minesuname>@bb136-17:~/tmp\r"
expect "100%"
send "rm toprint\r"
expect "$ "
send "exit\r"

spawn ssh -t <minesuname>@imagine.mines.edu "ssh <minesuname>@bb136-17"
expect "$ "
send "cd ~/tmp\r"
expect "$ "
send "lp -d bb136-printer toprint\r"
expect "$ "
send "rm toprint\r"
expect "$ "
send "exit\r"

exit
