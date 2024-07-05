
/usr/bin/expect <<-EOF

set time 30
spawn php init
expect {
"*[0-1, or "q" to quit]*" { send "0\r" }
"*[yes|no]" { send "yes\r"; exp_continue }
}
expect eof
