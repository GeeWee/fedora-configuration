# This script configures system settings

# Calendar settings
gsettings set org.gnome.desktop.calendar show-weekdate true
gsettings set org.gnome.desktop.interface clock-show-weekday true

# Set workspaces to switch on all screens
gsettings set org.gnome.mutter workspaces-only-on-primary false

# Set the correct keyboard layouts
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'dk+winkeys')]"

# Add Kinesis left windows key as overlay key
gsettings set org.gnome.mutter overlay-key 'Super_R'

# add workspace shortcuts
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['F3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['F1']"

# only switch on current workspace
gsettings set org.gnome.shell.app-switcher current-workspace-only true

# 3 static workspaces
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 3

# Switch windows not applications
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<ALT>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]" 

#Prt Screen takes snip. Requires restart to take effect.
gsettings set org.gnome.settings-daemon.plugins.media-keys area-screenshot "['Print']"
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot "['<Shift>Print']"
