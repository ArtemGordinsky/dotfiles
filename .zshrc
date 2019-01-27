# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/artemgordinsky/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"
HISTSIZE=1000000  # how many lines of history to keep in memory
SAVEHIST=1000000  # how many lines to keep in the history file

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git python pip brew virtualenv
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Making an alias for the Sublime Text 3 application
alias subl='open -a "Sublime Text"'
alias suchl='3dhubs changelog service-supply'
alias auh='alembic upgrade head'

alias edithosts="subl /private/etc/hosts"

# Docker stuff
alias dcup="docker-compose up -d"
alias dcdown="docker-compose stop"

#alias ll='ls -alG'
alias ll='exa -bghHliS'

alias fr='redis-cli flushall'

alias brew_nginx_log='cd /usr/local/var/log/nginx'
alias restart_nginx='sudo brew services restart nginx'
alias bs='brew services'
alias fucking_rabbit='brew services restart rabbitmq'

alias derpal='cd ~/Developer/Sites/3dhubs.dev/web'
alias derpl='drush core-cli'
alias supply='cd /Users/artemgordinsky/Developer/Sites/service-supply && source /Users/artemgordinsky/Developer/Sites/service-supply/env/bin/activate'
alias metal='cd /Users/artemgordinsky/Developer/Sites/service-metal && source ./env/bin/activate'

# Drupal shit
alias fd="drush cc all"
alias rd="drush hubs3d-build"
alias drf="cd /Users/artemgordinsky/Developer/Sites/3dhubs.dev/frontend && yarn install --pure-lockfile && npm rebuild node-sass && gulp build && cd -"
alias drc="cd /Users/artemgordinsky/Developer/Sites/3dhubs.dev/web/sites/all/libraries"

# Fix homebrew
homebrew=/usr/local/bin:/usr/local/sbin
export PATH=$homebrew:$PATH

# Add Composer to global path
export PATH="$PATH:~/.composer/vendor/bin"
export PATH=/Users/artemgordinsky/.local/bin:$PATH
alias ci="composer install"
alias cio="composer install -o"

# Setting for the new UTF-8 terminal support
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
alias 3dhubs='/Users/artemgordinsky/.local/venvs/3dhubs-v2/.venv/bin/3dhubs'

alias t="trans"
alias editzsh="vim /Users/artemgordinsky/.zshrc"
alias reloadzsh="source /Users/artemgordinsky/.zshrc"
alias gbc="git branch | grep '^\*' | cut -d' ' -f2 | pbcopy"
alias gitcleanup="git-delete-squashed"
alias std="sh /Users/artemgordinsky/Developer/Python/prepare_supply_test_db.sh"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

export PATH="$HOME/.cargo/bin:$PATH"

eval "$(pyenv init -)"

# Replaces system sed with gnu-sed installed through brew
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
