GREEN='\033[2;32m'
YELLOW='\033[2;33m'

log() {
  echo "${GREEN}$1"
}

linebreak() {
  echo "${YELLOW}--*--*--*--*--"
}

install() {
  TEST_COMMAND=$1
  BREW_PACKAGE=$2

  if test ! $(which $TEST_COMMAND)
  then
    log "Installing $BREW_PACKAGE"
    brew install $BREW_PACKAGE
  else
    log "$BREW_PACKAGE is already installed -- using $($TEST_COMMAND --version)"
  fi

  linebreak
}

install_cask() {
  TEST_COMMAND=$1
  BREW_PACKAGE=$2

  if test ! $(which $TEST_COMMAND)
  then
    log "Installing $BREW_PACKAGE"
    brew install --cask $BREW_PACKAGE
  else
    log "$BREW_PACKAGE is already installed -- using $($TEST_COMMAND --version)"
  fi

  linebreak
}

if test ! $(which brew)
then
  echo "${GREEN}Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "${GREEN}Homebrew already installed"
fi

log "Using Homebrew version $(brew --version)"
linebreak

log "Updating any existing recipes"
brew update
linebreak

log "Upgrading any existing formulae"
brew upgrade
linebreak

# You can find mac formulae here: https://formulae.brew.sh/formula/

install node nodejs

install az azurecli

install aws awscli

install terraform terraform

install_cask code visual-studio-code