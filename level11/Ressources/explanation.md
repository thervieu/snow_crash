much like level07 except we first must connect to localhost:5151

lua file (C API) that reads a string from localhost:5151 then hashes it with sha1.

sha1 is unbreakable so let's not go that way.

we can connect to server (nc 127.0.0.1 5151)

we can then write "; getflag > /tmp/flag", breaking the echo and then doing whatever we want (here printing getflag result into a file)
