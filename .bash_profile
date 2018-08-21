
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
alias ttt="ls -t | head -1"
#no spaces and then get rid of duplicate -'s
alias cdd="cd .."

# schenanigans (Do I need to bring in meme scripts?)
alias http="python -m SimpleHTTPServer"
alias rot13='tr "A-Za-z" "N-ZA-Mn-za-m"'
alias e='tr e E'

if [[ -z $(hash pbcopy) ]]; then
    alias ehh="echo -n ¯\\\_\(ツ\)_/¯ | pbcopy"
    alias rr="echo 'https://www.youtube.com/watch?v=dQw4w9WgXcQ' | pbcopy"
fi

# various locations
STICKY=~/GitHub/my-notes/sticky.md
NOTES=~/notes/

alias notes="cd $NOTESDIR"
alias vsticky="vim $STICKY"
alias gsticky="cat $STICKY | grep"
wsticky(){ echo $@ >> $STICKY;}
ssticky(){ $SAVE $@; }


# editing profile easily
alias epro="vim ~/.bash_profile"
alias ee="vim ~/.bash_profile"
alias ss="source ~/.bash_profile"

export DESK=~/Desktop/
export DOWN=~/Downloads/
export GITT=~/Github/
export NOTES=~/notes/
export SAND=~/Sandbox/

alias desk="cd $DESK"
alias down="cd $DOWN"
alias odwon="open $ODOWN"
alias gitt="cd $GITT"
alias notes="cd $NOTES"
alias sand="cd $SAND"

alias oo="open ."

cdl() {
    cd $1 && ls
}

#default is overriden by further commands.

#add home/bin if exists
if [[ -d "/usr/local/sbin/" ]] ; then
	PATH="${PATH}:/usr/local/sbin"
fi

#add usr/local/sbin if exists
if [[ -d "$HOME/bin" ]] ; then
	PATH="${PATH}:$HOME/bin"
fi

#git hub manage dot files
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
