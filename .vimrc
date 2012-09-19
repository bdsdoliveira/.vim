set number
set title
set ruler
set laststatus=2
set mousehide
"colorscheme slate
"set clipboard=unnamed
"set mouse=a
set timeoutlen=250
set autowrite
set wrap
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
set shiftwidth=2                "number of tabs when using smart indent
set expandtab
set smarttab
set backspace=indent,eol,start

set cursorline
hi CursorLine cterm=NONE ctermbg=black

au BufReadPost * if line ("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
