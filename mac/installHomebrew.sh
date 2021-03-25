GREEN='\033[2;32m'

log() {
  echo "${GREEN}$1"
}

install() {
  TEST_COMMAND=$1
  BREW_PACKAGE=$2

  if test ! $(which $TEST_COMMAND)
  then
    log "Installing $BREW_PACKAGE"
    brew install $BREW_PACKAGE
  else
    log "$BREW_PACKAGE is already installed -- skipping installation"
  fi
}

if test ! $(which brew)
then
  echo "${GREEN}Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "${GREEN}Homebrew already installed"
fi

log "Using Homebrew version $(brew --version)"

log "Updating any existing recipes"
brew update

log "Upgrading any existing formulae"
brew upgrade

# You can find mac formulae here: https://formulae.brew.sh/formula/

install node nodejs

install az azurecli

install aws awscli