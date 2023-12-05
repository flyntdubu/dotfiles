# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# something something needed if u use brew to install a theme ;)
fpath+=("$(brew --prefix)/share/zsh/site-functions")

# ignore oh_my_zsh theme since we're doing our own
ZSH_THEME=""

# hehe completion dots
COMPLETION_WAITING_DOTS="true"

# hehe date change
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom? uhhhh yes???
ZSH_CUSTOM=$DOTFILES

# plugins
plugins=(
  git
  brew
  common-aliases
  node
  npm
  rand-quote
  sudo
  yarn
  z
  colored-man-pages
  colorize
  cp
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# pure :3
autoload -U promptinit; promptinit
prompt pure

# User configuration

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# neovim
export EDITOR='nvim'

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

eval "$(pyenv virtualenv-init -)"
