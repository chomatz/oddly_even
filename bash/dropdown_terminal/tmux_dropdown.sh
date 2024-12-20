#!/bin/env bash

#todo: might turn this into a multi window session
#tmx(){
#	tmux new-session -d -s sesh -n win1
#	tmux new-window -d -n win2
#	tmux new-window -d -n win3
#	tmux new-window -d -n win4
#	tmux new-window -d -n win5
#	tmux attach-session -d -t sesh
#}

default_session=dropdown

tmux_binary="$(which tmux)"

if [ -f "$tmux_binary" ]; then
	$($tmux_binary attach-session -t "$default_session") || $($tmux_binary new-session -s "$default_session")
else
	echo "tmux binary not found"
	$(which bash)
fi
