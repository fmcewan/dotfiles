#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
source /home/fraser/.local/share/shunpo/shunpo_cmd
export SHUNPO_DIR=/home/fraser/.local/share/shunpo

. "$HOME/.local/bin/env"
