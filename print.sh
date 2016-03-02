#!/usr/bin/expect -f

#should ssh into a bb136 box and then print a file

#initial scp to put toprint on imagine
spawn scp /home/<localusername>/tmp/toprint <imagineusername>@imagine.mines.edu:<path/to/imagine/home>/tmp
expect "password: "
send "<minespass>\r"
expect "100%"

#ssh into imagine and scp the file onto a bbbox
spawn ssh <minesuname>@imagine.mines.edu
expect "password: "
send "<minespass>\r"
expect "$ "
send "cd ~/tmp\r"
expect "$ "
send "scp toprint <minusuname>@bb136-17:~/tmp\r"
expect "password: "
send "<minespass>\r"
expect "100%"
send "rm toprint\r"
expect "$ "
send "exit\r"

#ssh into bbbox through imagine and print the file
spawn ssh -t <minesuname>@imagine.mines.edu "ssh <minesuname>@bb136-17"
expect "password: "
send "<minespass>\r"
expect "$ "
send "cd ~/tmp\r"
expect "$ "
send "lp -d bb136-printer toprint\r"
expect "$ "
send "rm toprint\r"
expect "$ "
send "exit\r"

exit
