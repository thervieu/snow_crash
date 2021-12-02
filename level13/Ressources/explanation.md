SUID level13
./level13
-> 'UID 2013 started us but we we expect 4242'
using strings and seeing 'your token is %s', we can assume that the program will print the flag with value uid = 4242 
uses getuid and not ptrace (which tells us that we can gdb it)
gdb
b getuid
s
right after getuid, $eax = 2013 (level13 id). We can set $eax = 4242 and see what happens
it prints the flag, yay

NB: we actually could gdb getflag from the start and get all flags, but that would be too easy and not what the subject wants us to learn.