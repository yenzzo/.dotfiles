" Set leader key to comma
let mapleader = ","

" Maps
vnoremap <leader>y "+y
vnoremap <leader>p "+p
map k <Down>
map j <Up>
map z <Left>
map x <Right>

" vim-plug
call plug#begin()

" List your plugins here
Plug 'ellisonleao/gruvbox.nvim'
Plug 'rose-pine/neovim'

call plug#end()

" Gruvbox config
set background=dark " or light if you want light mode
colorscheme rose-pine 

set clipboard=unnamed
