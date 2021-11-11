#!/bin/bash
#Set CNTX=users and NAME=yourusername, to download all your repositories.
#Set CNTX=orgs and NAME=yourorgname, to download all repositories of your organization.

# $1 can be orgs or users
# $2 can be your username or your orgname
# $3 is your username
# $4 is your token

CNTX={$1}; NAME={$2}; PAGE=1
curl -i -u "$3:$4" "https://api.github.com/$CNTX/$NAME/repos?page=$PAGE&per_page=100" |
    grep -e 'clone_url*' |
    cut -d \" -f 4 |
    awk -v srch="github" -v repl="$4@github" '{ sub(srch,repl,$0); print $0 }' |
    xargs -L1 git clone
