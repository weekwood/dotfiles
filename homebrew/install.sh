#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
brew tap caskroom/cask
brew tap caskroom/versions
brew install brew-cask
brew install gcc
brew install git
brew install mongodb
brew install node
brew install sqlite
brew install wget
brew install docker

brew cask install atom
brew cask install cakebrew
brew cask install dropbox
brew cask install iterm2
brew cask install launchrocket
brew cask install sequel-pro
brew cask install sourcetree
brew cask install mongohub
brew cask install macdown

brew cleanup
brew cask cleanup

exit 0
