# The following lines were added by compinstall
source $HOME/.zshenv
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit -d $HOME/.zcompdump

# Show hidden files in tab completion
_comp_options+=(globdots)

### FZF Completion Config
#zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'

PROMPT_EOL_MARK=""

HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

# Remove mode switching delay.
KEYTIMEOUT=5


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
# zinit wait lucid for MichaelAquilina/zsh-autoswitch-virtualenv
zinit light-mode for \
    Aloxaf/fzf-tab \
    sindresorhus/pure \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust \
    zdharma-continuum/fast-syntax-highlighting \
    zsh-users/zsh-autosuggestions \
    zsh-users/zsh-completions \
    MichaelAquilina/zsh-autoswitch-virtualenv 

### End of Zinit's installer chunk

# eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"

if [[ "$(uname)" == "Darwin" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv zsh)" 
fi
# export AUTOSWITCH_DEFAULT_PYTHON="/usr/bin/python3"

# opencode
export PATH=/Users/prat/.opencode/bin:$PATH
