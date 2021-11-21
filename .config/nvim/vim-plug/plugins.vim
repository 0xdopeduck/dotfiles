" auto-install vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/site/autoload/plugged')

    "Old
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'easymotion/vim-easymotion'
    Plug 'norcalli/nvim-colorizer.lua'

    "New - read docs
    Plug 'famiu/feline.nvim'
    Plug 'windwp/nvim-autopairs'
    Plug 'lukas-reineke/indent-blankline.nvim'

    "Colors
    Plug 'NLKNguyen/papercolor-theme'

    "Not implemented
    " Plug 'L3MON4D3/LuaSnip'
    " Plug 'hrsh7th/nvim-cmp'
    " Plug 'nvim-treesitter/nvim-treesitter'
    " Plug 'neovim/nvim-lspconfig'
    " Plug 'nvim-telescope/telescope.nvim'
    " Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

call plug#end()


source $HOME/.config/nvim/vim-plug/feline.vim
source $HOME/.config/nvim/vim-plug/nvim-autopairs.vim
source $HOME/.config/nvim/vim-plug/indent-blankline.vim
source $HOME/.config/nvim/vim-plug/vim-easymotion.vim
source $HOME/.config/nvim/vim-plug/colorscheme.vim
source $HOME/.config/nvim/vim-plug/nvim-colorizer.vim
" source $HOME/.config/nvim/vim-plug/nvim-cmp.vim
