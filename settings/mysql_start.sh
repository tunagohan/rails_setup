#!/bin/sh

set -e

# ログ出力
function log() {
  message="$*"
  echo "$(date '+%Y/%m/%d %H:%M:%S'): ${message}"
}

log "MySQL 起動"
mysql.server start
log "MySQL 起動 完了"
