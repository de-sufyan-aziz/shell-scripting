#!/bin/bash


#################################################################

# Author: Sufyan
# Date: 11-Aug-2025

# Purpose: Initialiaze, Add, Commit and Push code file to GitHub
# Usage: <script/file> <file_path> <repo_url> <commit_message>

#################################################################

set -x

FILE=$1
REPO_URL=$2
DES=$3

git init

git add $FILE

git commit -m "$DES"

git branch -M main

git remote add origin "$REPO_URL"

git push -u origin main
