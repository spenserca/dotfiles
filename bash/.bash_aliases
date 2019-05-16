alias reload="source ~/.bash_profile"

# directories
alias repos="cd ~/Repositories"
alias personal="cd ~/Repositories/Personal"

# chocolatey aliases
alias ci="choco install"
alias cf="choco info"
alias cl="choco list"
alias cs="choco search"

# git aliases
alias br="git branch"
alias brcl="git branch --merged master | grep -v -e 'master' -e '\*' | xargs -r -n 1 git branch -d && git remote prune origin"
alias ca="git commit -am"
alias cb="git checkout -b"
alias cm="git commit -m"
alias co="git checkout"
alias ga="git add"
alias gf="git fetch"
alias gl="git log"
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

# yarn aliases
alias y="yarn"
alias ya="yarn add"
alias yb="yarn build"
alias yd="yarn add -D"
alias ys="yarn start"
alias yt="yarn test"
alias yv="yarn verify"