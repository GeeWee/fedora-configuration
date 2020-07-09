# fedora-configuration
Configuration for setting up fedora

Steps:
- run `settings.sh` to fix keyboard settings etc. You might want to log in and out of gnome after this.
- run `enable.repositories.sh` to enable all of the repositories
- run `packages.sh` to install dnf packages from packages.lst
- run `terminal.sh` to install zsh. DO NOT RUN AS ROOT!!! (It will copy .zsh into the root instead of the user folder). You might need to run it twice.
- run `zsh.sh` to copy over .zshrc to folder
- run `install-extra.sh` to install extra stuff such as snap that's not from dnf

# todo xmodmap?
# todo docker firewall rules for moby
# todo explain how to configure extensions
# todo rider?
