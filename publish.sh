#!/bin/sh

# Get the name of the current branch
branch=`git symbolic-ref --short HEAD`
echo "Publishing book on branch $branch"

# check we have the info to push
if [ -z "$GITBOOK_USER" ]; then
	echo "Missing a GITBOOK_USER environement variable"
	exit 1
fi
if [ -z "$GITBOOK_PASS" ]; then
	echo "Missing a GITBOOK_PASS environement variable"
	exit 1
fi



# This script publishes the book to GitBook
git push https://$GITBOOK_USER:$GITBOOK_PASS@push.gitbook.io/xgouchet/a-deep-dive-into-android-ndk.git master
