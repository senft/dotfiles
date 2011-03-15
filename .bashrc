# Check for an interactive session
[ -z "$PS1" ] && return

export LC_MESSAGES="en_US.utf8"
export GREP_COLOR="1;34"
export EDITOR=vim
export VISUAL=gvim
export BROWSER=firefox-beta-bin
export PATH=$PATH:$HOME/.bin/:/opt/android-sdk/tools:/opt/android-sdk/platform-tools
export HISTCONTROL=ignoredups

complete -cf sudo
complete -cf man
complete -cf Rns

eval $(dircolors -b)

if [ $UID -eq 0 ]; then
    PS1="\[\033[1;31m\][\u@\H \W]\$ \[\033[0m\]"
else
    PS1="\[\033[1;34m\][\u@\H \W]\$ \[\033[0m\]"
fi

# support colors in less
export LESS_TERMCAP_mb=$'\E[01;34m'
export LESS_TERMCAP_md=$'\E[01;34m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;35m'

# ls
alias ls='ls -hF --color=always'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias ld='ll -t'
alias lz='ll -rS'                   # sort by size

# pacman
alias pacman='sudo pacman-color'
alias Syu='packer -Syu'
alias Rns='pacman -Rns'
alias pas='packer -S'
alias paqs='pacman -Qs'
alias pass='packer -Ss'
alias pau='pacman -U'

# programs
alias off="sudo shutdown -h now"
alias reboot="sudo reboot"
alias moff="xset dpms force standby"
alias grep='grep --color=auto'
alias t='gitodo'
alias feh='feh -F'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p'
alias w='wicd-curses'
#alias vlc='vlc --extraintf=luahttp'
alias gmp='gnome-mplayer'
alias ssh_uni='ssh clientssh1.rbg.informatik.tu-darmstadt.de'

alias bassdrive='mplayer http://bassdrive.com/v2/streams/BassDrive.pls'  

# cd
alias home='cd ~'
alias done="cd ~/Downloads/"
alias back='cd -'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

# safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# git
alias gitps="git push origin master"
alias gitp="git pull"
alias gitc="git commit -a"

packer() {
   case $1 in
	(-Ss | -Si | -G)
	    /usr/bin/packer "$@" ;;
    (-S*)
		/usr/bin/sudo /usr/bin/packer "$@" ;;
    (*)
        /usr/bin/packer "$@" ;;
   esac
}

mkdircd () { mkdir "$@" && eval cd "\"\$$#\""; }

# Creates an archive from given directory
mktar() { tar cvf  "${1%%/}.tar"     "${1%%/}/"; }
mktgz() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mktbz() { tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }

