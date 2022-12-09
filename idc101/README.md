## IISERM IDC101 Introduction to Computers

### Basic bash syntax

#### Variables

```bash
let "a+=1"
((a += 1))
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

#### Strings

