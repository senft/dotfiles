if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start --components=ssh)
    export SSH_AUTH_SOCK
fi

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code/Python
export VIRTUALENVWRAPPER_SCRIPT=/usr/bin/virtualenvwrapper.sh
source /usr/bin/virtualenvwrapper_lazy.sh

export EDITOR=nvim
export VISUAL=nvim
export BROWSER=firefox
export PAGER=less
export PATH=$PATH:/opt/android-sdk/tools:/opt/android-sdk/platform-tools:/opt/android-sdk/build-tools/17.0.0

# omnetpp
export OMNETPP_CONFIGFILE=/opt/omnetpp/Makefile.inc
export PATH=$PATH:/opt/omnetpp/

# commonly used directorys
export py=~/Code/Python

# temporary
alias paper="cd ~/Dropbox/Uni/Julius/btlive/paper-btlive-simulation/; vim ."
alias thesis="mendeleydesktop >/dev/null 2>&1 &;cd ~/Code/TeX/thesis-ma/; tmux-dev;"
export pfs=~/Code/Java/Uni/simonstrator-overlays/
export plots=~/Code/Java/Uni/plottingplatform/
alias ov="cd ~/Code/Java/Uni/simonstrator-overlays/"
alias sr="cd "~/Code/Java/Uni/simonstrator-simrunner/""

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export JAVA_FONTS=/usr/share/fonts/TTF
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dsun.java2d.xrender=true"

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

eval $(dircolors -b $HOME/.dircolors)

# Disable Software flow control (Sleep on CTRL-S)
stty -ixon

# Vi(m) mode
bindkey -v
export KEYTIMEOUT=1

bindkey "\e[3~" delete-char # Del
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End

setopt ALL_EXPORT

autoload      edit-command-line
zle -N        edit-command-line
bindkey '^v'  edit-command-line
bindkey -M vicmd v edit-command-line

fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    fg
    zle redisplay
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

setopt   prompt_subst
setopt   notify globdots correct cdablevars autolist
setopt   extended_glob
setopt   autocd recexact longlistjobs nohup incappendhistory sharehistory extendedhistory
setopt   menucomplete extendedglob rcquotes mailwarning
setopt   NO_NOMATCH # pass bad match onto the command
unsetopt bgnice autoparamslash

# Autoload zsh modules when they are referenced
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zmodload -a zsh/mapfile mapfile

autoload -Uz vcs_info

HISTFILE=$HOME/.zhistory
HISTSIZE=50000
SAVEHIST=50000

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

zstyle ':vcs_info:*' formats " %b %a %c%u%f%m "
zstyle ':vcs_info:*' stagedstr '%F{4}S%f'
zstyle ':vcs_info:*' unstagedstr '%F{1}U%f'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' enable git hg
zstyle ':vcs_info:git*+set-message:*' hooks git-stash

# show stash existence (%m)
+vi-git-stash() {
    if [[ -s ${hook_com[base]}/.git/refs/stash ]]; then
        hook_com[misc]+="%B%F{14}#%b%f"
    fi
}

# ls
#alias ls='ls -hF --color=always'
alias ls='ls --color=always'
alias lr='ls -R'                    # recursive ls
alias ll='ls++ -l --potsf'
alias la='ll -A'
alias ld='ll -rct'
alias lz='ll -rS'                   # sort by size

alias du="du -ch"
# alias df="df -h"
alias df="dfc"

# pacman
alias pacman='sudo pacman'
alias syu='pacaur -Syu'
alias rs='pacman -Rs'
alias pas='pacaur -S'
alias pass='pacaur -Ss'
alias paqs='pacman -Qs'
alias paql='pacman -Ql'
alias paqo='pacman -Qo'
alias paqi='pacman -Qi'
alias pau='pacman -U'

compdef packer='pacman'

