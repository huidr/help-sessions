## IISERM IDC101 Introduction to Computers

### Basic bash syntax

#### Preliminaries

```bash
[ ]   # test
[[ ]] # test, more flexible than [ ]
(( )) # arithmetic evaluation
&&    # and
||    # or
```

#### Variables

```bash
var=10 # dont put spaces in between
let x=2
let z=$var+$x # dont use naked variables
let "var+=1"
((var += 1)) # arithmetic evaluation
```

#### I/O

```bash
echo "Bash is cool."
echo -n "Bash is cool." # does not print newline 
printf "Bash is cool.\n"
read input
```

#### Conditionals

```bash
if [ condition/expression/command ]
then 
  command(s)
fi
```

```bash
if [ $a < 10 ]; then
  command(s)
elif [ $a > 20 ]; then 
  commands(s)
else
  commands(s)
fi
```

```bash
file=/home/geek/Documents/doc.txt
if [[ -e $file ]]; then
  echo "File does not exist."
fi
```

#### Arithmetic tests are cool

```bash
(( a == b ))  # [[ $a -eq $b ]]
(( a != b ))  # [[ $a -ne $b ]]
(( a > b ))   # [[ $a -gt $b ]]
(( a >= b ))  # [[ $a -ge $b ]]
(( a < b ))   # [[ $a -lt $b ]]
(( a <= b ))  # [[ $a -le $b ]]
```

#### Loops and loop control

```bash
for arg in [list]
do
  command(s)
done
```

```bash
for arg in {0..10..1}; do
  command(s)
done
```

```bash
max=10
for ((a=0; a < 10; a++)) # double parenthesis, and naked "max"
do 
  command(s)
done
```

```bash
while [[ $max < 10 ]]
do
  command(s)
done
```

```bash
while (( a < max )) # double parenthesis, and no "$" preceding variables
do
  command(s)
done
```

```bash
while read input
do
  command(s)
  if [ condition ]; then
    break
done
```

#### Strings and arrays

```bash
str="Bash"
len=${#str} # length
echo ${str:3:1} # ${string:position:length}
```

```bash
arr[0]=2; arr[1]=4; arr[2]=6; arr[3]=8
echo ${arr[0]} # braces necessary
((x = arr[0] + arr[1]))
```
