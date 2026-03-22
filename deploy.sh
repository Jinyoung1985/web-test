#!/bin/bash
set -e

echo "🚀 Deploy 시작"

TARGET="/mnt/nfs"

mkdir -p "$TARGET"

# 불필요한 git 정보는 제외하고 배포
rsync -av --delete \
  --exclude ".git" \
  --exclude ".gitignore" \
  --exclude "deploy.sh" \
  /home/taechang85/projects/web-test/ \
  "$TARGET"/

echo "✅ Deploy 완료"
