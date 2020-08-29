#!/bin/bash

echo "hello" | wc
echo
cat -n poems.txt | tail -n5 # -n Number the output lines, starting at 1.
echo
grep "the" -n poems.txt --colour # grep with color, with line number stated
echo
grep "the" -n poems.txt --color=always | head -n1 # to preserve highlighting after piping into head
echo

