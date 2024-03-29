alias reload="source ~/.bash_profile"
alias rm_node_modules="find . -name \"node_modules\" -type d -prune -exec rm -rf '{}' +"

# shell

alias ls="ls -Ga"
alias find_string="grep -rnw '.' -e "
alias rr="rm -rf"

# directories

alias dotfiles="cd ~/repos/personal/dotfiles"
alias home="cd ~/"
alias personal="cd ~/repos/personal"
alias work="cd ~/repos/work"
alias ..="cd .."
alias dev="cd ~/developer/work"

# chocolatey aliases

alias ci="choco install"
alias cf="choco info"
alias cl="choco list"
alias cs="choco search"

# docker aliases

alias dlsc="docker ps -a"
alias drmc="docker rm"

alias dlsi="docker images -a"
alias drmi="docker rmi"

# explorer aliases

alias ex="explorer"

# git aliases

alias br="git branch"
alias brpr="git remote prune origin"
alias ca="git commit -am"
alias cb="git checkout -b"
alias cm="git commit -m"
alias co="git checkout"
alias ga="git add"
alias gf="git fetch"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias pl="git pull"
alias ps="git push"
alias st="git status"

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

# yarn aliases

alias y="yarn"
alias ya="yarn add"
alias yb="yarn build"
alias yd="yarn add -D"
alias ys="yarn start"
alias yt="yarn test"
alias yv="yarn verify"
