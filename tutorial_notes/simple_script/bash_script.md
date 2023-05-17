# Bash Script
[Home](../README.md)

## 1. Initialize Git Repository

```bash
git init
```

## 2. First Commit

```bash
#creating a file
touch make_lots_of_files.sh

#adding file to staging area
git add make_lots_of_files.sh

#committing file to repository
git commit -m "initial commit"
```
[More Info If Needd](../git_basics.md#git-commands-cheat-sheet)

## 3. Create a Bash Script

```bash

#open file in nano
nano make_lots_of_files.sh

```
```bash
#!/usr/bin/env bash

#make 100 files

for i in {1..100}
do
    touch file_$i.txt
done
```
```bash
# exit out of nano
# ctrl + x
````
## 4. Add Bash Script to Staging Area and Commit

```bash 
# add changes to staging area
git add make_lots_of_files.sh
```
```bash
#check staging area
git status
```
```bash
# commit changes
git commit -m "script makes 100 files in current directory"
```
## 5. Run Bash Script

```bash
bash make_lots_of_files.sh

#check directory
ls -larth

#check git status
git status

#notice files that were created are not in staging area...they are untracked. Need to add them

#add files to staging area
git add file_*.txt

#check git status
git status

#commit changes
git commit -m "added 100 files to repository"
```
## 6. Let's Update the Script
Having all the files in the same directory is not very clean. Let's update the script to create a new directory and put the files in there.

First, Let's remove the output files.

```bash
rm file_*.txt

#check status
git status
```

```bash
#open file in nano
nano make_lots_of_files.sh
```

```bash


```