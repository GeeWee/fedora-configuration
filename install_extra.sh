# Install other packages not via dnf

# Make a snap symlink so it will work in fedora without selinux
# https://www.reddit.com/r/Fedora/comments/7x63ib/is_there_a_way_to_install_classic_confinement/
sudo ln -s /var/lib/snapd/snap /snap

# Enable snapd socket -> https://computingforgeeks.com/install-snapd-and-snap-applications-on-fedora/
sudo systemctl enable --now snapd.socket

#vscode
sudo snap install --classic code

# Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Add user to docker group
sudo groupadd docker
sudo usermod -aG docker geewee

# Snap
snap install spotify

#Slack
snap install slack --classic

#Blacklist nouveau MAYBE
# echo "blacklist nouveau" >> /etc/modprobe.d/blacklist.conf
# dnf remove xorg-x11-drv-nouveau
# THIS IS WHAT WORKED LAST
systemctl disable nvidia-fallback.service
# SEE https://askubuntu.com/questions/1043638/nouveau-blacklisted-but-loaded

