SUID perl script named level13 with the exec rights of flag12
reads localhost on port 4646, can give it argument x and y
x is used in an egrep (in backticks so we can exploit here by injecting code)
backtticks work like parentheses :
in expression (A || (B && C)), B && C will be done first
the same way in \`egrep $x file\`, if x=\`/tmp/runme\` expression will be \`egrep \`/tmp/runme\` file\` and /tmp/runme will be done first

reading the script, we notice that x is uppercased entirely.
this is not a problem for the script, it can be named RUNME.
however for /TMP of course does not exist. we cam overcome this by using a wildcard (*) : since RUNME exec only exists in /tmp then /tmp/RUNME will be executed

the commands we need to do are :
echo 'getflag > /tmp/flag' > /tmp/RUNME
chmod +x /tmp/RUNME
curl localhost:4646/x=\`/*/RUNME\`
cat /tmp/flag
we can log as level13