# This installs all the packages from the packages.lst list

# Snippet from https://unix.stackexchange.com/questions/82880/how-to-replicate-installed-package-selection-from-one-fedora-instance-to-another
# Install packages from dnf
# sudo < packages.lst xargs dnf -y install
dnf install -y --setopt=strict=0 $(cat packages.lst)
