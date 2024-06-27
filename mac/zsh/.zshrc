eval "$(oh-my-posh init zsh --config ~/ohmyposh.omp.json)"

# load from .zsh_aliases
if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi

# load local aliases not stored in source control
# this allows for overriding zsh aliases or having
# client specific values without putting them in 
# source control
if [ -f ~/.local_aliases ]; then
    source ~/.local_aliases
fi

# load from .zsh_functions
if [ -f ~/.zsh_functions ]; then
    source ~/.zsh_functions
fi