#!/usr/bin/env bash
set -e

if [[ -z "${GITHUB_WORKSPACE}" ]]; then
    echo "Must set GITHUB_WORKSPACE in env"
    exit 1
fi

cd "${GITHUB_WORKSPACE}" || exit 2

repoman
