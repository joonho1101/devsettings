" Vundle
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
set nocompatible               " be iMproved
filetype off                   " required!

set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files

let mapleader = ','
let g:mapleader = ','

" enable syntax highlighting
syntax on

" enable plugins and indentation rules for file types

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github

" cool status bar
Bundle 'bling/vim-airline'

" git wrapper :Gdiff :Gstatus
Bundle 'tpope/vim-fugitive'

" hotkey based instant move <Leader><Leader>[movement]
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader>'

"Bundle 'tpope/vim-rails.git'

" vim-scripts repos
" Vim script library
Bundle 'L9'

"Bundle 'FuzzyFinder'

"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" type '_', '<C-y>,'
Bundle 'mattn/emmet-vim'

" close open html tags <C-_>
Bundle 'closetag.vim'

" MRU file list
Bundle 'mru.vim'

"Bundle 'AutoComplPop'

" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'

" Ack
Bundle 'ack.vim'

" Editor Config
Bundle 'editorconfig/editorconfig-vim'

Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

" UltiSnips
Bundle 'SirVer/ultisnips'
Bundle 'rstacruz/vim-ultisnips-css'

" faster surroundings manipulation like quotes
Bundle 'tpope/vim-surround'

" better file navigator
Bundle 'scrooloose/nerdtree'

" smart auto complete quotes, parethesis, brackets
"Bundle 'Raimondi/delimitMate'

" open files faster <C-p> <C-v>
Bundle 'kien/ctrlp.vim'

"Bundle 'ervandew/supertab'

"Bundle 'tomasr/molokai'

"Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" Solarized color scheme
Bundle 'altercation/vim-colors-solarized'


" better js syntax
"Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'

" jshint
"Bundle 'Shutnik/jshint2.vim'

" js beautifier
Bundle 'einars/js-beautify'
Bundle 'maksimr/vim-jsbeautify'

" json highlighter
Bundle 'elzr/vim-json'

" jst/ejs syntax highlighter
Bundle 'briancollins/vim-jst'

" stylus highlighter
Bundle 'wavded/vim-stylus'

" less highlighter
Bundle 'groenewege/vim-less'

" jade highlighter
Bundle 'digitaltoad/vim-jade'

" dart highlighter
Bundle 'dart-lang/dart-vim-plugin'

" js hint
Bundle 'scrooloose/syntastic'

" toggle location/quickfix list <Leader>q or <Leader>l
Bundle 'milkypostman/vim-togglelist'

" vim scala
Bundle 'derekwyatt/vim-scala'

let NERDTreeShowHidden=1

let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn|DS_STORE)|node_modules|out)$'

let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"

nnoremap <Leader><Space> :nohlsearch<CR>
nnoremap <Leader>e :e<Space>
nnoremap <Leader>a :Ack -i<Space>
nnoremap <Leader>s :UltiSnipsEdit<CR>
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>
nnoremap <Leader>w :w!<CR>
nnoremap <Leader>v <C-w>v<C-w>l
nnoremap <Leader>. <C-w>v<C-w>l:e ~/.vimrc<CR>

nnoremap <TAB> %
vnoremap <TAB> %

" Lint JavaScript files after reading it:
"let jshint2_read = 1
"
"" Lint JavaScript files after saving it:
"let jshint2_save = 1
"
"nnoremap <silent><F1> :JSHint<CR>
"inoremap <silent><F1> <C-O>:JSHint<CR>
"vnoremap <silent><F1> :JSHint<CR>
"cnoremap <F1> JSHint

map <F8> :call JsBeautify()<CR>
" or
autocmd FileType javascript noremap <buffer>  <F8> :call JsBeautify()<CR>
" for html
autocmd FileType html noremap <buffer> <F8> :call HtmlBeautify()<CR>
" for css or scss
autocmd FileType css noremap <buffer> <F8> :call CSSBeautify()<CR>

" syntastic
map <F9> :SyntasticToggleMode<CR>
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = { 'mode': 'active',
                          \ 'passive_filetypes': ['html', 'js'] }
" let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-", "<snap-content>"]

" toggling syntax
nmap <F7> :if exists("g:syntax_on") <Bar>
	\   syntax off <Bar>
	\ else <Bar>
	\   syntax enable <Bar>
	\ endif <CR>

" command redirect
command WQ wq
command Wq wq
command W w
command Q q
command E e

" Treat long lines as break lines
map j gj
map k gk

" JSLint related
nmap <Up> :cope<CR>
nmap <Down> :cclose<CR>
nmap <Right> :cnext<CR>
nmap <Left> :cprev<CR>

nmap <C-s> :w<CR>
nmap <C-z> ZZ<CR>

nmap <C-w>, <C-w><
nmap <C-w>. <C-w>>

" Smart way to move between windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

nmap <M-d> <C-w>v<C-w>l
nmap <D-d> <C-w>v<C-w>l

nnoremap Q :qa<CR>

