"-------------------------------------------------------------------------------
"
" .vimrc
"
" The MIT License (MIT)

" Copyright (c) 2014 Joon Ho Cho <joonho1101@gmail.com>

" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:

" The above copyright notice and this permission notice shall be included in all
" copies or substantial portions of the Software.

" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.
"
"-------------------------------------------------------------------------------


" Be iMproved
set nocompatible

" Required for Vundle
filetype off

" Enable per-directory .vimrc files
set exrc

" Disable unsafe commands in local .vimrc files
set secure

" Map , as <Leader>
let mapleader = ','
let g:mapleader = ','

" Enable syntax highlighting
syntax on

"-------------------------------------------------------------------------------
" Vundle Plugins
"-------------------------------------------------------------------------------

" Vundle, the plug-in manager for Vim
" https://github.com/gmarik/Vundle.vim
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Lean & mean status/tabline for vim that's light as air
" https://github.com/bling/vim-airline
Bundle 'bling/vim-airline'

" A Git wrapper so awesome, it should be illegal
" https://github.com/tpope/vim-fugitive
Bundle 'tpope/vim-fugitive'

" Vim motions on speed!
" https://github.com/Lokaltog/vim-easymotion
Bundle 'Lokaltog/vim-easymotion'

" l9 is a Vim-script library, which provides some utility functions and commands for programming in Vim
" http://www.vim.org/scripts/script.php?script_id=3252
Bundle 'L9'

" emmet for vim
" https://github.com/mattn/emmet-vim
Bundle 'mattn/emmet-vim'

" Functions and mappings to close open HTML/XML tags
" http://www.vim.org/scripts/script.php?script_id=13
Bundle 'closetag.vim'

" Most Recently Used (MRU) Vim Plugin
" https://github.com/yegappan/mru
Bundle 'mru.vim'

" Vim plugin for the Perl module / CLI script 'ack'
" https://github.com/mileszs/ack.vim
Bundle 'ack.vim'

" EditorConfig plugin for Vim
" https://github.com/editorconfig/editorconfig-vim
Bundle 'editorconfig/editorconfig-vim'

" vim: interpret a file by function and cache file automatically
" https://github.com/marcweber/vim-addon-mw-utils
Bundle 'MarcWeber/vim-addon-mw-utils'

" Some utility functions for VIM
" https://github.com/tomtom/tlib_vim
Bundle 'tomtom/tlib_vim'

" UltiSnips - The ultimate snippet solution for Vim
" https://github.com/SirVer/ultisnips
Bundle 'SirVer/ultisnips'

" Write CSS in VIM faster
" https://github.com/rstacruz/vim-ultisnips-css
Bundle 'rstacruz/vim-ultisnips-css'

" surround.vim: quoting/parenthesizing made simple
" https://github.com/tpope/vim-surround
Bundle 'tpope/vim-surround'

" A tree explorer plugin for vim
" https://github.com/scrooloose/nerdtree
Bundle 'scrooloose/nerdtree'

" Fuzzy file, buffer, mru, tag, etc finder
" https://github.com/kien/ctrlp.vim
Bundle 'kien/ctrlp.vim'

" Precision colorscheme for the vim text editor
" https://github.com/altercation/vim-colors-solarized
Bundle 'altercation/vim-colors-solarized'

" Enhanced javascript syntax file for Vim
" https://github.com/jelera/vim-javascript-syntax
Bundle 'jelera/vim-javascript-syntax'

" Vim plugin which formated javascript files by js-beautify
" https://github.com/maksimr/vim-jsbeautify
Bundle 'einars/js-beautify'
Bundle 'maksimr/vim-jsbeautify'

" A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing
" https://github.com/elzr/vim-json
Bundle 'elzr/vim-json'

" A vim plugin for highlighting and indenting JST/EJS syntax
" https://github.com/briancollins/vim-jst
Bundle 'briancollins/vim-jst'

" Syntax Highlighting for Stylus
" https://github.com/wavded/vim-stylus
Bundle 'wavded/vim-stylus'

" Vim syntax for LESS
" https://github.com/groenewege/vim-less
Bundle 'groenewege/vim-less'

" Vim Jade template engine syntax highlighting and indention
" https://github.com/digitaltoad/vim-jade
Bundle 'digitaltoad/vim-jade'

" Syntax checking hacks for vim
" https://github.com/scrooloose/syntastic
Bundle 'scrooloose/syntastic'


"-------------------------------------------------------------------------------
" Vundle Plugin Configurations
"-------------------------------------------------------------------------------

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" CtrlP ignore patterns
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn|DS_STORE)|node_modules|out)$'

" Map <TAB> as trigger for UltiSnips
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"

" Config Syntastic
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['html', 'js'] }
" let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-", "<snap-content>"]


"-------------------------------------------------------------------------------
" Mappings
"-------------------------------------------------------------------------------

" Break long lines
noremap j gj
noremap k gk

" Switch 0 and ^
noremap 0 ^
noremap ^ 0

" Ignore case
command WQ wq
command Wq wq
command W w
command Q q
command E e

