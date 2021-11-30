find / -name level05 -> /var/mail/level05
/var/mail/level05 is cron job executing /usr/sbin/openarenaserver as flag05 every two minutes.
/usr/sbin/openarenaserver executes then deletes every shell script in /opt/openarenaserver/ then deletes it.
we can't just do a getflag file.txt as we don't have access to the cron logs (permission denied).
We can overcome this by simply printing what getflag returns in a file (getflag > /tmp/result).
Also we must print in a / dir as flag05 user can not create documents in /home/user/level05.
