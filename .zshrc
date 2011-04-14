# kcbanner's zshrc file v0.1, based on:
# jdong's zshrc file v0.2.1 and
# mako's zshrc file, v0.1

export EDITOR=vim
export VISUAL=vim
export BROWSER=chromium

eval $(dircolors -b)

setopt ALL_EXPORT

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

PATH="/usr/local/bin:/usr/local/sbin/:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/cross/bin:$PATH"
PATH=$HOME/local/node/bin:$PATH
TZ="America/Toronto"
HISTFILE=$HOME/.zhistory
HISTSIZE=1000
SAVEHIST=1000
HOSTNAME="`hostname`"
PAGER='less'
TERM='xterm-color'
EDITOR='emacs'

autoload colors zsh/terminfo
if [[ "$terminfo[colors]" -ge 8 ]]; then
    colors
fi

for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
    eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
    (( count = $count + 1 ))
done

PR_NO_COLOR="%{$terminfo[sgr0]%}"
PS1="[$PR_BLUE%n$PR_WHITE@$PR_GREEN%U%m%u$PR_NO_COLOR:$PR_RED%2c$PR_NO_COLOR]%(!.#.$) "
RPS1="$PR_LIGHT_YELLOW(%D{%m-%d %H:%M})$PR_NO_COLOR"
LC_ALL='en_US.UTF-8'
LANG='en_US.UTF-8'
LC_CTYPE=C

unsetopt ALL_EXPORT
alias yaourt="color='' yaourt"
alias man='LC_ALL=C LANG=C man'
alias ls='ls --color=auto '

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
alias feh='feh -F'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p'
alias w='wicd-curses'
alias gmp='gnome-mplayer'
alias ssh_uni='ssh clientssh1.rbg.informatik.tu-darmstadt.de'

alias bassdrive='mplayer http://bassdrive.com/v2/streams/BassDrive.pls'  

# cd
alias home='cd ~'
alias done="cd ~/Downloads/"
alias back='cd -'
alias ..='cd ..'

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

function remindme()
{
     sleep $1 && zenity --info --text "$2" &
}
