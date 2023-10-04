#!/bin/bash

# Description:
# This script takes 4 command line arguments and performs the following tasks:
# 1. Creates a directory in the current working directory using the first argument as the name.
# 2. Creates a directory inside the directory created in item 1 using the second argument as the name.
# 3. Using redirection, creates a text file using the third argument as the name, writes “Hello World!” to it,
#    and saves it in the directory created in item 2.
# 4. Creates a link from the working directory to the sub-directory created in item 2 and uses the fourth argument as the name of the link.
# 5. Displays messages to the user indicating what actions are being taken.
#./simpleAdmin.sh mydir1 mydir2 mytextfile.txt mylink

# Step 1: Create dir1 in the current working directory
dir1="$1"
mkdir "$dir1" && echo "Created directory $dir1"

# Step 2: Create dir2 inside dir1
dir2="$dir1/$2"
mkdir "$dir2" && echo "Created directory $dir2"

# Step 3: Create a text file in dir2 with "Hello World!" content
file="$dir2/$3"
echo "Hello World!" > "$file" && echo "Created file $file with content: Hello World!"

# Step 4: Create a link from the working directory to dir2
link="$4"
ln -s "$dir2" "$link" && echo "Created a symbolic link $link to $dir2"

echo "Script completed successfully."

