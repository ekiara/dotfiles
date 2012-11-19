" .vimrc
" Author: Eric Kiara <eric@eric.co.ke>
" Source: http://github.com/ekiara/dotfiles/vimrc
"
" NOTE:   This .vimrc works with Vim 7.3 it is not fully compatible with 7.2


set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store 1000 commands in :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set encoding=utf-8


" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden


" ================ Wrap & linebreak =================
set nowrap              " Disable wrapping lines
set linebreak           " Automatically wrap lines


" ================ Syntax ===========================
syntax on
syntax enable


" ================ Indent, tabs & spaces ============
set autoindent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=2
set expandtab


filetype plugin on
filetype indent on


" ================ Colors ===========================
colorscheme slate


" ================ ColorColumn ======================
if exists("&colorcolumn")
    set colorcolumn=80
    highlight ColorColumn term=standout cterm=NONE ctermbg=0 gui=NONE guibg=black guifg=NONE
    autocmd VimEnter,Colorscheme * :highlight ColorColumn term=standout cterm=NONE ctermbg=0 gui=NONE guibg=black guifg=NONE
endif


" ================ CursorLine =======================
if exists("&cursorline")
    set cursorline
    highlight CursorLine term=standout cterm=NONE ctermbg=0 gui=NONE guibg=black guifg=NONE
    autocmd VimEnter,Colorscheme * :highlight CursorLine term=standout cterm=NONE ctermbg=0 gui=NONE guibg=black guifg=NONE
endif


" ================ Backup & swap files =============
set nobackup            " Disable backup files.
set noswapfile          " Disable recovery swapfiles.
set nowritebackup       " More of the same.


" ================ Persistent undo =================
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile


" ================ Statusline ======================
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [LINE=%04l]\ [COL=%04v]\ [%p%%]\ [LEN=%L]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ 
set laststatus=2        " Always show the status line.


" ================ Line numbers ====================
set number
if exists("&relativenumber")
    set relativenumber
endif


" ================ Search ===========================
set hlsearch           " Highlight searches.
set incsearch          " Do incremetal searches
set ignorecase         " Case insensitive search. Ignore case when searching.
set smartcase


" ================ Folds ============================
set foldmethod=indent
set foldnestmax=3
set foldcolumn=2
highlight FoldColumn term=standout ctermbg=0 guibg=black



" ================ Map leader and keybindings ======
let mapleader = ","

imap ,, <ESC>
imap ,; <ESC>
imap ,. <ESC>

nmap ,, <ESC>
nmap ,; <ESC>
nmap ,. <ESC>



" ================ Scrolling =======================
set scrolloff=8
set sidescrolloff=16
set sidescroll=1


" ================ Disable F1 key ==================
map  <F1> <Nop>
imap <F1> <Nop>
vmap <F1> <Nop>


" ================ Disable arrow keys ==============
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>


" ================ Completion =======================
set wildmode=list:longest
"enable ctrl-n and ctrl-p to scroll thru matches
set wildmenu
" Ignore these files/filetypes when tab completing
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif


" ================ Macros, functions, mapping ====


" ---------------------------------------------------------------------------
"  Strip all trailing whitespace in file
" ---------------------------------------------------------------------------
function! StripWhitespace ()
    exec ':%s/ \+$//gc'
endfunction
map ,s :call StripWhitespace ()<CR>


" TODO map automatic indenting
"vmap <C-]> ^i    <ESC>
"


" ===== Map full-colon to semi-colon =============
map ; :
noremap ;; ;


" ===== Quick edit .vimrc ========================
map <leader>sv :source $MYVIMRC<CR>
map <leader>ev :e $MYVIMRC<CR>


" Set current working directory to the directory of the file open in the buffer.
map <leader>cd :cd %:h<CR>:pwd<CR>
