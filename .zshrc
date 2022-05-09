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

# General
alias ls="br -sdp" # Use broot to ls
alias work="cd ~/programming/OAI/"
alias open="xdg-open"

# C #
#alias dw='dotnet watch'
#alias dt='dotnet test'
#alias dwt='dotnet watch test'
#alias dwtf='dotnet watch test --filter'
#alias dr='dotnet run'
#alias dwr='dotnet watch run'
#alias d="dotnet"

#Azure functions
#alias funcwatch='find . -regextype posix-egrep -regex ".*\.(cs)$" -and -not -regex ".*/(bin|obj)/.*"  | entr -rcd func start'


function cliptofile {
  local uuid="screenshot_$(uuidgen).png";
  local defaultPath="${HOME}/Pictures/${uuid}";
  local filePath=${1:-$defaultPath};
  echo "Writing clipboard to $filePath";
  xclip -selection clipboard -t image/png -o > $filePath;
}

# kubernetes
alias k="kubectl"

# python
alias m="python ./manage.py"
alias python="python3"
alias mr='python ./manage.py runserver'
alias p='ptw -- -k '

# Kitty ssh
alias ssh="kitty +kitten ssh"

# cargo doesn't need correcting
alias cargo="nocorrect cargo"

# PATH
export PATH=$PATH:/home/geewee/.local/bin

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

# fix dotnet issue https://github.com/dotnet/sdk/issues/12359
#export DOTNET_ROOT=$(dirname $(realpath $(which dotnet)))
#export PATH="$PATH:$HOME/.dotnet/tools"

# Default editor
export EDITOR='nano'
export VISUAL='nano'

# Terraform autocomplete
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

# Do not autocorrect .files
# see https://unix.stackexchange.com/questions/422443/stop-zsh-from-trying-to-correct-ssh-to-ssh-as-an-argument
export CORRECT_IGNORE_FILE='.*'

# Source broot to allow for broot/ls
source /home/geewee/.config/broot/launcher/bash/br

# Cargo aliases
#alias cargo-validate='cargo fix --allow-dirty --allow-staged && cargo fmt --all && cargo check && cargo clippy --workspace --fix --allow-dirty --allow-staged && cargo clippy --workspace && cargo unit && sh ./integration-tests/run-tests.sh'
alias cargo-validate='cargo clippy --workspace --fix --allow-dirty --allow-staged --tests && cargo fmt --all && cargo clippy --workspace --tests -- -D warnings && cargo nunit && sh ./integration-tests/run-tests.sh'
alias cv='cargo-validate'
alias cgq="cd ./edge-api/src/queries && sh ./generate-graphql.sh"

fastly-watch() {
  find . -name "*.rs" -not -path "*./target*" | entr -r -s '(cd ./edge-api && fastly compute serve)'
}
fw() {
  find . -name "*.rs" -not -path "*./target*" | entr -r -s '(cd ./edge-api && fastly compute serve)'
}

portkill() {
  lsof -ti "tcp:$1" | xargs kill
}
