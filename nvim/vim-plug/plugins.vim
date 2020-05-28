" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Change dates fast
  Plug 'tpope/vim-speeddating'
  " Convert binary, hex, etc..
  Plug 'glts/vim-radical'
  " Files
  Plug 'tpope/vim-eunuch'
  " Repeat stuff
  Plug 'tpope/vim-repeat'
  " Surround
  Plug 'tpope/vim-surround'
  " Better Comments
  " Plug 'tpope/vim-commentary'
  " Have the file system follow you around
  Plug 'preservim/nerdcommenter'
  Plug 'airblade/vim-rooter'
  " auto set indent settings
  Plug 'tpope/vim-sleuth'
  if exists('g:vscode')
    " Easy motion for VSCode
    Plug 'asvetliakov/vim-easymotion'

  else
    " Text Navigation
    Plug 'justinmk/vim-sneak'
    "Plug 'unblevable/quick-scope'
    Plug 'junegunn/rainbow_parentheses.vim'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Add onedark
    Plug 'joshdick/onedark.vim'
    " Add Coc plugin
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Status Line
    Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    " Ranger
    Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim'
    " Terminal
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " Vista
    Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Zen mode
    Plug 'junegunn/goyo.vim'
    Plug 'metakirby5/codi.vim'
    Plug 'https://github.com/vimwiki/vimwiki.git'
endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
