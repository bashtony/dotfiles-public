set tabstop=2
set shiftwidth=2
set number

set statusline=%f
set statusline+=%=
set statusline+=%l
set statusline+=/
set statusline+=%L

nnoremap <Backspace> i

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1

set nocompatible

call plug#begin()
	Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
	Plug 'sheerun/vim-polyglot'
call plug#end()
