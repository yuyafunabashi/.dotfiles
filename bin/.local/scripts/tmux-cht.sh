#!/usr/bin/env bash

languages=$(echo "typescript javascript python nodejs tmux bash html css zsh" | tr " " "\n")
core_utils=$(echo "find xarfs sed awk" | tr " " "\n")
selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p "Enter Query: " query

if echo "$languages" | grep -qs $selected; then
	tmux split-window -p 22 -h bash -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less "
else

	tmux split-window -p 22 -h bash -c "curl cht.sh/$selected~$query | less"
fi
