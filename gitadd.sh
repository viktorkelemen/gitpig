#!/bin/bash
# Git-pig
# http://github.com/yikulju/gitpig


# colors
black=`tput sgr0; tput setaf 0`
red=`tput sgr0; tput setaf 1`
green=`tput sgr0; tput setaf 2`
yellow=`tput sgr0; tput setaf 3`
blue=`tput sgr0; tput setaf 4`
magenta=`tput sgr0; tput setaf 5`
cyan=`tput sgr0; tput setaf 6`
white=`tput sgr0; tput setaf 7`
reset=`tput sgr0`

# drawing the header
echo "Git-pig | Add file"
echo $cyan
echo " ^..^"
echo "( oo )  )~"
echo "  ,,  ,,"
echo $reset

# get the status
addedFiles=$(git status --porcelain | grep 'M  ' | awk '{ print $2 }')
updatedFiles=$(git status --porcelain | grep ' M ' | awk '{ print $2 }')
untrackedFiles=$(git status --porcelain | grep '??' | awk '{ print $2 }')

# Listing the files already added
echo "Added files:"$green
for x in $addedFiles; do
    echo "    "$x
done

echo $reset

# Listing the updated files
linecount=1
echo "Updated files:"$red
for x in $updatedFiles; do
    echo "  "$linecount" "$x
    linecount=$((linecount+1))
done

echo $reset

# Listing untracked files
echo "Untracked files:"$red
for x in $untrackedFiles; do
    echo "  "$linecount" "$x
    linecount=$((linecount+1))
done

echo $reset


# Creating an array
for x in $updatedFiles; do
    fileArray=("${fileArray[@]}" $x)
done

for x in $untrackedFiles; do
    fileArray=("${fileArray[@]}" $x)
done


echo $reset

# Git add
for p in $*;
do
    printf "Adding %s\n" "${fileArray[$(($p-1))]}"
    git add ${fileArray[$(($p-1))]}
done;