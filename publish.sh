#!/bin/sh

# Get the name of the current branch
branch=`git symbolic-ref --short HEAD`
echo "Publishing book on branch $branch"

# This script publishes the book to GitBook
git push https://$GITBOOK_USER:$GITBOOK_PASS@push.gitbook.io/xgouchet/a-deep-dive-into-android-ndk.git master
