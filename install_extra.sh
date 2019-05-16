
# Install other packages

#vscode
sudo snap install --classic code

# Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Add user to docker group
sudo usermod -aG docker your-user

# Snap
snap install spotify

#Slack
snap install slack

#oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"