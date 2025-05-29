 set tabstop=2
 set shiftwidth=2
 set number
 set cursorline
 set noshowmode
 
 nnoremap <Backspace> i
 
 colorscheme retrobox
 set background=dark
 
 let g:airline_theme='minimalist'
 let g:airline_powerline_fonts = 1
 
 call plug#begin()
   Plug 'sheerun/vim-polyglot'
   Plug 'vim-airline/vim-airline'
   Plug 'vim-airline/vim-airline-themes'
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
 call plug#end()
 
 " Abaixo configurações para coc.nvim
 autocmd FileType json syntax match Comment +\/\/.\+$+
 
 inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
 function! CheckBackspace() abort
 let col = col('.') - 1
 return !col || getline('.')[col - 1]  =~# '\s'
 endfunction
 inoremap <silent><expr> <Tab>
 \ coc#pum#visible() ? coc#pum#next(1) :
 \ CheckBackspace() ? "\<Tab>" :
 \ coc#refresh()

autocmd VimEnter * PlugInstall --sync
