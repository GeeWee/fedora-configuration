# This script configures system settings, gnome extensions etc.
# I just recorded the settings here for later

# removes background logo from enabled extensions
#dconf
#/org/gnome/shell/enabled-extensions
#  @as []

# Always launch new instance
: '
/org/gnome/shell/enabled-extensions
  ['launch-new-instance@gnome-shell-extensions.gcampax.github.com']
'

#
Add places
'places-menu@gnome-shell-extensions.gcampax.github.com']

# Overlay key for kinesis
/org/gnome/mutter/overlay-key
  'Super_R'

# Danish language
/org/gnome/desktop/input-sources/sources
  [('xkb', 'us'), ('xkb', 'dk+winkeys')]

echo "Set startup applications in gnome tweak tools (slack , spotify)"

/org/gnome/desktop/interface/clock-show-weekday
  true

/org/gnome/desktop/calendar/show-weekdate
  true

# Workspaces on all..!
/org/gnome/mutter/workspaces-only-on-primary
  false

echo "use gnome-extensions-sync to sync gnome extensions"


# Gnome shell extensions from website
https://github.com/albertlauncher/albert
https://github.com/KELiON/cerebro


# add workspace shortcuts
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['F3']"      ✔  08:23:08
 ~  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['F1']"  

# only switch on current workspace
gsettings set org.gnome.shell.app-switcher current-workspace-only true
