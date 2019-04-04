#!/usr/bin/expect

set timeout 600
spawn git pull
expect "*password:"
send "zefu.du\r"
expect eof
