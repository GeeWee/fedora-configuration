# fedora-configuration
Configuration for setting up fedora

# Setup machine
Script steps:
- run `settings.sh` to fix keyboard settings etc. You might want to log in and out of gnome after this.
- run `enable.repositories.sh` to enable all of the repositories
- run `packages.sh` to install dnf packages from packages.lst
- run `terminal.sh` to install zsh. DO NOT RUN AS ROOT!!! (It will copy .zsh into the root instead of the user folder). You might need to run it twice.
- run `zsh.sh` to copy over .zshrc to folder
- run `misc.sh` to do misc configuration and extra installation


# More steps
- Synchronize firefox via the firefox sync account
- Login to your 1Password account with gustavwengel@gmail.com at reccoon.1password.com


# todo xmodmap?
# todo explain how to configure extensions
# todo rider?
