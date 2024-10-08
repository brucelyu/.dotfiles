#!/bin/sh

echo "Setting up your OS..."

# Check for Oh My Zsh and install if we don't have it
if [[ -d ~/.oh-my-zsh ]]; then
    echo "oh-my-zsh is installed"
else
    if [[ "$(uname)" == "Darwin" ]]; then
        # Do something under Mac OS X platform
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    elif [[ "$(uname)" == "Linux" ]]; then
        # Do something under GNU/Linux platform
	sudo apt install zsh
        sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
    fi
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  if [[ $(uname -m) == 'arm64' ]]; then
    # Add Homebrew to your PATH in ~/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi
else
  echo "Homebrew is already installed..."
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file $HOME/.dotfiles/Brewfile

# Symlink the git configuration file
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig
# Symlink the texmf folder
ln -s $HOME/.dotfiles/texmf $HOME/Library/texmf
# Symlink the tmux configuration file
ln -s $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf

# Create a Codes directory
mkdir -p $HOME/Codes
