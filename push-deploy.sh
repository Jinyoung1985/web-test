#!/bin/bash
set -e

echo "📦 Git push 시작"
git add .
git commit -m "${1:-update}" || true
git push origin main

echo "🚀 Deploy 시작"
/home/taechang85/projects/web-test/deploy.sh

echo "✅ Push + Deploy 완료"
