alias reload="source ~/.bash_profile"
alias rm_node_modules="find . -name \"node_modules\" -type d -prune -exec rm -rf '{}' +"

# shell

alias ls="ls -Ga"

# directories

alias dotfiles="cd ~/repos/personal/dotfiles"
alias home="cd ~/"
alias repos="cd ~/repos"
alias personal="cd ~/repos/personal"

# chocolatey aliases

alias ci="choco install"
alias cf="choco info"
alias cl="choco list"
alias cs="choco search"

# explorer aliases

alias ex="explorer"

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

# terraform aliases

alias tfa="terraform apply"
alias tfc="terraform fmt -check -recursive"
alias tfd="terraform destroy"
alias tff="terraform fmt -recursive"
alias tfi="terraform init"
alias tfp="terraform plan"

# vs code aliases

alias notes="code ~/notes"

# xilution aliases

alias xil_up_shared_mfa="~/repos/personal/dotfiles/xilution/update-shared-xilution-mfa.sh"

# yarn aliases

alias y="yarn"
alias ya="yarn add"
alias yb="yarn build"
alias yd="yarn add -D"
alias ys="yarn start"
alias yt="yarn test"
alias yv="yarn verify"