#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

check "distro" lsb_release -c
check "zsh" zsh --version
check "nvim" nvim --version
check "tmux" tmux -V
check "ripgrep" rg --version
check "claude" claude --version
check "node" node --version
check "locale configured" bash -c "locale | grep -q 'LANG=en_US.UTF-8'"
check "stow" which stow

reportResults
