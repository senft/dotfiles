SSH_AUTH_SOCK=`netstat -xl | grep -o '/run/user/1000/keyring-.*/ssh$'`
[ -z "$SSH_AUTH_SOCK" ] || export SSH_AUTH_SOCK

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code/Python
export VIRTUALENVWRAPPER_SCRIPT=/usr/bin/virtualenvwrapper.sh
source /usr/bin/virtualenvwrapper_lazy.sh

export EDITOR=vim
export VISUAL=vim
export BROWSER=chromium
export PAGER=less
export PATH=$PATH:$HOME/.bin/:/opt/android-sdk/tools:/opt/android-sdk/platform-tools

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"

export LANG=en_US.utf8
export LC_MESSAGES="en_US.utf8"
export LC_NUMERIC="de_DE.utf8"
export LC_TIME="de_DE.utf8"
export LC_COLLATE="de_DE.utf8"
export LC_MONETARY="de_DE.utf8"
export LC_PAPER="de_DE.utf8"
export LC_NAME="de_DE.utf8"
export LC_ADDRESS="de_DE.utf8"
export LC_TELEPHONE="de_DE.utf8"
export LC_MEASUREMENT="de_DE.utf8"
export LC_IDENTIFICATION="de_DE.utf8"
export LC_CTYPE="de_DE.utf8"
export LC_ALL=

export PYTHONDOCS=/usr/share/doc/python/html/

eval $(dircolors -b)

# Vi(m) mode
bindkey -v

bindkey "\e[3~" delete-char # Del
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End

setopt ALL_EXPORT

autoload      edit-command-line
zle -N        edit-command-line
bindkey '\ee' edit-command-line
bindkey '^e'  edit-command-line

bindkey -s '^f' 'ranger\n'

setopt   notify globdots correct cdablevars autolist
setopt   autocd recexact longlistjobs nohup incappendhistory sharehistory extendedhistory
setopt   menucomplete extendedglob rcquotes mailwarning
unsetopt bgnice autoparamslash

# Autoload zsh modules when they are referenced
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zmodload -a zsh/mapfile mapfile

HISTFILE=$HOME/.zhistory
HISTSIZE=10000
SAVEHIST=10000

autoload colors zsh/terminfo
if [[ "$terminfo[colors]" -ge 8 ]]; then
    colors
fi

#for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
#    eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
#    eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
#    (( count = $count + 1 ))
#done

unsetopt ALL_EXPORT

#PR_NO_COLOR="%{$terminfo[sgr0]%}"
#PS1="[$PR_BLUE%n$PR_WHITE@$PR_GREEN%U%m%u$PR_NO_COLOR:$PR_RED%2c$PR_NO_COLOR] %(!.#.$) "
#RPS1="$PR_LIGHT_WHITE%D{%d-%m %H:%M:%S}$PR_NO_COLOR"

#------------------------------
# Window title
#------------------------------
case $TERM in
    *xterm*|rxvt|rxvt-unicode|rxvt-256color|rxvt-unicode-256color|(dt|k|E)term)
		precmd () { print -Pn "\e]0;%n@%M [%~] \a" } 
		preexec () { print -Pn "\e]0;%n@%M [%~] ($1)\a" }
	;; 
esac

autoload -U compinit
compinit

bindkey "^r" history-incremental-search-backward

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

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
#alias ls='ls -hF --color=always'
alias ls='ls++ --potsf'
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
alias paql='pacman -Ql'
alias pass='packer -Ss'
alias pau='pacman -U'

# programs
alias shutdown="sudo shutdown"
alias off="shutdown -h now"
alias reboot="sudo reboot"
alias grep='grep --color=auto'
alias mkdir='mkdir -p'
alias w='wicd-curses'
alias vpn-uni="sudo vpnc /etc/vpnc/uni.conf"
alias vpn-disconnect="sudo vpnc-disconnect"
alias cal="cal -3"
alias ipy='ipython -i'
alias ipy2='ipython2 -i'
alias t="todo.sh -d ~/Dropbox/.todo/todo.cfg -c"
alias vnc="x11vnc -rfbauth ~/.vnc/pw -display :0 -clip 1920x1080+0+0 -auth ~/.Xauthority -many"
alias r='ranger'
alias n64="mupen64plus --windowed --resolution 1920x1080"

# cd
alias home="cd ~"
alias dl="cd ~/Downloads/"
alias uni="cd ~/Uni/"
alias back="cd -"
alias ..="cd .."

# safety features
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

#alias -g G="| grep"
alias -g G="| ack"

# git
alias gs="git status"
alias gb="git branch"
alias gd="git diff"
alias gc="git commit -am"
alias gp="git push"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

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

mkcd () { mkdir "$@" && eval cd "\"\$$#\""; }

# Creates an archive from given directory
mktar() { tar cvf  "${1%%/}.tar"     "${1%%/}/"; }
mktgz() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mktbz() { tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }
mkzip() { zip -r "${1%%/}.zip" "${1%%/}/"; }

remindme() { (sleep $1 && zenity --info --text "$2") & }

zle -N zle-keymap-select
zle -N zle-line-init

function zle-keymap-select () {
    if [ $KEYMAP = vicmd ]; then
      echo -ne "\033]12;#ff6565\007"
    else
      echo -ne "\033]12;White\007"
  fi
  zle reset-prompt
} 
function zle-line-init() {
  zle -K viins
}


function _update_ps1()
{
  export PROMPT="$(python2 ~/.powerline-zsh.py $?)"
}
precmd()
{
  _update_ps1
}
