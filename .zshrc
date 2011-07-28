export EDITOR=vim
export VISUAL=vim
export BROWSER=chromium
export PAGER=less
export PATH=$PATH:$HOME/.bin/:/opt/android-sdk/tools:/opt/android-sdk/platform-tools

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export LESS=-r

export LC_MESSAGES=en_US.UTF-8
export LC_NUMERIC=de_DE.UTF-8
export LC_TIME=de_DE.UTF-8
export LC_COLLATE=de_DE.UTF-8
export LC_MONETARY=de_DE.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_PAPER=de_DE.UTF-8
export LC_NAME=de_DE.UTF-8
export LC_ADDRESS=de_DE.UTF-8
export LC_TELEPHONE=de_DE.UTF-8
export LC_MEASUREMENT=de_DE.UTF-8
export LC_IDENTIFICATION=de_DE.UTF-8


eval $(dircolors -b)

bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End

setopt ALL_EXPORT

autoload      edit-command-line
zle -N        edit-command-line
bindkey '\ee' edit-command-line

# Set/unset  shell options
setopt   notify globdots correct pushdtohome cdablevars autolist
setopt   correctall autocd recexact longlistjobs nohup incappendhistory sharehistory extendedhistory
setopt   autoresume histignoredups pushdsilent menucomplete
setopt   autopushd pushdminus extendedglob rcquotes mailwarning
unsetopt bgnice autoparamslash

# Autoload zsh modules when they are referenced
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zmodload -a zsh/mapfile mapfile

HISTFILE=$HOME/.zhistory
HISTSIZE=1000
SAVEHIST=1000

autoload colors zsh/terminfo
if [[ "$terminfo[colors]" -ge 8 ]]; then
    colors
fi

for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
    eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
    (( count = $count + 1 ))
done

unsetopt ALL_EXPORT

PR_NO_COLOR="%{$terminfo[sgr0]%}"
PS1="[$PR_BLUE%n$PR_WHITE@$PR_GREEN%U%m%u$PR_NO_COLOR:$PR_RED%2c$PR_NO_COLOR]%(!.#.$) "
RPS1="$PR_LIGHT_YELLOW(%D{%m-%d %H:%M})$PR_NO_COLOR"

alias =clear
autoload -U compinit
compinit

bindkey "^r" history-incremental-search-backward
bindkey '^I' complete-word # complete on tab, leave expansion to _expand

zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' menu select=1 _complete _ignored _approximate
zstyle -e ':completion:*:approximate:*' max-errors \
    'reply=( $(( ($#PREFIX+$#SUFFIX)/2 )) numeric )'
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'

# Completion Styles

# list of completers to use
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate

# allow one error for every three characters typed in approximate completer
zstyle -e ':completion:*:approximate:*' max-errors \
    'reply=( $(( ($#PREFIX+$#SUFFIX)/2 )) numeric )'
    
# insert all expansions for expand completer
zstyle ':completion:*:expand:*' tag-order all-expansions

# formatting and messages
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
zstyle ':completion:*' group-name ''

# match uppercase from lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# offer indexes before parameters in subscripts
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

## add colors to processes for kill completion
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:*:kill:*:processes' command 'ps --forest -A -o pid,user,cmd'
zstyle ':completion:*:processes-names' command 'ps axho command'

# New completion:
#  1. All /etc/hosts hostnames are in autocomplete
#  2. If you have a comment in /etc/hosts like #%foobar.domain,
#     then foobar.domain will show up in autocomplete!
zstyle ':completion:*' hosts $(awk '/^[^#]/ {print $2 $3" "$4" "$5}' /etc/hosts | grep -v ip6- && grep "^#%" /etc/hosts | awk -F% '{print $2}')

# http://www.sourceguru.net/ssh-host-completion-zsh-stylee/
zstyle -e ':completion::*:*:*:hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# ignore completion functions (until the _ignored completer)
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*:*:*:users' ignored-patterns \
        adm apache bin daemon games gdm halt ident junkbust lp mail mailnull \
        named news nfsnobody nobody nscd ntp operator pcap postgres radvd \
        rpc rpcuser rpm shutdown squid sshd sync uucp vcsa xfs avahi-autoipd\
        avahi backup messagebus beagleindex debian-tor dhcp dnsmasq fetchmail\
        firebird gnats haldaemon hplip irc klog list man cupsys postfix\
        proxy syslog www-data mldonkey sys snort

# SSH Completion
zstyle ':completion:*:scp:*' tag-order files users 'hosts:-host hosts:-domain:domain hosts:-ipaddr"IP\ Address *'
zstyle ':completion:*:scp:*' group-order files all-files users hosts-domain hosts-host hosts-ipaddr
zstyle ':completion:*:ssh:*' tag-order users 'hosts:-host hosts:-domain:domain hosts:-ipaddr"IP\ Address *'
zstyle ':completion:*:ssh:*' group-order hosts-domain hosts-host users hosts-ipaddr
zstyle '*' single-ignored show


# ls
alias ls='ls -hF --color=always'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias ld='ll -rct'
alias lz='ll -rS'                   # sort by size

# pacman
alias pacman='sudo pacman-color'
alias syu='packer -Syu'
alias rs='pacman -Rs'
alias pas='packer -S'
alias paqs='pacman -Qs'
alias pass='packer -Ss'
alias pau='pacman -U'

# programs
alias off="sudo shutdown -h now"
alias reboot="sudo reboot"
alias grep='grep --color=auto'
alias ncdf='discus'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p'
alias w='wicd-curses'
alias vpn-uni="sudo vpnc /etc/vpnc/uni.conf"
alias vpn-disconnect="sudo vpnc-disconnect"

alias mnt="sudo mount"
alias umnt="sudo umount -l"

# cd
alias home="cd ~"
alias done="cd ~/Downloads/"
alias back="cd -"
alias ..="cd .."

# safety features
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

alias -g G="| grep"
alias -g L="| less"

# git
alias gs="git status"
alias gb="git branch"
alias gd="git diff"
alias gc="git commit -am"

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
mkzip() { zip -r "${1%%/}.zip" "${1%%/}/"; }

function remindme()
{
     sleep $1 && zenity --info --text "$2" &
}
