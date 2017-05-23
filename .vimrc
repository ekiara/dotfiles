set backspace=indent,eol,start      " Allow backspace in insert mode
set history=8192                    " Store 1000 commands in :cmdline history
set showcmd                         " Show incomplete cmds down the bottom
set showmode                        " Show current mode down the bottom
set gcr=a:blinkon0                  " Disable cursor blink
set visualbell                      " No sounds
set autoread                        " Reload files changed outside vim
set encoding=utf-8

set hidden                          " Hidden buffers

set nowrap                          " Disable wrapping lines
set linebreak                       " Automatically wrap lines
set textwidth=78                    " AutoWrap text at column 78
set nopaste

" Indentation settings, and convert tabs to spaces.
set autoindent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

" Undo levels and backup.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

set number
if exists("&relativenumber")
    set relativenumber
endif

set hlsearch
set incsearch
set ignorecase
set smartcase

set foldmethod=indent
set foldnestmax=3
set foldcolumn=2

set scrolloff=8
set sidescrolloff=16
set sidescroll=1

let mapleader = ","

inoremap jj <Esc>
inoremap jk <Esc>
inoremap <leader>x <Esc>
inoremap jkl; <Esc>

map  <leader>fc zM
imap <leader>fc zM
nmap <leader>fc zM
map  <leader>fo zR
imap <leader>fo zR
nmap <leader>fo zR

map ; :
noremap ;; ;

map <leader>sv :source $MYVIMRC<CR>
map <leader>ev :e $MYVIMRC<CR>
map <leader>cd :cd %:h<CR>:pwd<CR>

map  <F1> <Nop>
imap <F1> <Nop>
vmap <F1> <Nop>

" Disable arrow keys
noremap <up> <nop>                  
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

map  <leader>; <ESC>
imap <leader>; <ESC>
imap ;; <ESC>
imap ,, <ESC>

map <leader>sp :set paste<CR>
nmap <leader>sp :set paste<CR>

set wildmode=list:longest

set wildmenu                        " Enable ctrl-n and ctrl-p to scroll thru matches

set wildignore=*.o,*.obj,*~         " Ignore these files/filetypes when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

autocmd InsertEnter,WinLeave * :set number
autocmd InsertLeave,WinEnter * :set relativenumber

" Navigating buffers
nnoremap <Leader>b :buffers<CR>:buffer<Space>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>

" Tagbar settings, you need to install this plugin
map  <Leader>t :TagbarToggle<CR>
imap <Leader>t :TagbarToggle<CR>
nmap <Leader>t :TagbarToggle<CR>
vmap <Leader>t :TagbarToggle<CR>

" Disable gui controls
set guioptions-=m
set guioptions-=T
set guioptions-=r

nnoremap <Leader>c :call paste#Paste()<CR>

set pastetoggle=<leader>z

" Pathogen settings. Ensure that you've setup pathogen.
filetype off
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on

syntax enable

" Status line
set statusline=%F%m%r%h%w\ [%p%%,%04l\/%04L]\ [COL=%04v]\ [FORMAT=%{&ff},%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]

" Always show the status line.
set laststatus=2

if exists("&colorcolumn")
    set colorcolumn=80
endif

if exists("&cursorline")
    set cursorline
endif

colorscheme iceberg                 " Colorscheme, ensure that this color scheme is installed.
set background=dark                 " Dark background.
set guifont=Ubuntu\ Mono\ 12        " Fone, ensure that this font is on your machine.
