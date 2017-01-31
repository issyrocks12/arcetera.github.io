#!/bin/bash
# Pushes DEBs to the Packages file and bzips it up; all I need to do is push to GitHub after this

dpkg-scanpackages -m debs / > Packages

bzip2 -fks Packages

git add .

read -p "Enter commit title: "  commit
git commit -m "$username"

git push
