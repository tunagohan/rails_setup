#!/bin/sh

set -e

# ログ出力
function log() {
  message="$*"
  echo "$(date '+%Y/%m/%d %H:%M:%S'): ${message}"
}

# Github setting
log "githubの設定を行います"
echo -n "[Global settting] Github Username : "
read github_username
git config --global user.name ${github_username}

echo -n "[Global settting] Github Email : "
read github_email
git config --global user.email ${github_email}

git config --global credential.helper osxkeychain
git config --global push.default current
log "完了"
