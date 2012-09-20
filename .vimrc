set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin indent on

set wildmenu
set wildignore=*.aux,*.log,*.swp
set history=4096
set undolevels=4096

set number
set title
set ruler
set laststatus=2
set mousehide
"set clipboard=unnamed,unnamedplus,autoselect
"set mouse=a
set timeoutlen=400
set autowrite
set wrap
set scrolloff=10
set visualbell
set shortmess=aTO
set showmatch
"set matchpairs
"set list
"set listchars=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set hlsearch
set incsearch
set ignorecase
set smartcase
set autoindent
set copyindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set smarttab
set backspace=indent,eol,start

set pastetoggle=<F2>

set statusline=%-10.3n\                      " buffer number  
set statusline+=%f\                          " filename   
set statusline+=%h%m%r%w                     " status flags  
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
set statusline+=%=                           " right align remainder  
set statusline+=0x%-8B                       " character value  
set statusline+=%-14(%l,%c%V%)               " line, character  
set statusline+=%<%P                         " file position 

"colorscheme slate

set cursorline
hi CursorLine cterm=NONE ctermbg=black

au BufReadPost * if line ("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

call pathogen#infect()
call pathogen#helptags()

if match(system('lsb_release -is'), "Ubuntu") != -1
  let g:ackprg="ack-grep -H --column"
endif

let NERDTreeShowHidden=1
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd vimenter * wincmd l
noremap <C-\> :NERDTreeToggle<CR><C-w><C-w>

let g:EasyMotion_leader_key = "<leader>"

" Surround plugin customization (to check ASCII character do :echo char2nr("x"))
autocmd FileType tex let b:surround_105 = "\\textit{\r\}"
autocmd FileType tex let b:surround_98 = "\\textbf{\r\}"
autocmd FileType tex let b:surround_115 = "\\textsc{\r\}"

"let mapleader = ","
nnoremap ; :
cnoremap w!! w !sudo tee % >/dev/null
nnoremap <C-p> :set invpaste paste?<CR>
