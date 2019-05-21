# dotfiles

A repository for holding common dot files that can be pulled down and symlinked for easier setup.

## symlinking (Windows)

Requirements: `junction`

- install `junction`
  - `choco install junction`
- create your symlink
  - `mklink /D C:\Users\{Username}\.bashrc C:\Users\{Username}\Repositories\Personal\dotfiles\bash\.bashrc`
  - `ln -s ~/Repositories/Personal/GitHub/dotfiles/bash/.bash_aliases ~/.bash_aliases`
  - `junction ~/.bash_aliases ~/Repositories/Personal/GitHub/dotfiles/bash/.bash_aliases`