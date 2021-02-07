# This script configures oh-my-zsh with the correct plugins

#oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Powerlevel 9k font
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#zsh as default
chsh -s $(which zsh)

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# z finder
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

echo "MAKE SURE TO COPY OVER THE .zshrc file"
