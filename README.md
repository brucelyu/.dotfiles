# .dotfiles
 Dotfiles for configurations of Mac and Ubuntu

### Setting up a Mac
1. [Generate a new public and private SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) by running:

   ```zsh
   curl https://raw.githubusercontent.com/brucelyu/.dotfiles/main/ssh-key-git.sh | sh -s "<your-email-address>"
   ```
   
2. Clone this repo to `~/.dotfiles` with:

    ```zsh
    git clone --recursive git@github.com:brucelyu/.dotfiles.git ~/.dotfiles
    ```

3. Run the installation with:

    ```zsh
    ~/.dotfiles/fresh.sh
    ```
