find / -group flag00
-> /usr/sbin/john
cat /usr/sbin/john
-> cdiiddwpgswtgt
Not the password for flag00, but rot15-ing gives us nottoohardhere.
su flag00 + nottoohardhere makes us flag00.
We can exec getflag.
