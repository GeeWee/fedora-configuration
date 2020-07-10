# Install other packages not via dnf

# Make a snap symlink so it will work in fedora without selinux
# https://www.reddit.com/r/Fedora/comments/7x63ib/is_there_a_way_to_install_classic_confinement/
sudo ln -s /var/lib/snapd/snap /snap

# Enable snapd socket -> https://computingforgeeks.com/install-snapd-and-snap-applications-on-fedora/
sudo systemctl enable --now snapd.socket

#vscode
sudo snap install --classic code

# Docker
sudo grubby --update-kernel=ALL --args="systemd.unified_cgroup_hierarchy=0"
sudo firewall-cmd --permanent --zone=trusted --add-interface=docker0
sudo firewall-cmd --permanent --zone=FedoraWorkstation --add-masquerade

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


echo "add this to /etc/dnf/dnf.conf
max_parallel_downloads=10
keepcache=true
fastestmirror=true
"

echo " add this to /etc/sysctl.conf : fs.inotify.max_user_watches=1048576"

echo "Generating an ssh key"
ssh-keygen -t rsa -b 4096 -C "gustavwengel@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa


