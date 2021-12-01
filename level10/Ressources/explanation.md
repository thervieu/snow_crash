level10 binary that has the rights of getflag
token file which we can't read
level10 has access(2) -> vulnerability (see man + https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use)
we can exploit this
in a file run level10 binary on an alias_name in a loop
in another file run two symbolic links on alias_name, one with a file we have access, and the other on one token (that flag10 can open) in a loop
listen on port 6969 (nc -l 6969)
flag10's password appears
we can connect as flag10 and then getflag
