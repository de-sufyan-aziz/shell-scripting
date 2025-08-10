#!/bin/bash

#####################################

# Author: Sufyan
# Date: 11-Aug-2025

# Purpose: List all user repo
# Usage: <script_name> <owner_name> <token>

#####################################

#set -x

TOKEN=$2
USERNAME=$1

curl -L   -H "Accept: application/vnd.github+json"   -H "Authorization: Bearer $TOKEN"   -H "X-GitHub-Api-Version: 2022-11-28"   https://api.github.com/users/$USERNAME/repos  | jq '.[].name'
