# Git Basics
[Back Home](../README.md)

## Table of Contents
1. [Definitions](#definitions)
   1. [Coding Areas](#coding-areas)
   2. [Stash](#stash-changes)

## Definitions

Commit:
   * A code snapshot. It contains the metadata and changes made to the code since its parent commmit. 

HEAD
   * Pointer to current commit/Branch. There can only be one HEAD

Branch
   * A pointer to a particular commit
   * Keeps track of current changes

Tags
   * Gives a usefule name to a commit for easy referencing. Often used to denote versions or important changes

![commit diagram](https://jwiegley.github.io/git-from-the-bottom-up/images/commits.png)


### Coding Areas

1. Working Area
   1. untracked changes
   2. files in working area that are not being tracked by git
2. Staging Area (a.k.a Cache, Index)
   1. files that are going to be part of next commit.
3. Repository
   1. Contains all of our commits.


## Git Commands Cheat Sheet

### Initialize Repository
```bash 
git init
```

### Adding, Removing, or Renaming Files in Staging Area
```bash
#add file to next commit
git add <file>
#remove file from next commit
git rm --cached <file>
#rename file in the next commit
git mv <file>
```

### Commit Changes
```bash
git commit -m "useful message describing the purpose of the commit"
```

### Stash Changes
1. stash changes
   - ```git stash```
   - ``` bash 
     # keep untracked file
     git stash --include-untracked
     ```
   - ``` bash 
     # keep all files 
     git stash --all
     ```
2. list changes
   - ```git stash list```
3. show the contents
   - ```git stash show stash@{0}```
4. apply the last stash
   - ```git stash apply```
5. apply a specific stash
   - ```git stash apply stash@{0}```
6. name stash for easy reference
   - ```git stash save "useful name"```
7. start new branch from stash
   - ```g it stash branch <optional > ```
8. grab single branch from stash
   - ``` git checkout <stash name> -- <filename>```

### References (Tags, Branches)

1. Branches
   1. check current branch
      - ``` git branch -v```
   2. checkout branch
      - ``` git checkout <branch name> ```
   3. create new branch
      - ``` git checkout -b <branch name> ```
2. Tags
   1. add tag
      - ``` git tag <commit> ```
   2. add tag with annotations
      - ``` git tag -a v1.0 -m Version 1.0 of my script ```
   3. working with tags
      - ```bash 
        #List all the tags in a repo
        git  tag
        ```
      - ```bash 
        #List all tags, and what commit they're pointing to
        git  show-ref --tags
        ```
### Merging

### Rebasing

### Reset






