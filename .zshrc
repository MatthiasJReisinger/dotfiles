# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.poetry/bin:$(ruby -e 'puts Gem.user_dir')/bin:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/matthias/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="refined"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
)

source $ZSH/oh-my-zsh.sh

# User configuration

eval $(keychain --eval --quiet id_rsa id_ed25519)

source /usr/share/nvm/init-nvm.sh

export CC='clang'
export CXX='clang++'

# CPLEX (see https://coin-or.github.io/pulp/guides/how_to_configure_solvers.html#cplex)
export CPLEX_HOME="/opt/ibm/ILOG/CPLEX_Studio201/cplex"
export CPO_HOME="/opt/ibm/ILOG/CPLEX_Studio201/cpoptimizer"
export PATH="${PATH}:${CPLEX_HOME}/bin/x86-64_linux:${CPO_HOME}/bin/x86-64_linux"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${CPLEX_HOME}/bin/x86-64_linux:${CPO_HOME}/bin/x86-64_linux"
export PYTHONPATH="${PYTHONPATH}:/opt/ibm/ILOG/CPLEX_Studio201/cplex/python/3.8/x86-64_linux"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias g="gvim --remote-silent"

# Remove all docker contaienrs
alias drc='docker container rm $(docker container ls -a -q)'

# List all docker images
alias dli="docker images"

# Remove docker image
alias dri="docker image rm "

# Remove docker volume
alias drv="docker volume rm "

alias cb="cargo build"
alias cr="cargo run"
alias ct="cargo test"
alias cxb="cargo xbuild"
alias cxr="RUST_BACKTRACE=1 cargo xrun"
alias cxt="cargo xtest"

alias sp="sudo -E pacman"
alias gti="git"

# enable pyenv - this has to be placed "toward the end of" .zshrc (see https://github.com/pyenv/pyenv)
eval "$(pyenv init -)"
