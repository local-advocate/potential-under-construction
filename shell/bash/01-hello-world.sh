# shebang line: which shell to use, more in /etc/shells (my default dash)
#! /bin/bash			

<<mlc
/bin/sh symlinked to dash
default exec with dash, will fail if the shebang path not found (how to handle it)
mlc

: ' multi line comments wont
   work if exact character do not match
   careful with spaces or if exact syntax not matched' 

# script start (how to make it executable by default?)
echo "Hello World!"
