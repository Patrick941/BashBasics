# Bash
## Basics
### Echo
Echo can be used from a file to print to terminal. It would be used as follows
```bash
echo "Hello world!"
```
### Variables
Variables can be created and printed also as follows (The lack of space for the variable creation is necessary):
```bash
value=7
echo "$value"
echo '$value'
```
### String Formatting
Strings like much other languages can be formatted in a number of ways. In the following example, the part of the string that say Hello will be changed to instead say Howdie:
```bash
str="Hello world!"
echo ${str/Hello/Howdie}
```
We can also only take a certain amount of characters from a string. The first number is the beginning location of the string which will be printed and the second value is the amount of characters from the string that will be printed. The second example will print character 4-8 (0 indexed)
```bash
echo ${str:0:5}
echo ${str:3:5}
```
We can do something very similar to print only the last x characters of a string. We can do this with the following code snippet
```bash
echo ${str: -5}
```
To get the length of the string be simply put a hash tag before it. To print the length of a string we would do the following:
```bash
echo ${#str}
```
### Indirect expansions
Indirect expansions can be used to print the contents of a variable which is named by a given string. This is somewhat like the way that pointers function but the pointer holds the name of the variable containing the value as appose to the memory address of the variable containing the value. This could be implemented as follows:
```bash
pointerString="str"
echo ${!pointerString}
```
### Arrays:
Arrays can be declared simply be enclosing in brackets and placing whitespaces between the contents of the array, both an array of integers and an array of strings can be created as follows:
```bash
intArray=(1 2 3 4 5 6 7 8 9)
stringArray=(one two three four five six seven eight nine)
```
We can then access of the contents of these strings as follows:
```bash
echo ${intArray[4]}
echo ${stringArray[5]}
```
### Loops
We can use for loops much like they are used in kotlin, where we specify a new local variable to reference the current value in the array which we want to access. This is formatted as follows:
```bash
for item in "${stringArray[@]}"; do
    echo "$item"
done
```
We can also use normal for loops like we would in C, these can be formatted as follows:
```bash
for i in {0..9}
do
   echo "$i"
done
```
### Built-in Variables
In bash there are some built-in variables. Here are a list of them all:
```bash
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
```