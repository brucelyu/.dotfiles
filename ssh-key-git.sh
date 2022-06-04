#!/bin/sh

echo "Generating a new SSH key for GitHub..."

# Generate a new SSH key
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
ssh-keygen -t ed25519 -C $1 -f ~/.ssh/id_ed25519


# Adding your SSH key to the ssh-agent
eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

# Add your SSH key to your GitHub account
echo "Select and copy the following contents of the id_ed25519.pub file to your GitHub account!"
echo " "
cat ~/.ssh/id_ed25519.pub
