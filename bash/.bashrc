# load from .bash_aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# load local aliases not stored in source control
if [ -f ~/.local_aliases ]; then
    source ~/.local_aliases
fi