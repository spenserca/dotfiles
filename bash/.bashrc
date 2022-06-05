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

env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2=agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add
fi

unset env