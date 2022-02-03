
#add usr/local/sbin if exists
if [[ -d "$HOME/bin" ]] ; then
    PATH="${PATH}:$HOME/bin"
fi

export PATH=/usr/local/opt/ruby/bin:$PATH

if [[ -f "~/.aliases" ]]; then
    source ~/.alises
fi


