#!/usr/bin/env bash
set -euo pipefail

echo "Repository:"
git rev-parse --show-toplevel

echo
echo "Branch:"
git status --short --branch

echo
echo "Remote:"
git remote -v || true

echo
echo "Git identity:"
printf "user.name: "
git config --get user.name || echo "(not set)"
printf "user.email: "
git config --get user.email || echo "(not set)"

echo
echo "Recent handoff:"
sed -n '1,120p' HANDOFF.md
