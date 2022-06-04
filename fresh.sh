#!/bin/sh

echo "Setting up your OS..."

# Check for Oh My Zsh and install if we don't have it
if [ -d ~/.oh-my-zsh ]; then
    echo "oh-my-zsh is installed"
else
    if [ "$(uname)" == "Darwin" ]; then
        # Do something under Mac OS X platform
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    elif [ "$(uname)" == "Linux" ]; then
        # Do something under GNU/Linux platform
        sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
    fi
fi
