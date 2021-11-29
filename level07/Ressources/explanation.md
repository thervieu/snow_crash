Binary called level07 with the exec rights of flag07.
./level07 prints level07
strings level07.
we can see that we use env variable LOGNAME, that asprintf is called and that string "/bin/echo %s " is used and that there is a syscall.
env | grep LOGNAME returns LOGNAME=level07 . Changing it changes the output of ./level07 accordingly .
We can extrapolate that the main idea of the binary is to first set the rights of flag07 and then do those 2 lines:
asprintf(&cmd, "/bin/echo %s ", LOGNAME);
system(cmd);

We can then simply set LOGNAME as "; getflag" and get the flag.