" Save/Quit
nnoremap <C-s> :w<CR>
nnoremap <C-z> :q<CR>
nnoremap <C-c> :q<CR>
nnoremap Q :qa<CR>

" Search with standard regex
nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v

" Insert mode navigation
inoremap <C-d><C-d> <C-o>dd
inoremap <C-d><C-w> <C-o>dw
inoremap <C-d><C-e> <C-o>de
inoremap <C-d><C-b> <C-o>db
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>l
inoremap <C-w> <C-o>w
inoremap <C-b> <C-o>b
inoremap <C-a> <C-o>0
inoremap <C-e> <C-o>$

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nnoremap <M-j> :m+<CR>==
nnoremap <M-k> :m-2<CR>==
inoremap <M-j> <Esc>:m+<CR>==gi
inoremap <M-k> <Esc>:m-2<CR>==gi
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

" Indent
nnoremap <M-l> >>
nnoremap <M-h> <<
inoremap <M-l> <C-t>
inoremap <M-h> <C-d>
vnoremap <M-l> >gv
vnoremap <M-h> <gv

" Navigate split panes
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Resize split panes
nnoremap <C-Left> <C-w>=
nnoremap <C-Right> <C-w>_
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Down> :resize +1<CR>
nnoremap <Up> :resize -1<CR>

" Clipboard Copy/Cut/Paste
nnoremap <M-y> "+yy
nnoremap <M-d> "+dd
nnoremap <M-p> "+P
inoremap <M-y> <C-o>"+yy
inoremap <M-d> <C-o>"+dd
inoremap <M-p> <C-o>"+P
vnoremap <M-y> "+y
vnoremap <M-d> "+x
vnoremap <M-p> "+gP

" Close current buffer
nnoremap <Leader>bd :bdelete<CR>

" Close all buffers
nnoremap <Leader>ba :1,1000 bd<CR>

" Clear search highlights
nnoremap <Leader><Space> :nohlsearch<CR>

" Split open file
nnoremap <Leader>e :vsplit<Space>

" Split vertical panes and focus
nnoremap <Leader>v <C-w>v<C-w>l

" Edit .vimrc
nnoremap <Leader>.v <C-w>v<C-w>l:e ~/.vimrc<CR>

" Ack
nnoremap <Leader>/ :Ack -i<Space>

" Edit UltiSnips
nnoremap <Leader>sn <C-w>v<C-w>l:UltiSnipsEdit<CR>

" Clear undo history
nnoremap <Leader>un :ClearUndo<CR>

" Quickfix List
nmap <silent> <Leader>cc :call ToggleList("Quickfix List", 'c')<CR>
nnoremap <Leader>co :copen<CR>
nnoremap <Leader>cn :cnext<CR>
nnoremap <Leader>cp :cprev<CR>

" Location List
nmap <silent> <Leader>ll :call ToggleList("Location List", 'l')<CR>
nnoremap <Leader>lo :lopen<CR>
nnoremap <Leader>ln :lnext<CR>
nnoremap <Leader>lp :lprev<CR>

" Search and replace
vnoremap <silent> <Leader>r :call VisualSelection('replace', '')<CR>

" Beautify js, html, css
autocmd FileType javascript noremap <buffer> <Leader>be :call JsBeautify()<CR>
autocmd FileType html noremap <buffer> <Leader>be :call HtmlBeautify()<CR>
autocmd FileType css noremap <buffer> <Leader>be :call CSSBeautify()<CR>

" Toggle Syntastic active/passive mode
nnoremap <Leader>sy :SyntasticToggleMode<CR>

" Toggle syntax on/off
nnoremap <Leader>ts :call ToggleSyntax()<CR>


"-------------------------------------------------------------------------------
" Editor Configurations
"-------------------------------------------------------------------------------

set macmeta

set wildmenu

" open on right side when split
set splitright

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

" using Source Code Pro
set anti enc=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set font according to system
if has("mac") || has("macunix")
    set guifont=Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
    set guifont=Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("linux")
    set guifont=Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("unix")
    set guifont=Monospace\ 11
endif

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Toggle syntax on/off
function! ToggleSyntax()
    if exists("g:syntax_on")
        syntax off
    else
        syntax on
    endif
endfunction

" A function to clear the undo history
function! <SID>ForgetUndo()
    let old_undolevels = &undolevels
    set undolevels=-1
    exe "normal a \<BS>\<Esc>"
    let &undolevels = old_undolevels
    unlet old_undolevels
endfunction
command -nargs=0 ClearUndo call <SID>ForgetUndo()

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("Ack \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

function! GetBufferList()
  redir =>buflist
  silent! ls
  redir END
  return buflist
endfunction

function! ToggleList(bufname, pfx)
  let buflist = GetBufferList()
  for bufnum in map(filter(split(buflist, '\n'), 'v:val =~ "'.a:bufname.'"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
    if bufwinnr(bufnum) != -1
      exec(a:pfx.'close')
      return
    endif
  endfor
  if a:pfx == 'l' && len(getloclist(0)) == 0
      echohl ErrorMsg
      echo "Location List is Empty."
      return
  endif
  let winnr = winnr()
  exec(a:pfx.'open')
  if winnr() != winnr
    wincmd p
  endif
endfunction

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