" Insert mode navigation
:imap <C-h> <Left>
:imap <C-l> <Right>
:imap <C-e> <End>
:imap <C-a> <Home>
:inoremap jj <C-J>
:imap jk <Esc>

nnoremap / /\v
vnoremap / /\v

nnoremap ? ?\v
vnoremap ? ?\v

set wildmenu

" scroll offset to cursor
set scrolloff=5

" color on n-th column
set colorcolumn=80

" scroll fast
set ttyfast

" relative line numbers
set relativenumber

" substitutions globally on lines
set gdefault

" more useful backspace
set backspace=indent,eol,start 

" highlight search: highlight all matched characters
set hlsearch

" incremental search: real-time search as you type
set incsearch

" ignorecase for search
set ignorecase

" smartcase matching
set smartcase

" highlight matching brackets
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

set list listchars=eol:\ ,tab:\ \ ,trail:·,extends:>,precedes:<

"set cinoptions=>4,n-2,{2,^-2,:0,=2,g0,h2,t0,+2,(0,u0,w1,m1

" auto refresh if file is changed outside the vim
set autoread

" show ruler
set ruler

" Show mode
set showmode

" Show command in status line
set showcmd

" set command bar 2 lines high
set cmdheight=2

" set command line as 2 lines
set laststatus=2

" show line numbers on the left
set number

" set line number width
set numberwidth=5

" history buffer size
set history=10000

" dark background scheme
set background=dark
"let g:molokai_original = 1
colorscheme solarized
"highlight Normal ctermbg=Black guibg=Black

let g:solarized_contrast="high"
let g:solarized_visibility="normal"
let g:solarized_hitrail=1

" set encoding as unicode
set encoding=utf-8
set fileencoding=utf-8

" initial window height for gvim
" set lines=50

" initial window width for gvim
" set columns=160

" set font as Lucida Console with font size 9
"set guifont=Lucida_Console:h9:cANSI

" using Source Code Pro
set anti enc=utf-8
set guifont=Source\ Code\ Pro\:h12,Menlo:h12,Monaco:h12

" hide menubar for GUI
set guioptions-=m

" hide toolbar for GUI
set guioptions-=T

" hide right hand side vertical scroll for GUI
set guioptions-=r

" enable 256 colors
"set t_Co=256

" show characters for tab and trailing spaces
" set list listchars=tab:>-,trail:~,precedes:<,extends:>

" do not create backup files
set nobackup
set nowritebackup
set noswapfile

set noerrorbells
set novisualbell
set vb t_vb=

" hidden buffers
set hidden

" auto change current working directory
" set autochdir

" file format priorities
set fileformats=unix,dos,mac
set fileformat=unix

" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<CR>`z
nmap <M-k> mz:m-2<CR>`z
vmap <M-j> :m'>+<CR>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<CR>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

"highlight Search        ctermfg=Black ctermbg=LightBlue cterm=NONE gui=bold guifg=Black guibg=LightBlue

filetype off
filetype on
syntax on
filetype plugin indent on

" enable auto indentation
set autoindent

" enable smart indentation
set smartindent

" wrap lines
set wrap

" use spaces instead of tab
" "'expandtab' affects what happens when you press the <TAB> key.
" If 'expandtab' is set, pressing the <TAB> key will always insert 'softtabstop' amount of space characters.
" Otherwise, the amount of spaces inserted is minimized by using TAB characters.
"set expandtab

" tab size to 4 spaces
" changes the width of the TAB character, plain and simple.
set tabstop=4

" softtabstop affects what happens when you press the <TAB> or <BS> keys.
" Its default value is the same as the value of 'tabstop',
" but when using indentation without hard tabs or mixed indentation,
" you want to set it to the same value as 'shiftwidth'.
" If 'expandtab' is unset, and 'tabstop' is different from 'softtabstop',
" the <TAB> key will minimize the amount of spaces inserted by using multiples of TAB characters.
" For instance, if 'tabstop' is 8, and the amount of consecutive space inserted is 20,
" two TAB characters and four spaces will be used.
" set softtabstop=2

" 'smarttab' affects how <TAB> key presses are interpreted depending on where the cursor is.
" If 'smarttab' is on, a <TAB> key inserts indentation according to 'shiftwidth' at the beginning of the line,
" whereas 'tabstop' and 'softtabstop' are used elsewhere.
" There is seldom any need to set this option,
" unless it is necessary to use hard TAB characters in body text or code.
set smarttab

" tab size to 4 spaces
" 'shiftwidth' affects what happens when you press >>, << or ==. It also affects how automatic indentation works. (See below.)
set shiftwidth=4

" set autoindent
" set smartindent
" set expandtab
" set tabstop=4
" set softtabstop=2
" set smarttab
" set shiftwidth=4

" autocmd Filetype javascript setlocal tabstop=4 shiftwidth=4
autocmd Filetype javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype html setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype styl setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype stylus setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype jade setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
