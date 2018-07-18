#!/bin/sh

set -e

# ログ出力
function log() {
  message="$*"
  echo "$(date '+%Y/%m/%d %H:%M:%S'): ${message}"
}

# # Xcodeのインストール(無ければコメントアウト)
# log "Xcode インストール"
# xcode-select --install
# log "Xcode インストール 完了"

# Homebrewのインストール
log "Homebrew インストール"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew --version
log "Homebrew インストール 完了"

# Brewfileを使いたいが、一旦愚直にインストール
brew_install.sh

# 各々の設定をしていく
# ssh_key
./settigns/sshkey_setting.sh

# github
./settigns/github_setting.sh

# ruby
./settings/ruby_setting.sh

# mysql
./settigns/mysql_start.sh

log "正常に完了しました"

# それぞれのバージョンを出す
git --version
mysql --version
heroku --version
rbenv -v
ruby -v
