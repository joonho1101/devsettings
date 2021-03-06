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


" Be iMproved *MUST BE FIRST*
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

" Enable repeating supported plugin maps with "."
" https://github.com/tpope/vim-repeat
Bundle 'tpope/vim-repeat'

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

" Solarized color scheme configurations
let g:solarized_contrast="high"
let g:solarized_visibility="normal"
let g:solarized_hitrail=1

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" Map <TAB> as trigger for UltiSnips
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"

" Syntastic configurations
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['html', 'js'] }
" let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-", "<snap-content>"]

" CtrlP ignore patterns
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn|DS_STORE)|node_modules|out)$'


"-------------------------------------------------------------------------------
" Mappings
"-------------------------------------------------------------------------------

" Easier command
nnoremap ; :

" Repeat last command
nnoremap ;; @:

" Easier macro
nnoremap <space> @
nnoremap <space><space> @@

" Break long lines
"noremap j gj
"noremap k gk

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
nnoremap <C-c> :bd<CR>
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
nnoremap <Leader>= <C-w>=
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
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bp :bprevious<CR>
nnoremap <Leader>bl :ls<CR>

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
nnoremap <M-9> :cprev<CR>
nnoremap <M-0> :cnext<CR>

" Location List
nmap <silent> <Leader>ll :call ToggleList("Location List", 'l')<CR>
nnoremap <Leader>lo :lopen<CR>
nnoremap <M-[> :lprev<CR>
nnoremap <M-]> :lnext<CR>

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

" Enable Alt key in Mac
set macmeta

" Enable autocomplete in menu
set wildmenu

" Scroll fast
set ttyfast

" Scroll offset to cursor
set scrolloff=5

" Relative line numbers to cursor
set relativenumber

" Open vertical split on the right side
set splitright

" Highlight n-th column
set colorcolumn=80

" Global substitutions on lines
set gdefault

" Backspace navigation
set backspace=indent,eol,start

" Enable auto indentation
set autoindent

" Enable smart indentation
set smartindent

" Tab character width
set tabstop=2

" Smart auto indentation
set smarttab

" Auto indentation width, including >>, <<, ==
set shiftwidth=2

" Use 'softtabstop' spaces instead of tab
set expandtab

" Number of spaces to replace <TAB>/<BS>
set softtabstop=2

" Wrap lines
set wrap

" Highlight all matches for search
set hlsearch

" Real-time search
set incsearch

" Ignorecase for search
set ignorecase

" Smartcase matching
set smartcase

" Highlight matching brackets
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Don't redraw while executing macros for better performance
set lazyredraw

" Magic regular expressions
set magic

" Highlight whitespaces
set list listchars=eol:\ ,tab:\ \ ,trail:·,extends:>,precedes:<

" set cinoptions=>4,n-2,{2,^-2,:0,=2,g0,h2,t0,+2,(0,u0,w1,m1

" Auto refresh modified files
set autoread

" Show ruler
set ruler

" Show mode
set showmode

" Show command in status line
set showcmd

" Command bar height
set cmdheight=2

" Command line height
set laststatus=2

" Show line numbers
set number

" Line number width
set numberwidth=4

" History buffer size
set history=10000

" Background scheme
set background=dark

" Color scheme
colorscheme solarized

" Line ending characters
set fileformat=unix

" Unicode encoding
set encoding=utf-8
set fileencoding=utf-8
set anti enc=utf-8

" Enable hidden modified buffers
set hidden

" Disable backup files
set nobackup
set nowritebackup
set noswapfile

" Disable error/visual bells
set noerrorbells
set novisualbell
set vb t_vb=


"-------------------------------------------------------------------------------
" GUI Configurations
"-------------------------------------------------------------------------------

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

" Hide menubar
set guioptions-=m

" Hide toolbar
set guioptions-=T

" Hide vertical scroll on right
set guioptions-=r


"-------------------------------------------------------------------------------
" Helper Functions
"-------------------------------------------------------------------------------

" Toggle syntax on/off
function! ToggleSyntax()
    if exists("g:syntax_on")
        syntax off
    else
        syntax on
    endif
endfunction

" Clear the undo history
function! <SID>ForgetUndo()
    let old_undolevels = &undolevels
    set undolevels=-1
    exe "normal a \<BS>\<Esc>"
    let &undolevels = old_undolevels
    unlet old_undolevels
endfunction
command -nargs=0 ClearUndo call <SID>ForgetUndo()

" Used in VisualSelection()
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" Search and replace
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

" Used in ToggleList()
function! GetBufferList()
  redir =>buflist
  silent! ls
  redir END
  return buflist
endfunction

" Quickfix List / Location List
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

" Remove trailing whitespaces
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc


"-------------------------------------------------------------------------------
" File Type Specific Configurations
"-------------------------------------------------------------------------------

" On save, remove trailing whitespaces
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.html :call DeleteTrailingWS()
autocmd BufWrite *.css :call DeleteTrailingWS()
autocmd BufWrite *.styl :call DeleteTrailingWS()
autocmd BufWrite *.less :call DeleteTrailingWS()
autocmd BufWrite *.py :call DeleteTrailingWS()


" autoindent smartindent expandtab tabstop=4 softtabstop=2 smarttab shiftwidth=4
" autocmd Filetype javascript setlocal tabstop=4 shiftwidth=4
" Indentation rules for file types
autocmd Filetype javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype html setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype styl setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype stylus setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype jade setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab


"-------------------------------------------------------------------------------
" Post Initializations
"-------------------------------------------------------------------------------

filetype off
filetype on
filetype plugin indent on
syntax on
