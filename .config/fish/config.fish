function fish_greeting
        echo ""
	neofetch --config /Users/sysadmin/.config/neofetch/config.conf
end

set LC_ALL en_GB.UTF-8
set LANG en_GB.UTF-8
set LANGUAGE en_GB.UTF-8

alias psg="ps aux | grep"
alias hsg="history | grep"
alias ls='ls -haltr --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias findin='egrep -rl'
alias cp='cp -v'
alias rm='rm -v'
alias nano='nano -w'
alias tl='tmux ls' # list sessions
alias ta='tmux attach' # attach
alias tad='tmux attach -d' # attach and detatch existing clients
alias tat='tmux a -t' # tat <session> # attach to named session
alias tan='tmux new -s' # tan <session> # create new named session
alias tkill='tmux kill-session -t' # tkill <session> # kill a named session
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias ytd='youtube-dl'
alias ytdf='youtube-dl -f 18'
set -xg PATH /opt/homebrew/bin /opt/homebrew/opt/python@3.9/libexec/bin /usr/bin /bin /usr/sbin /sbin
set -xg EDITOR /usr/bin/nano
