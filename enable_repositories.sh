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

# Add .net repositories
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo wget -q -O /etc/yum.repos.d/microsoft-prod.repo https://packages.microsoft.com/config/fedora/29/prod.repo
