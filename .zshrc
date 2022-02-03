if [[ -f ~/.work-aliases ]]; then
    source ~/.work-aliases
fi

if [[ -f ~/.aliases ]]; then
    source ~/.aliases
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Trying to get vscode working :)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
