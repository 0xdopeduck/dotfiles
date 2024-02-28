# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

export PATH="$PATH:/opt/nvim-linux64/bin"
# End of lines configured by zsh-newuser-install
#
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit ice lucid wait'0'
zinit light-mode for \
    Aloxaf/fzf-tab \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust \
    zdharma-continuum/fast-syntax-highlighting \
    MichaelAquilina/zsh-autoswitch-virtualenv \
    zsh-users/zsh-autosuggestions \
    zsh-users/zsh-completions

### End of Zinit's installer chunk

export GENCOMPL_FPATH=$HOME/.zsh/complete
export CLICOLOR=1
export SHELL=`which zsh`
export EDITOR=`which nvim`
export PATH=/opt/nvim-linux64/bin:$HOME/.local/bin:$PATH
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


source $HOME/.alias
source $HOME/.config/zsh/key-bindings.zsh
eval "$(starship init zsh)"

### FZF Config
#zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
