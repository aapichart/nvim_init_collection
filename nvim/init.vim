source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/general/paths.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim 

" Source depending on if VSCode is our client
if exists('g:vscode')
    " VSCode extension
  source $HOME/.config/nvim/vscode/windows.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
else
  source $HOME/.config/nvim/themes/syntax.vim
  source $HOME/.config/nvim/themes/onedark.vim
  source $HOME/.config/nvim/themes/airline.vim
  source $HOME/.config/nvim/plug-config/rnvimr.vim
endif

" Experimental

" Codi
let g:codi#rightalign=0