# programs
alias shutdown="sudo shutdown"
alias off="shutdown -h now"
alias reboot="sudo reboot"
alias win="sudo win"
alias grep='grep --color=auto'
alias mkdir='mkdir -p'
alias wcli='wicd-curses'
alias vpn-uni="sudo openconnect --authgroup extern https://vpn.hrz.tu-darmstadt.de/"
alias cal="cal -3"
alias ipy='ipython -i'
alias ipy2='ipython2 -i'
alias vnc="x11vnc -rfbauth ~/.vnc/pw -display :0 -clip 1920x1080+0+0 -auth ~/.Xauthority -many"
alias youtube-dl-mp3="youtube-dl -x --audio-format mp3 --add-metadata --audio-quality 0 -o '%(title)s.%(ext)s'"
alias iv='sxiv'
alias z='zathura --fork'

alias t="todo.sh -d ~/Dropbox/.todo/todo.cfg -c"
alias tm="todotxt-machine"
alias ta="t add"
alias td="t do"
alias tv="t e"

# cd
alias gh="cd ~"
alias dl="cd ~/Downloads/"
alias uni="cd ~/Uni/"
alias back="cd -"
alias ..="cd .."

# vim shortcuts
alias vv="vim ~/.vim/vimrc ~/.vimperatorrc ~/.vrapperrc ~/.ideavimrc"
alias vz="vim ~/.zshrc"
alias vx="vim ~/.Xresources ~/.xinitrc"
alias vb="vim ~/.config/bspwm/bspwmrc ~/.config/sxhkd/sxhkdrc ~/.config/bspwm/{panel,panel_dzen2,panel_colors}"

# safety features
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# trash
alias tp="trash-put"
alias te="trash-empty"
alias tl="trash-list"
alias trash-restore="restore-trash"

#alias -g G="| grep"
alias -g G="| ack"
alias -g C="| xclip"

# git
alias gs="git status"
alias gb="git branch"
alias gd="git diff"
alias gdc="git diff --cached"
alias gds="git diff --stat"
alias ga="git add"
alias gap="git add -p"
alias grp="git reset HEAD -p"
alias gco="git checkout"
alias gcp="git checkout -p"
alias gc="git commit"
alias gca="git commit --amend"
alias gcA="git commit --amend --reuse-message=HEAD"
alias gcm="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias glf="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gl="glf | head"

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

# Create an archive from given directory
mktar() { tar cvf  "${1%%/}.tar"     "${1%%/}/"; }
mktgz() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mktbz() { tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }
mkzip() { zip -r "${1%%/}.zip" "${1%%/}/"; }

# Simple fuzzy search in current directory
ffind() { find . -iname "*$1*"; }

if [[ "$TERM" == *"-256color" ]]; then
    # Mode indicator
    zle -N zle-keymap-select
    zle -N zle-line-init

    function zle-keymap-select () {
        if [ $KEYMAP = vicmd ]; then
          echo -ne "\033]12;Darkgray\007"
        else
          echo -ne "\033]12;White\007"
      fi
      zle reset-prompt
    }
    function zle-line-init() {
      zle -K viins
    }
fi

if [[ ! -z "$SSH_CLIENT" ]]; then
    ssh_info="[%n@%m] "
fi

precmd() {
    vcs_info
}

RPROMPT='%F{cyan}%~%f%b'
if [ $(id -u) -eq 0 ]; then
    # root
    PS1='${vcs_info_msg_0_}%F{red}$ssh_info%F{red}# %f'
else
    PS1='${vcs_info_msg_0_}%F{magenta}$ssh_info%F{white}» %f'
fi

function ranger-cd {
    tempfile='/tmp/chosendir'
    /usr/bin/ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    /bin/rm -f -- "$tempfile"
}

if (( $+commands[trash-empty] )); then
  trash-empty() {
    if read -q "?$0: Are you sure you want to empty the trash? [y/n] "; then
      echo ""
      nocorrect command trash-empty "$@"
    fi
  }
fi

source /etc/profile.d/fzf.zsh
source /etc/profile.d/fzf-extras.bash
source /etc/profile.d/fzf-extras.zsh

bindkey -s '^f' 'ranger-cd\n'
bindkey -s '^t' 'urxvtc &\n'
bindkey -s '^P' 'fo\n' # dmenu_open on ctrl+space
