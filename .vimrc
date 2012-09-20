set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin indent on

set number
set title
set ruler
set laststatus=2
set mousehide
"colorscheme slate
"set clipboard=unnamed
"set mouse=a
set timeoutlen=100
set autowrite
set wrap
set scrolloff=10
set visualbell
set shortmess=aTO
set showmatch
"set matchpairs
"set listchars=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set hlsearch
set incsearch
set history=4096
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set backspace=indent,eol,start

set statusline=%-10.3n\                      " buffer number  
set statusline+=%f\                          " filename   
set statusline+=%h%m%r%w                     " status flags  
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
set statusline+=%=                           " right align remainder  
set statusline+=0x%-8B                       " character value  
set statusline+=%-14(%l,%c%V%)               " line, character  
set statusline+=%<%P                         " file position 

set cursorline
hi CursorLine cterm=NONE ctermbg=black

au BufReadPost * if line ("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

call pathogen#infect()

if system("lsb_release -is") == "Ubuntu"
  let g:ackprg="ack-grep -H --nocolor --nogroup --column"
endif

let NERDTreeShowHidden=1
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd vimenter * wincmd l

map <C-n> :NERDTreeToggle<CR>wincmd l<CR>

"nnoremap <F2>:set invpaste paste?<CR>
"set pastetoggle=<F2>
"set showmode
