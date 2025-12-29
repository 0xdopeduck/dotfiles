
if [ -f "$HOME/.profile" ]; then
  . "$HOME/.profile"
fi

export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
#export PATH="$PATH$:$HOME/go/bin:$HOME/.local/bin:$HOME/.local/bin/nvim-linux64/bin"
#export CLICOLOR=1
#export SHELL=`which zsh`
#export EDITOR=`which nvim`
#(find ~/.local/bin -type d | paste -sd ':' -)"
PROMPT_EOL_MARK=""

#export TMUXIFIER_LAYOUT_PATH="$HOME/.config/tmux/tmux-layouts"

export FZF_DEFAULT_COMMAND='fdfind -L -H -t d -t l'
export FZF_DEFAULT_OPTS="--height 60%  --border"
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
