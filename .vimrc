""""""""""""""""""""""""""""""""""""""""""""""""""
" Anna Kallsgard's vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""


" Plugins (using Vundle)
""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle setup
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle (required)
Plugin 'gmarik/Vundle.vim'


" Plugin list (GitHub repos)
""""""""""""""""""""""""""""""
"" NERDTree - Filesystem tree
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jistr/vim-nerdtree-tabs'

"" Airline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"" Ultisnips + Default snippets for UltiSnips/SnipMate
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" All plugins must be added before the following line
call vundle#end()

""""""""""""""""""""""""""""""
"""" End of Vundle setup """"
""""""""""""""""""""""""""""""


" General settings
""""""""""""""""""""""""""""""""""""""""""""""""""
set showcmd             " Show command in bottom bar
set laststatus=2        " Display last status line always
set wildmenu            " To switch between files

" Set tabs
set tabstop=4           " Number of visual spaces per TAB
set softtabstop=4       " Number of spaces in TAB when editing

" Set relative  and absolute line numbering at current line
set relativenumber
set number

" Search options
set ignorecase
set smartcase
set incsearch           " Search as characters are entered
set hlsearch            " Highlight matches

" Enable UTF-8 encoding
set encoding=utf-8

" Keep a backup file
set backup

" Always show cursor position
set ruler

" Number of command lines kept in history
set history=50

" Display incomplete commands
set showcmd

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Enable mouse support if available
if has('mouse')
	set mouse=a
endif

""" To save with ctrl+s in vim """
:nmap <c-s> :w<CR>
:imap <c-s> <ESC>:w<CR>a

""" For vim + tmux = sant """
"nnoremap <c-j> <c-w>j
"nnoremap <c-k> <c-w>k
"nnoremap <c-h> <c-w>h
"nnoremap <c-l> <c-w>l




" Color settings
""""""""""""""""""""""""""""""""""""""""""""""""""
" Tell vim that gnome-terminal has 256 colors
"if $COLORTERM == 'gnome-terminal'
"set t_Co=256
"endif

" Highlightng
syntax enable
set showmatch           " Highlight matching ({[]})
set cursorline          " Highlight current line

" Color scheme
set background=dark
colorscheme luna-term   "color scheme, want koehler on black, badwolf

" If the terminal emulator does not have the custom solarized palette
" use degraded 256 colorscheme. Must be before 'colorscheme sol...'
"let g:solarized_termcolors=256
"colorscheme solarized

" Always highlight the 80th column
set colorcolumn=80



" NerdTreeSetup 
""""""""""""""""""""""""""""""""""""""""""""""""""
" Add shortcut key tp nerd Tree
noremap <F9> : NERDTreeToggle<CR>

" Auto open (if no file specified)
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Auto close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree git plugin settings
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" Ignore backup files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree



""""" NERDCommenter """""
"INSERTED


" UltiSnips setup
""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
"let g:UltiSnipsExpandTrigger="<c-j>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsListSnippets="<F2>"

" Adding a directory to find and save personal snippets, respectively
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsSnippetDir=["UltiSnips"]


" Airline
""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:airline_theme = 'luna'
let g:airline_powerline_fonts = 1

" Automatically display all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1"



" Custom commands
""""""""""""""""""""""""""""""""""""""""""""""""""
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
	command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis \ | wincmd p | diffthis
endif
