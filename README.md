# dotfiles

A repository for holding common dot files that can be pulled down and symlinked for easier setup.

## symlinking (Windows)

Requirements: `junction`

- install `junction`
  - `choco install junction`
- create your symlink
  - `ln -s ~/.bash_aliases ~/Repositories/Personal/GitHub/dotfiles/bash/.bash_aliases`
  - `junction ~/.bash_aliases ~/Repositories/Personal/GitHub/dotfiles/bash/.bash_aliases`