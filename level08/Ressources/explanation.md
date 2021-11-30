level08 binary that tries to open file which does not have 'token' in the name.
short token file that may contain the password
we don't have the rights to do anything
BUT symbolic links can overrule those rights :
ln -s /home/user/level08/token /tmp/password
./level08 /tmp/password gives flag08 password.
we can getflag