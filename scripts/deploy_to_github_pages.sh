#!/usr/bin/env bash
#
# Creates (if needed) the GitHub Pages user-site repo and pushes this
# Jekyll site to it. Run this from the root of the repo, on the machine
# where you're logged into the target GitHub account.
#
#   chmod +x scripts/deploy_to_github_pages.sh
#   ./scripts/deploy_to_github_pages.sh
#
# A GitHub user site MUST live in a repo named "<username>.github.io" and
# is served automatically from that repo's default branch (no gh-pages
# branch, no build step needed here - GitHub builds Jekyll for you as
# long as the Gemfile only uses the "github-pages" gem, which this
# project already does).

set -euo pipefail

GITHUB_USERNAME="${GITHUB_USERNAME:-lunar-photon}"
REPO_NAME="${GITHUB_USERNAME}.github.io"
REMOTE_NAME="origin"

cd "$(dirname "$0")/.."

echo "== Deploying to https://${GITHUB_USERNAME}.github.io =="

# --- 1. Sanity checks ---------------------------------------------------

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "This directory isn't a git repo. Initializing one..."
  git init
  git checkout -b master
fi

CURRENT_BRANCH="$(git symbolic-ref --short HEAD)"

if [ -n "$(git status --porcelain)" ]; then
  echo "You have uncommitted changes:"
  git status --short
  read -rp "Commit them now with message 'Deploy site'? [y/N] " ans
  if [[ "$ans" =~ ^[Yy]$ ]]; then
    git add -A
    git commit -m "Deploy site"
  else
    echo "Aborting - commit or stash your changes first, then re-run."
    exit 1
  fi
fi

# --- 2. Make sure the repo exists on GitHub ------------------------------

HAS_GH=false
if command -v gh >/dev/null 2>&1; then
  HAS_GH=true
fi

if $HAS_GH; then
  if ! gh auth status >/dev/null 2>&1; then
    echo "You're not logged into the GitHub CLI yet."
    gh auth login
  fi

  ACTIVE_USER="$(gh api user --jq .login 2>/dev/null || echo "")"
  if [ "$ACTIVE_USER" != "$GITHUB_USERNAME" ]; then
    echo "Warning: gh is authenticated as '$ACTIVE_USER', not '$GITHUB_USERNAME'."
    read -rp "Continue anyway? [y/N] " ans
    [[ "$ans" =~ ^[Yy]$ ]] || { echo "Run 'gh auth login' as $GITHUB_USERNAME and re-run this script."; exit 1; }
  fi

  if gh repo view "${GITHUB_USERNAME}/${REPO_NAME}" >/dev/null 2>&1; then
    echo "Repo ${GITHUB_USERNAME}/${REPO_NAME} already exists."
  else
    echo "Creating repo ${GITHUB_USERNAME}/${REPO_NAME}..."
    gh repo create "${GITHUB_USERNAME}/${REPO_NAME}" --public --description "Personal academic site"
  fi
else
  echo "GitHub CLI ('gh') not found."
  echo "Create the repo manually before continuing:"
  echo "  1. Go to https://github.com/new"
  echo "  2. Owner: ${GITHUB_USERNAME}   Repository name: ${REPO_NAME}"
  echo "  3. Leave it empty (no README/.gitignore/license), Public"
  read -rp "Press Enter once the repo exists on GitHub..." _
fi

# --- 3. Point the git remote at it, without clobbering an existing one --

REMOTE_URL="https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

if git remote get-url "$REMOTE_NAME" >/dev/null 2>&1; then
  EXISTING_URL="$(git remote get-url "$REMOTE_NAME")"
  if [ "$EXISTING_URL" != "$REMOTE_URL" ]; then
    echo "Existing '$REMOTE_NAME' remote points elsewhere: $EXISTING_URL"
    BACKUP_NAME="origin-backup-$(date +%s)"
    echo "Renaming it to '$BACKUP_NAME' so nothing is lost, then setting '$REMOTE_NAME' to the Pages repo."
    git remote rename "$REMOTE_NAME" "$BACKUP_NAME"
    git remote add "$REMOTE_NAME" "$REMOTE_URL"
  fi
else
  git remote add "$REMOTE_NAME" "$REMOTE_URL"
fi

# --- 4. Push -------------------------------------------------------------

echo "Pushing '$CURRENT_BRANCH' to $REMOTE_URL ..."
git push -u "$REMOTE_NAME" "$CURRENT_BRANCH"

echo ""
echo "Done. GitHub Pages builds automatically for <username>.github.io repos."
echo "Give it a minute, then check: https://${GITHUB_USERNAME}.github.io"
echo "Build status/settings: https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/settings/pages"
