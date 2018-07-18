#!/bin/sh

set -e

# ログ出力
function log() {
  message="$*"
  echo "$(date '+%Y/%m/%d %H:%M:%S'): ${message}"
}

# ruby install and setting
log "rubyのインストールを行います"
rbenv install -l
echo -n "インストールする Ruby の version を入力してください : "
read ruby
rbenv install ${ruby}
rbenv rehash
rbenv versions
rbenv global ${ruby}
ruby -v
log "完了"
