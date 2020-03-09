# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

# Theme customization
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs time)

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  heroku
  django
  git
  node
  yarn
  docker
  z
  zsh-autosuggestions
  history-substring-search
  python
  colorize
  zsh-syntax-highlighting
  common-aliases
)

source $ZSH/oh-my-zsh.sh

# ssh - not sure what this does.
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# default system user, to remove "user@hostname" in the prompt
DEFAULT_USER=geewee

# zsh completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Bind keys for history auto-complete on arrow keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

#ALIASES
alias docker="sudo docker"
alias docker-compose="sudo docker-compose"
alias m="python ./manage.py"
alias python="python3"
alias work="cd programming/reccoon_monorepo/backend && pipenv shell"
alias workr="cd programming/reccoon_monorepo/web-client/"
alias mr='python ./manage.py runserver'
alias p='ptw -- -k '
alias ls='ls -a --color=auto'

# PATH
export PATH=$PATH:/home/geewee/.local/bin
export FONTAWESOME_NPM_TOKEN=6F134172-0C23-447A-8EFC-C0FF3520C3E1

function serveo {
  ssh -R geewee.serveo.net:80:localhost:${1:-3000} serveo.net
}

function pushall {
  # Don't fail push even if there's nothing to commit, that's why we use ; instead of &&
  git add . ; git commit -m "${1}" ; git push
}

export PATH=$PATH:/home/geewee/.local/bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Default editor
export EDITOR='nano'
export VISUAL='nano'