# Enables third party repositories
# TODO this could probably automatically synchronize repos from /etc/yum.repos.d/

sudo dnf install -y dnf-plugins-core # Might be needed for the --add-repo command

FEDORA_VERSION=$(rpm -E %fedora)

# rpmfusions
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-"${FEDORA_VERSION}".noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-${FEDORA_VERSION}.noarch.rpm -y

# Chrome, Steam and graphic drivers. See https://fedoraproject.org/wiki/Workstation/Third_Party_Software_Repositories
sudo dnf install fedora-workstation-repositories -y

sudo dnf config-manager --set-enabled google-chrome

# Kitty
sudo dnf copr enable oleastre/kitty-terminal -y

#zsh-completions
sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/Fedora_29/shells:zsh-users:zsh-completions.repo

# Yarn
sudo curl -sL https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo

# Add git lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.rpm.sh | sudo bash

# Github cli
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo

# Terraform
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo

# K8s
cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

# ----------------------------- MICROSOFT THINGS ------------------------------------
# Microsoft key
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

# Add .net repositories
sudo wget -q -O /etc/yum.repos.d/microsoft-prod.repo https://packages.microsoft.com/config/fedora/"${FEDORA_VERSION}"/prod.repo

# Azure cli
sudo sh -c 'echo -e "[azure-cli]
name=Azure CLI
baseurl=https://packages.microsoft.com/yumrepos/azure-cli
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/azure-cli.repo'

# VSCode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# Teams
sudo sh -c 'echo -e "[teams]\nname=teams\nbaseurl=https://packages.microsoft.com/yumrepos/ms-teams\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/teams.repo'
