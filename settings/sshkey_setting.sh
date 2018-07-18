#!/bin/sh

set -e

# ログ出力
function log() {
  message="$*"
  echo "$(date '+%Y/%m/%d %H:%M:%S'): ${message}"
}

# ssh-key setting
log "ssh-key の設定を行います"
echo -n "ssh key phrase <user email> : "
read ssh_key_phrase
ssh-keygen -t rsa -b 4096 -C ${ssh_key_phrase}
