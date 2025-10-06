#!/bin/bash
echo "enter a number:"
read num
if [ $num -gt 20 ]; then
echo "your number is greater than 20."
elif [ $num -gt 10 ]; then
echo "your number is greater than  10  but 20 or less."
else
echo "your number is 10 or less."
fi
