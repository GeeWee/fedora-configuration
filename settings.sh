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

# Gnome shell extensions from website
https://extensions.gnome.org/extension/28/gtile/
https://extensions.gnome.org/extension/1286/tilingnome/
https://extensions.gnome.org/extension/294/shellshape/
https://extensions.gnome.org/extension/779/clipboard-indicator/
https://extensions.gnome.org/extension/442/drop-down-terminal/
https://extensions.gnome.org/extension/959/disable-workspace-switcher-popup/
https://extensions.gnome.org/extension/690/easyscreencast/
https://extensions.gnome.org/extension/885/dynamic-top-bar/
https://extensions.gnome.org/extension/427/workspaces-to-dock/
https://micheleg.github.io/dash-to-dock/
https://github.com/JasonLG1979/gnome-shell-extensions-mediaplayer/
https://github.com/petres/gnome-shell-extension-extensions
https://extensions.gnome.org/extension/16/auto-move-windows/
https://extensions.gnome.org/extension/358/activities-configurator/
https://github.com/albertlauncher/albert
https://github.com/KELiON/cerebro