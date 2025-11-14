#!/usr/bin/env bash
sudo apt install qpdf

rm -rf /tmp/linuxmag-repo-test
mkdir -p /tmp/linuxmag-repo-test
cd /tmp/linuxmag-repo-test
git init --object-format=sha1 --initial-branch=main
git config commit.gpgSign false
git config tag.gpgSign false
git config core.abbrev 5
export LANG=fr_FR.UTF-8
export LANGUAGE=$LANG
export GIT_AUTHOR_NAME=moi
export GIT_AUTHOR_EMAIL=moi@moi.com
export GIT_AUTHOR_DATE='1234567890 +0100'
export GIT_COMMITTER_NAME=$GIT_AUTHOR_NAME
export GIT_COMMITTER_EMAIL=$GIT_AUTHOR_EMAIL
export GIT_COMMITTER_DATE=$GIT_AUTHOR_DATE
git commit --message="Empty" --allow-empty
git log --oneline
