# Enables third party repositories

# rpmfusion
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# Chrome
dnf install fedora-workstation-repositories -y

dnf config-manager --set-enabled google-chrome

# Kitty
dnf copr enable oleastre/kitty-terminal -y

#zsh-completions
dnf config-manager --add-repo https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/Fedora_29/shells:zsh-users:zsh-completions.repo

# Yarn
curl -sL https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo

# Albert
sudo rpm --import \
  https://build.opensuse.org/projects/home:manuelschneid3r/public_key

#TODO MAYBE UPDATE FOR 30 ? https://software.opensuse.org/download.html?project=home:manuelschneid3r&package=albert
sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:manuelschneid3r/Fedora_29/home:manuelschneid3r.repo
dnf install albert