#!/bin/bash
# The script name is com_line_arg.sh
# The script is written by Leandro Paulino on March 13, 2026
# The script should be located in /usr/local/bin
# The script uses special and positional parameters
echo "There are $# arguments specified at the command line."
echo "The arguments supplied are: $*"
echo "The first argument is $1"
echo "The process ID of the script is: $$"

# Run the script com argumentos, no exemplos abaixo utilizo 03 cidades.
# com_line_arg.sh Valencia Madrid Barcelona
