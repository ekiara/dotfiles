# .bash_aliases
# run source ~/.bash_aliases to 'enable' new aliases after editing this file.

# directory listing
alias l='ls -alFh'
alias lt='ls -lthF --time-style=+%Y%m%d%H%M%S'

# bash shortcut
alias bashf='source ~/.bash_aliases && source ~/.bashrc'

# python
alias py='python'

# tmux
alias tn='tmux new-session -s '
alias ta='tmux attach-session -t '
alias tl='tmux ls'

# git shortcuts
alias g='git'
alias gs='git status -s'
alias gl='git log --pretty=oneline -n 20 --graph'
alias ga='git add'
alias gd='git diff'

# datestamp
alias datestamp='date +%Y%m%d%H%M%S'
alias sasa='date +%Y%m%d%H%M%S'

# utility
alias wa='watch -n 1 '

# gzip shortcut
# USAGE: gz file > file.gz (save 18/20 keystrokes, 10% efficiency improvement)
alias gz='gzip --best --stdout'

# refresh DHCP configuration
# NOTE: maybe also edit /etc/sudoers, and add NOPASSWD for these two commands
alias netf='sudo /sbin/dhclient && sudo /sbin/ifconfig'
alias refresh='sudo /sbin/dhclient && sudo /sbin/ifconfig'


