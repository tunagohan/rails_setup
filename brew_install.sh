#!/bin/sh

set -e

function start() {
  name="$*"
  echo "${name} インストール"
}

function successed() {
  name="$*"
  echo "${name} インストール 完了"
}

# Github
start "Github"
brew install git
successed "Github"

# MySQL
start "MySQL"
brew install mysql
successed "MySQL"

# rbenv
start "rbenv"
brew install rbenv
successed "rbenv"

# ruby-build
start "ruby-build"
brew install ruby-build
successed "ruby-build"

# direnv
start "direnv"
brew install direnv
successed "direnv"

# gitnow
start "git-now"
brew install git-now
successed "git-now"
