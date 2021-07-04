#!/bin/bash

awk '/##Table 2/ {exit} /##Table 1/ {f=1; next} f' old.txt > result.txt