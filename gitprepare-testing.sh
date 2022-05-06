#!/bin/bash

mkdir testdirectory
cd testdirectory || exit

# Compare with and without
git init

mkdir somedir && cd somedir || exit

inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"
git_root="$(git rev-parse --show-toplevel 2>/dev/null)"

if [ "$inside_git_repo" ]; then
  echo -e "\n.gitignore\n**/.DS_Store" >> "$git_root"/.gitignore
  echo -e "# $(basename "$git_root")" >> "$git_root"/README.md
else
  echo "You are not in a git repository."
fi

pwd
ls -al
ls -al ../
cat ../.gitignore && cat ../README.md
