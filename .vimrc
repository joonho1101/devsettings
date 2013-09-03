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

" enable syntax highlighting
syntax on

" enable plugins and indentation rules for file types
filetype plugin indent on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'

 " vim-scripts repos
Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'ZenCoding'
Bundle 'closetag.vim'
Bundle 'mru.vim'
Bundle 'AutoComplPop'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'

Bundle 'editorconfig/editorconfig-vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'wincent/Command-T'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'elzr/vim-json'
Bundle 'einars/js-beautify'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'Raimondi/delimitMate'
Bundle 'kien/ctrlp.vim'
"Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'groenewege/vim-less'
"Bundle 'tomasr/molokai'
"Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Bundle 'altercation/vim-colors-solarized'
Bundle 'pangloss/vim-javascript'
Bundle 'briancollins/vim-jst'

let NERDTreeShowHidden=1

map <F8> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <F8> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <F8> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <F8> :call CSSBeautify()<cr>

" syntastic
map <F9> :SyntasticToggleMode<cr>
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = { 'mode': 'active' }
                          "\ 'active_filetypes': ['ruby', 'php'],
                          "\ 'passive_filetypes': ['puppet'] }

" toggling syntax
:nmap <F7> :if exists("g:syntax_on") <Bar>
	\   syntax off <Bar>
	\ else <Bar>
	\   syntax enable <Bar>
	\ endif <CR>

" command redirect
:command WQ wq
:command Wq wq
:command W w
:command Q q
:command E e

" JSLint related
:nmap <Up> :cope<CR>
:nmap <Down> :cclose<CR>
:nmap <Right> :cnext<CR>
:nmap <Left> :cprev<CR>
:nmap <C-s> :w<CR>

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

" tab size to 4 spaces
set tabstop=4

" tab size to 4 spaces
set shiftwidth=4

" enable auto indentation
set autoindent

" enable smart indentation
set smartindent

" auto refresh if file is changed outside the vim
set autoread

" show ruler
set ruler

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
highlight Normal ctermbg=Black guibg=Black

" set encoding as unicode
set encoding=utf8

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

set noerrorbells novisualbell
set vb t_vb=

" hidden buffers
set hidden

" file format priorities
set fileformats=unix,dos,mac

"highlight Search        ctermfg=Black ctermbg=LightBlue cterm=NONE gui=bold guifg=Black guibg=LightBlue
