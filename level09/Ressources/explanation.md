level09 binary and token that we can open
in token some characters are unprintable (> 127), so we'll need to work with unsigned char
binary returns av[1] but every character = character + index (./level09 aaaaa -> abcde)
ltrace ./level09 tells us not to reverse it, so let's do it !
(see rev.c file)
We had to hard code an unsigned char[] because char to unsigned char conversion of course doesn't work.
we get a string with no unprintable characters, which makes sense.
It is the flag09 password
we can geflag