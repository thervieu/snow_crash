We are given a .pcap file. A .pcap is a stream flow between two ips (or more but let's stick to 2).

Copying this file to another vm, opening it in Wireshark we can read it.
Reading it packet after packet is tedious, let's use the follow stream feature that reads the stream shared in between users.
Interesting part: "Password:" sent by user1 and "ft_wandr...NDRel.L0L" sent by user2.
(a website that leads nowhere can also be found)

This does not work as a password to flag02.
After staring at the string for some time you might notice than the number of dots is equal to the number of characters repeated in UpperCase after. This can imply that the dots really are del characters. This is confirmed when looking at the stream packet by packet.

Password to flag02 should then be "ft_waNDReL0L".
It works, we can getflag.

Pro-tip: don't spend an hour typing the 0 as a O (lol).