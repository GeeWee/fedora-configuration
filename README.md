# fedora-configuration
Configuration for setting up fedora

# Setup machine
Script steps:
- run `1_settings.sh` to fix keyboard settings etc. You might want to log in and out of gnome after this.
- run `2_enable.repositories.sh` to enable all the repositories
- run `3_packages.sh` to install dnf packages from packages.lst

- run `4_terminal.sh` to install zsh. DO NOT RUN AS ROOT!!! (It will copy .zsh into the root instead of the user folder). Run it twice to get all the plugins
- run `5_misc.sh` to do misc configuration and extra installation
- run `shell.sh` to copy over .zshrc to folder
- run `6_extensions.sh` to get info about which gnome extensions to install
- run `7_snaps.sh` to install all snaps
- run `8_jetbrains_toolbox.sh` to install all snaps

# More steps
- Make Teams, Slack and Spotify always start up on program start, and always be in workspace 3
- Synchronize firefox via the firefox sync account
- Login to your 1Password account with gustavwengel@gmail.com at reccoon.1password.com
- Go to leechblock extension and type "import from sync storage"
- Change 1Password shortcut to ALT+Q
- configure teams and high fidelity sink https://askubuntu.com/questions/1085480/bluetooth-headphones-switches-from-a2dp-sink-to-hsp-hfp-when-starting-voip-a
- Copy the bin folder of this repo into ~/bin (should be done auto now)
- Set startup applications via gnome tweak tools


# Things to try out sometime
try https://github.com/Peltoche/lsd
try ripgrep


# TODO list
- TODO document what to always open where via gnome tweak tools
- TODO figure out how to get the top bar in the bottom..!
- todo xmodmap?
- todo explain how to configure extensions
- todo rider?
