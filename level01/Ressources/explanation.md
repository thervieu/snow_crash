No files are given, none are owned or grouped by level01 or flag01.

Since there are mutiple users, it's a good idea to know the ids.
echo $UID gives us 2001.
We could extrapolate from here levelxxUID = 20XX, but a quick browser search tells us that they are stored in /etc/passwd.
cat /etc/passwd
levelxxUID = 20XX and flagxxUID = 30XX

Also on level01 line, what looks like a hash string is given : 42hDRfypTqqnw.
Using JohnTheRipper (app that cracks hashed password), abcdefg. Suspicious ...
su flag01 + abcdefg grants us access to flag01. We can launch getflag.