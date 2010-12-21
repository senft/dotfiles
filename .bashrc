# Check for an interactive session
[ -z "$PS1" ] && return

export LC_MESSAGES=en_US.utf8
export GREP_COLOR="1;34"
export EDITOR="vim"
eval $(dircolors -b)

if [ `id -u` == 0 ]; then
    PS1="\[\033[1;31m\][\u@\H \W]\$ \[\033[0m\]"
else
    PS1="\[\033[1;34m\][\u@\H \W]\$ \[\033[0m\]"
fi

# ls
alias ls='ls -hF --color=always'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lz='ll -rS'                   # sort by size

# shutdown
alias off="sudo shutdown -h now"
alias reboot="sudo reboot"

alias pacman='sudo pacman'

# programs
alias Syu='packer -Syu'
alias Rns='packer -Rns'

alias grep='grep --color=auto'
alias Rns='pacman -Rns'
alias todo='gitodo'
alias feh='feh -F'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p'
alias w='wicd-curses'
alias ssh_uni='ssh clientssh3.rbg.informatik.tu-darmstadt.de'

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

grepp() { [ $# -eq 1 ] && perl -00ne "print if /$1/i" || perl -00ne "print if /$1/i" < "$2";}

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

mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
