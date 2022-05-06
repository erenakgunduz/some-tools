#!/bin/bash

mkdir testdirectory
cd testdirectory || exit

# Compare with and without these to ensure it works as intended
git init
touch .gitignore
touch README.md

# To test the git root directory functionality
mkdir somedir && cd somedir || exit

inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"
git_root="$(git rev-parse --show-toplevel 2>/dev/null)"

if [ "$inside_git_repo" ]; then
  gitignore="${git_root}/.gitignore"
  readme="${git_root}/README.md"
  if [ ! -f "$gitignore" ] && [ ! -f "$readme" ]; then
    echo -e "\n.gitignore\n**/.DS_Store" >> "$gitignore"
    echo -e "# $(basename "$git_root")" >> "$readme"
    echo "You're good to go!"
  elif [ ! -f "$gitignore" ] && [ -f "$readme" ]; then
    echo -e "\n.gitignore\n**/.DS_Store" >> "$gitignore"
    echo "Found README, created .gitignore"
  elif [ -f "$gitignore" ] && [ ! -f "$readme" ]; then
    echo -e "# $(basename "$git_root")" >> "$readme"
    echo "Found .gitignore but no README.md, started one for you"
  else
    echo "Found .gitignore and README, seems you're already configured :)"
  fi
else
  echo "You are not in a git repository."
fi

pwd
ls -al
ls -al ../
cat "$gitignore" && cat "$readme"
