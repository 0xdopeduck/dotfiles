
if [ -f "$HOME/.profile" ]; then
  . "$HOME/.profile"
fi

export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export PATH="$PATH:$HOME/.local/bin"
export PATH="/opt/homebrew/opt/openjdk@21/bin:$HOME/go/bin:$PATH"
export NOTE_DIR="~/Documents/Resources/Notes"
export CLICOLOR=1
export TERM=xterm-256color
export SHELL=`which zsh`
export EDITOR=`which nvim`
#(find ~/.local/bin -type d | paste -sd ':' -)"
PROMPT_EOL_MARK=""

#export TMUXIFIER_LAYOUT_PATH="$HOME/.config/tmux/tmux-layouts"

export FZF_DEFAULT_COMMAND='fd -L -H -t d -t l -t f -t x --hidden --exclude .git'
export FZF_DEFAULT_OPTS="--height 60%  --border"

# Key bindings - show hidden files
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd -L -H -t d --hidden --exclude .git'

export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"
export FZF_CTRL_T_OPTS="
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
export FZF_ALT_C_OPTS="--preview 'tree -C {}'"

source $HOME/.config/zsh/alias
source $HOME/.config/zsh/fzf-key-bindings.zsh

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
