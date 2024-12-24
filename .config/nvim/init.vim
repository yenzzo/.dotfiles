" Maps
vnoremap <C-c> "+y
vnoremap <C-v> "+p

" vim-plug
call plug#begin()

" List your plugins here
Plug 'ellisonleao/gruvbox.nvim'

call plug#end()

" Gruvbox config
set background=dark " or light if you want light mode
colorscheme gruvbox

