
#typos, defaults, and other
alias dquar=" xattr -d com.apple.quarantine" #remove quarentince xattr from downloaded files
alias bb="$(pbpaste)"
alias xx="exit"
alias qq="exit"
alias ll="ls -althG"
alias lll="ls -althG@" 
alias ls="ls -G" #G is the mac color flag 
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
alias :wq="" #do nothing
alias :q="" #do nothing
alias wq="" #do nothing
alias path="echo $PATH"
alias first="head -1" 
alias taill="tail -1" #last is a system command
alias topten="ls -t | head" 
alias tt="ls -t | head" 
alias ttt="ls -t | head -1"
#no spaces and then get rid of duplicate -'s 
alias nospace='rename  -e "s, ,-,g" * ;  rename -e "s,-[-]*,-,g" *' #who does that anyways?
alias cdd="cd .."

#schenanigans
alias http="python -m SimpleHTTPServer" 
alias rot13='tr "A-Za-z" "N-ZA-Mn-za-m"'
alias e='tr e E'
alias ehh="echo ¯\\\_\(ツ\)_/¯ | pbcopy"

#log onto the pi. 
#only works on home network 
alias pii="ssh pi@192.168.1.162"




#file where I keep my notes. 
#kept under VC 
STICKY=~/GitHub/my-notes/sticky.md
SAVE=~/GitHub/my-notes/update-this-repo.sh
NOTESDIR=~/GitHub/my-notes/

alias notes="cd $NOTESDIR"

alias vsticky="vim $STICKY"
alias gsticky="cat $STICKY | grep" 
wsticky(){ echo $@ >> $STICKY;}
ssticky(){ $SAVE $@; }


#programs
alias v="vim"
alias py3="python3"
alias sublime="sublime\ text"
alias openf="open -a firefox" 

#git 
alias g="git" 
alias gd="git diff"
alias ga="git add" 
alias gau="git add -u" 
alias gcm="git commit -m" 
alias gs="git status"
alias gc="git checkout" 
alias gpo="git push origin" 
alias gcb="git checkout -b" 
alias gpom="git push origin master" 
alias glom="git pull origin master" 
alias gprom="git pull --rebase origin master" 
alias gfom="git fetch origin master" 
alias gmom="git merge origin master" 
alias gp="git push" 


#shutdown 
alias bye="sudo shutdown -h now"
alias bai="sudo shutdown -h now"
alias restart="sudo shutdown -r now"

#editing profile easily 
alias epro="vim ~/.bash_profile" 
alias ee="vim ~/.bash_profile" 
alias ss="source ~/.bash_profile"

#locations
export DESK=~/Desktop
export DROP=~/Dropbox
export SKL=~/Desktop/School
export DOWN=~/Downloads
export GITT=/Users/TessHuelskamp/GitHub

alias hdd="cd /Volumes/HDD/Users/TessHuelskamp/"
alias desk="cd ~/Desktop"
alias drop="cd ~/Dropbox"
alias sand="cd ~/sandbox"
alias odrop="open ~/Dropbox"
alias down="cd ~/Downloads"
alias dwon="cd ~/Downloads"
alias odown="open ~/Downloads"
alias odwon="open ~/Downloads"
alias skl="cd ~/Desktop/School" #this is the logical location
alias gitt="cd $GITT"
alias oo="open ."  #open the current directory in finder. 

#transfering files
toIcer()
{
    scp $@ huelska1@rsync.hpcc.msu.edu:~/scpdrop
}

toArctic()
{
    scp $@ huelska1@arctic.cse.msu.edu:~/scpdrop
}

toMe()
{
    scp $@ tess@huelskamp.io:~/scpdrop
}

fromMe()
{
    scp tess@huelskamp.io:~/scpdrop/*
}

fromIcer()
{
    scp huelska1@rsync.hpcc.msu.edu:~/scpdrop/* . 
}

fromArctic()
{
    scp huelska1@arctic.cse.msu.edu:~/scpdrop/* . 
}

wgetap()
{
    wget --user=huelska1 --ask-password $1
}


#ssh
alias work="ssh huelska1@gateway.hpcc.msu.edu"
alias workX="ssh -Y huelska1@gateway.hpcc.msu.edu"
alias icer="ssh huelska1@gateway.hpcc.msu.edu"
#alias icer="ssh huelska1@gateway-01.hpcc.msu.edu"
alias icerX="ssh -Y huelska1@gateway-01.hpcc.msu.edu"
alias wrok="ssh huelska1@gateway.hpcc.msu.edu"
alias north="ssh huelska1@north.cse.msu.edu"
alias northX="ssh -Y huelska1@north.cse.msu.edu"
alias arctic="ssh huelska1@arctic.cse.msu.edu"
alias black="ssh huelska1@black.cse.msu.edu"
alias aws="ssh -i /Users/TessHuelskamp/.ssh/AWS_Key_Pair.pem ubuntu@54.148.154.83"
alias digitalOcean="ssh -i /Users/TessHuelskamp/.ssh/digitalOcean tess@198.211.105.196"
alias csesftp="sftp huelska1@arctic.cse.msu.edu"
alias CSEsftp="sftp huelska1@arctic.cse.msu.edu"
alias worksftp="sftp huelska1@gateway.hpcc.msu.edu"
alias hadoop="ssh huelska1@hadoop1.cse.msu.edu"

#default is overriden by further commands. 

# Setting PATH so that I don't need ./ for exe's
#PATH="${PATH}:."
#export PATH

#add home/bin if exists 
if [ -d "/usr/local/sbin/" ] ; then 
	PATH="${PATH}:/usr/local/sbin"
fi

#add usr/local/sbin if exists 
if [ -d "$HOME/bin" ] ; then 
	PATH="${PATH}:$HOME/bin" 
fi

# Commented out bc who needs python 2?
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH

#Gaussview Installed 1-15-15
#needed to comment out a line somewhere. 
export g09root=/Applications
. ${g09root}/g09/bsd/g09.profile
export GAUSS_SCRDIR=~/Gaussian

alias sl="ls -G" #sl is some gaussian shit 

#Should learn real thing...
math()
{
    python -c "print($@)"
}


#git hub manage dot files 
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

#heh heh 
alias rr="echo 'https://www.youtube.com/watch?v=dQw4w9WgXcQ' | pbcopy" 

#add emcc to path. . . 
emcLoc="/Users/TessHuelskamp/GitHub/emsdk_portable"
if [ -f "$emcLoc/emsdk_env.sh" ] ; then 
    source $emcLoc/emsdk_env.sh > /dev/null
fi

