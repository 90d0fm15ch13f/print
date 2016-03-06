#!/usr/bin/expect -f

#ssh into imagine and immediately into the bbbox to print
spawn ssh -f <minesuname>@imagine.mines.edu "ssh <minesuname>@bb136-17"
expect "$ "
send "lp -d bb136-printer ~/tmp/toprint\r"
expect "$ "
send "rm ~/tmp/toprint\r"
expect "$ "
send "exit\r"

exit
