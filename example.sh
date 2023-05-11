echo "Hello world!"

value=7
echo "$value"
echo '$value'

str="Hello world!"
echo ${str/Hello/Howdie}
echo ${str:3:5}
echo ${str: -5}
echo ${#str}

pointerString="str"
echo ${!pointerString}

intArray=(1 2 3 4 5 6 7 8 9)
stringArray=(one two three four five six seven eight nine)

echo ${intArray[4]}
echo ${stringArray[5]}

for item in "${stringArray[@]}"; do
    echo "$item"
done
for i in {0..9}
do
   echo "$i"
done

echo "The exit status of the most recently executed command $?"
echo "The number of command line arguments $#"
echo "The command line arguments as a single word $*"
echo "The command line arguments as individual words $@"
echo "The specific command line argument at index 1 .. 2 .. $0"
echo "The process ID of the current shell $$"
echo "The process ID of the most recently executed background pipeline $!"
echo "The current options flags specified during invocation by the set command or by the shell itself $-"
echo "The last argument of the previous command is $_"
echo "The path to the bash binary itself is $BASH"
echo "The version of the bash shell is $BASH_VERSION"
echo "The current user's home directory is $HOME"
echo "The list of directories in which the shell looks for commands is $PATH"
echo "The current working directory is $PWD"
echo "A random integer between 0 and 32767 is $RANDOM"
echo "The numeric, real user ID for the current user is $UID"
echo "The primary prompt string is $PS1"
echo "The secondary prompt string is $PS2"