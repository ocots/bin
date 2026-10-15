#!/bin/zsh
export GITHUB_PERSONAL_ACCESS_TOKEN=$(security find-generic-password -s "github-mcp" -a "claude" -w)
exec npx -y @modelcontextprotocol/server-github
