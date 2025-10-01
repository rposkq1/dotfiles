#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias t="printf '\033[?1h\033=' >/dev/tty"
alias ls='ls --color=auto'
alias la='ls -hal --color=auto'
alias ll='ls -cf --color=auto'
alias l='ls --color=auto'
alias grep='grep --color=auto'

complete -cf doas
complete -cf sudo
complete -cf man
fastfetch -l none

setterm --blank 1 &>/dev/null
setterm --appcursorkeys off &>/dev/null

export FFF_HIDDEN=1
ff () {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}
export CALCHISTFILE=/dev/null
export HISTFILE=/dev/null
export PATH=$PATH:/home/rposkq/.local/bin

alias bl=bluetoothctl
alias lw=librewolf
alias s=startx
alias yt="cd $HOME/yt && yt-dlp -f 'bestaudio[ext=m4a]+bestvideo[height=480]'"
alias sc=simplex-chat
alias c=calc
alias v=vim
alias ca='cage -s --'
alias kl=bashlock
alias lk=slock
alias q=qalc
alias f='export bg=1; feh --randomize --bg-fill wallpaper/'
alias m='mpv --shuffle --loop-playlist '
alias mm='mpv --shuffle --loop-playlist /m'
