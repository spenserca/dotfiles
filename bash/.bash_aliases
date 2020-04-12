alias reload="source ~/.bash_profile"

alias unset_http_proxy="export HTTP_PROXY=;export HTTPS_PROXY=;"
alias rm_node_modules="find . -name \"node_modules\" -type d -prune -exec rm -rf '{}' +"

# shell
alias ls="ls -Ga"

# directories
alias dotfiles="cd ~/Repositories/Personal/GitHub/dotfiles"
alias repos="cd ~/Repositories"
alias personal="cd ~/Repositories/Personal"

alias pgh="cd ~/Repositories/Personal/GitHub"
alias pbb="cd ~/Repositories/Personal/BitBucket"
alias pcc="cd ~/Repositories/Personal/CodeCommit"

alias sai="cd ~/Repositories/SAI"

alias xil="cd ~/Repositories/Xilution/GitHub"

# chocolatey aliases
alias ci="choco install"
alias cf="choco info"
alias cl="choco list"
alias cs="choco search"

# git aliases
alias br="git branch"
alias brcl="brmg && brpr && git branch -a"
alias brmg="git branch --merged master | grep -v -e 'master' -e '\*' | xargs -r -n 1 git branch -d"
alias brpr="git remote prune origin"
alias ca="git commit -am"
alias cb="git checkout -b"
alias cm="git commit -m"
alias co="git checkout"
alias ga="git add"
alias gf="git fetch"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias ma="git checkout master"
alias pl="git pull"
alias ps="git push"
alias st="git status"
alias update="ma && pl && brcl"

# npm aliases
alias nb="npm run build"
alias nd="npm i -D"
alias ni="npm i"
alias ns="npm start"
alias nt="npm test"
alias nv="npm run verify"

# xilution aliases
alias xil_up_shared_mfa="~/Repositories/Personal/GitHub/dotfiles/xilution/update-shared-xilution-mfa.sh"

# yarn aliases
alias y="yarn"
alias ya="yarn add"
alias yb="yarn build"
alias yd="yarn add -D"
alias ys="yarn start"
alias yt="yarn test"
alias yv="yarn verify"