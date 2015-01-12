:syntax on                                               " syntax highlighing
filetype plugin indent on
filetype plugin on
filetype on                                             " try to detect filetypes
"autocmd filetype python set expandtab                                           " enter spaces when tab is pressed
"autocmd filetype python set tabstop=4                                          " use 4 spaces to represent tab
set expandtab                                           			" enter spaces when tab is pressed
set tabstop=4                                           		 	" use 4 spaces to represent tab
autocmd filetype python set softtabstop=4
autocmd filetype python set shiftwidth=4                                        " number of spaces to use for auto indent
set showcmd
set hls
autocmd fileType python set omnifunc=pythoncomplete#Complete
colorscheme inkpot
set nocompatible
set encoding=utf-8
set t_Co=256
set ls=2
nnoremap <F5> :set list! <CR>
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅,extends:# 
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friendly

"disable autoindent while pasting text by pressing F2
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"force yourself to stop using the arrow keys
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
