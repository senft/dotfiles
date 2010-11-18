# Check for an interactive session
[ -z "$PS1" ] && return

export GREP_COLOR="1;34"
export EDITOR="vim"
eval $(dircolors -b)

PS1="\[\033[1;34m\][\u@\H \W]\$ \[\033[0m\]"

# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[0;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[1;37;34m'    # begin bold
export LESS_TERMCAP_me=$'\E[0m'          # end mode
export LESS_TERMCAP_se=$'\E[0m'          # end standout-mode
export LESS_TERMCAP_so=$'\E[1;36m'       # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'          # end underline
export LESS_TERMCAP_us=$'\E[4;37;1;37m'  # begin underline

# ls
alias ls='ls -hF --color=always'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lz='ll -rS'                   # sort by size

# shutdown
alias off="sudo shutdown -h now"
alias reboot="sudo reboot"

# programs
alias grep='grep --color=auto'
#alias more='less'
alias feh='feh -F'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p'
alias snoopy='sudo snoopy-nox eth0 `id -u` `id -g`'

# edit xmonad config
alias cx="vim ~/.xmonad/xmonad.hs"

# cd
alias home='cd ~'
alias done="cd ~/Downloads/"
alias back='cd -'
alias ..='cd ..'

# safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

grepp() { [ $# -eq 1 ] && perl -00ne "print if /$1/i" || perl -00ne "print if /$1/i" < "$2";}

clyde() {
   case $1 in
	(-Ss | -Si | -Q* | -T | -G)
	        /usr/bin/clyde "$@" ;;
        (-S* | -R* | -U | *)
		/usr/bin/sudo /usr/bin/clyde "$@" ;;
   esac
}

alias Syu='clyde -Syu --aur'
alias Rns='clyde -Rns'

