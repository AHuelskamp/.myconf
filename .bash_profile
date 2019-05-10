
# Check OS
version=$(uname)

# TODO: Can these be `declare -r`'d without being exported (scope seems to persist past this script being run)
LINUX=linux
MAC=mac

if [[ "$version" == Linux ]]; then
    OS=$LINUX
elif [[ "$version" == Darwin ]]; then
    OS=$MAC
fi

if [[ -z "$OS" ]]; then
    echo Unknown OS "$version" &>2
    exit 1
fi

if [[ $OS == $LINUX ]]; then
    if [[ -z "$(hash xclip)" ]]; then
        pbpaste() { xclip -o; }
        pbcopy() { xclip -i; }
    fi

    echo TODO LS FLAGS >/dev/null

elif [[ $OS == $MAC ]]; then
    echo TODO LS FLAGS >/dev/null
fi


#typos, defaults, and other
alias dquar=" xattr -d com.apple.quarantine" #remove quarentince xattr from downloaded files
alias ll="ls -althG"
alias lll="ls -althG@"
alias ls="ls -G" #G is the mac color flag
alias lsd="ls -d */"
alias cp="cp -i"
alias mv="mv -i"
alias df="df -h"
alias du="du -h"
alias pgrep="pgrep -a"
alias locate="locate -i"
alias grep="grep -i --color=auto"
alias gg="grep -i --color=auto"
alias cc="clear"
alias cd..="cd .."
alias path="echo $PATH"
alias taill="tail -1" #last is a system command
alias tt="ls -t | head"
alias cdd="cd .."
alias oo="open ."
cdl() { cd $1 && ls; }
alias today='date +"%m/%d/%y"'

# schenanigans
alias http="python -m SimpleHTTPServer"
alias rot13='tr "A-Za-z" "N-ZA-Mn-za-m"'
alias e='tr e E'

if [[ -z $(hash pbcopy) ]]; then
    alias ehh="echo -n ¯\\\_\(ツ\)_/¯ | pbcopy"
    alias rr="echo 'https://www.youtube.com/watch?v=dQw4w9WgXcQ' | pbcopy"
fi

# editing profile easily
alias epro="vim ~/.bash_profile"
alias ee="vim ~/.bash_profile"
alias ss="source ~/.bash_profile"

# various locations
export TESS_DESK=~/Desktop/
export TESS_DROP=~/Dropbox/
export TESS_DOWN=~/Downloads/
export TESS_GITT=~/Github/
export TESS_NOTES=~/Notes/
export TESS_STICKY=~/Sticky/
export TESS_SAND=~/Sandbox/
export TESS_SCREEN=~/Screenshots/
export TESS_SCHOOL=~/School/

if [[ -d $TESS_DESK && -d $TESS_DOWN && -d $TESS_GITT && -d $TESS_NOTES
    && -d $TESS_STICKY && -d $TESS_SAND && -d $TESS_SCREEN && -d $TESS_DROP ]]; then
    alias desk="cd $TESS_DESK"
    alias down="cd $TESS_DOWN"
    alias odwon="open $TESS_DOWN"
    alias gitt="cd $TESS_GITT"
    alias notes="cd $TESS_NOTES"
    alias sand="cd $TESS_SAND"
    alias notes="cd $TESS_NOTES"
    alias sticky="cd $TESS_STICKY"
    alias school="cd $TESS_SCHOOL"
    alias skl="cd $TESS_SCHOOL"
    alias home="cd ~"
    alias drop="cd $TESS_DROP"
    alias screen="cd $TESS_SCREEN" # If I ever want to use the program screen, I'll have to rename this
else
    echo An expected directory is missing. Please fix system manually. >&2
fi


#add usr/local/sbin if exists
if [[ -d "$HOME/bin" ]] ; then
    PATH="${PATH}:$HOME/bin"
fi

# Manage dot files with git
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
