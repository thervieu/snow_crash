two files are located at root: level06.php and level06 (exec).
level06 seems to be a compiled version of level06.php with flag06 rights for execution.
level06.php gets first argument with file_get_contents and then does a few preg_replace calls, then print the result.

Contents of the file given:

[x ${\`getflag\`}]

Explanation :

[x ] is used as a pattern so that getflag can be executed in the preg_replace with '/e' option. /e runs eval() [php] on the return value of the preg_replace.

${\`getflag\`} is valued.
backticks are used as shell_exec('').

${} allows us to print the Error [Undefined variable], the variable being here the content of getflag.

With the execution rights of flag06, we get the flag for the level07
