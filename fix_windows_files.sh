#!/bin/bash
# Fixes files created with a texteditor in windows

sed -i 's/^$//g' $1
sed -i 's/^M//' $1
