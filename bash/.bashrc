eval "$(oh-my-posh init bash --config ~/developer/personal/dotfiles/bash/ohmyposh.config.json)"

# load from .bash_aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# load local aliases not stored in source control
# this allows for overriding bash aliases or having
# client specific values without putting them in 
# source control
if [ -f ~/.local_aliases ]; then
    source ~/.local_aliases
fi

# load from .bash_functions
if [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
fi