#!/bin/bash

#########################################

# Author: Sufyan
# Date: 11-Aug
#
# Purpose: List all repos
# How to use: <script/file name> <token>

#########################################

set -x 

GITHUB_TOKEN=$1

curl -L   -H "Accept: application/vnd.github+json"   -H "Authorization: Bearer $GITHUB_TOKEN"   -H "X-GitHub-Api-Version: 2022-11-28"   https://api.github.com/user/repos | jq '.[].name'



