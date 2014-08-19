"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITION SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" autocmd!

syntax on
syntax enable

" Don't behave like Vi
set nocompatible
" highlights search results
set hlsearch
set noswapfile
set visualbell
set gdefault

filetype off

" Load pathogen
" Source: https://github.com/tpope/vim-pathogen
" call pathogen#infect()

" set the runtime path to include Vundle and initialize
" Migrating From Pathogen to Vundle ->
" http://blog.thomasupton.com/2014/02/migrating-from-pathogen-to-vundle/
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin list
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins configurations are placed bottom of the file

" + surround.vim
"   - https://github.com/tpope/vim-surround
Bundle 'bundle/vim-surround'

" + nerdtree
"   - https://github.com/scrooloose/nerdtree
Plugin 'https://github.com/scrooloose/nerdtree'

" + vim-colors-solarized 
"   - https://github.com/altercation/vim-colors-solarized
Bundle 'bundle/vim-colors-solarized'

" + vim-snipmate
"   - https://github.com/tomtom/tlib_vim
Bundle 'bundle/tlib_vim'
"   - https://github.com/MarcWeber/vim-addon-mw-utils.git
Bundle 'bundle/vim-addon-mw-utils'
"   - https://github.com/garbas/vim-snipmate.git
Bundle 'bundle/vim-snipmate'
"   - https://github.com/honza/vim-snippets.git
Bundle 'bundle/vim-snippets'
"   - https://github.com/SirVer/ultisnips.git
Bundle 'bundle/ultisnips'

" + syntastic
"   - https://github.com/scrooloose/syntastic/
Bundle 'bundle/syntastic'

" + vim-fugitive
"   - https://github.com/tpope/vim-fugitive
Bundle 'bundle/fugitive'

" + html5.vim
"   - https://github.com/othree/html5.vim
Bundle 'bundle/html5.vim'

" + vim-coffee-script.cim
"   - https://github.com/kchmck/vim-coffee-script
Bundle 'vim-coffee-script'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin list
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ENCODINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fileencoding=utf-8
set encoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MOVING AROUND, SEARCHING AND PATTERS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shows search matches as you type
set incsearch
" Jump to matching bracket
set showmatch
" If caps, watch case
set smartcase
" If all lowercase, ignore case
set ignorecase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DISPLAY TEXT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
" wraps between words
set linebreak 
set scrolloff=3
" Show vertical border of 80 chars per line
set cc=80

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPLE WINDOWS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" allow to bg unsaved buffers, etc.
set hidden
set winwidth=84
set winheight=5
set winminheight=5
set winheight=9999

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MESSAGES AND INFO
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" show normal ect commands
set showcmd
" show cursor position
set ruler

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EDDITING TEXT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 0 - prefixed numbers are still decimal
set nrformats-=octal
" proper backspacing
set backspace=indent,eol,start

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs and indenting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
" round > and < to multiples of shiftwidth
set shiftround

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FOLDING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=marker
set foldmarker={{{,}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fixes slow 0 inserts (all three)
set timeout
set timeoutlen=1000
set ttimeoutlen=100

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           COLOR 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dark theme
set background=dark

" Light theme
" set background=light
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           MY VARIABLES
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ','

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BACKUP, SWAPFILE, UNDO
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" keep backup after o/w file
set backup
if $backupdir=~# '^.,'
  let &backupdir = "/Users/i/Library/Vim/backup," . $backupdir
endif 

set swapfile
if $backupdir=~# '^.,'
  let &directory = "/Users/i/Library/Vim/swap," . $directory
endif 

" command line editing
set wildmenu
set wildmode=full
set undofile
if $undodir =~# '^\.\%(,\|$\)'
  let $undodir = "/Users/i/Library/Vim/undo," . $undodir
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           AUTO COMMANDS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cursor for re-open file is set to old position
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMSCRIPT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup vimscript
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup HTMLCommands
  autocmd!
  autocmd BufRead,BufNewFile *.html setfiletype html
  " Auto format file
  " autocmd BufRead,BufWritePre *.html normal gg=G''
  " Comments will be with pres '//'
  autocmd Filetype html nnoremap <buffer> <leader>c I <!--<ESC>A--><ESC>
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JavaScript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup JavaScriptCommands
  autocmd!
  autocmd BufRead,BufNewFile *.js setfiletype javascript
  " Auto format file
  "" autocmd BufRead,BufWritePre *.js normal gg=G''
  " Comment Javascript
  autocmd Filetype javascript nnoremap <buffer>  <leader>c I//<ESC>
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RUBY
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup RubyCommands
  autocmd!
  set cursorline
  autocmd BufRead,BufNewFile *.ru setfiletype ruby
  autocmd BufRead,BufNewFile *.rb setfiletype ruby
  " Auto format file
  " autocmd BufRead,BufWritePre *.ru normal gg=G''
  " autocmd BufRead,BufWritePre *.rb normal gg=G''
  " Comment Ruby
  autocmd Filetype ruby nnoremap <buffer>  <leader>c I//<ESC>
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PHP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup PHPCommands
  autocmd!
  autocmd BufRead,BufNewFile *.php setfiletype php 
  " Auto format file
  autocmd BufRead,BufWritePre .php normal gg=G''
  " Comment Javascript
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           IGNORE SYNTAX ERRORS 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" AngularJS
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           MY SHORTCUTS 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Insert newline without entering insert mode
" Source:
" http://vim.wikia.com/wiki/Insert_newline_without_entering_insert_mode 
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Remove arrows from normal mode.
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>

" Make shortcut command for parentheses. Example ci( will be equal to cp
onoremap p i(

" Make shortcut command for curly braces. Example ci{ will be equal to ct
onoremap t i{

" Make shortcut command for square brackets. Example ci[ will be equal to cr
onoremap r i[

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WORKING WITH WINDOWS
" Get ideas from this screencast:
" http://vimcasts.org/episodes/working-with-windows/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" increase current window width N columns
nnoremap <C-r> <C-w>>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" REG EXP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
nnoremap ? ?\v

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copy & Paste
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" How to implement apple key / command key: 
" http://stackoverflow.com/questions/9450905/how-to-bind-vim-through-tmux-to-cmd-key/9451636#9451636
onoremap <D-s> :w<CR>
nnoremap <D-s> :w<CR>

" Paste external source to vim
inoremap <D-v> <C-r><S-*> 

" let you use dr to replace word under cursor with contents of register 0 (i.e. what you last copied)
" dr will move cursor to right
nnoremap dr diwh"0p

" let you use dt to replace word under cursor with contents of register 0 (i.e. what you last copied)
nnoremap dt diw"0p

" Change word using the current paste buffer
" Post:
" http://unix.stackexchange.com/questions/88714/vim-how-can-i-do-a-change-word-using-the-current-paste-buffer
nnoremap <C-j> viwp

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN VIMRC QUICKLY
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" open new tab with my .vimrc file
nnoremap <leader>ev :tabe $MYVIMRC<CR>
" edit my .virmc file
nnoremap <leader>sv :so $MYVIMRC<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TAB INDENT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <TAB> >>
nnoremap <S-TAB> <<
vnoremap <TAB> >
vnoremap <S-TAB> <

" Remove highlighting
" ,<space> execute into normal mode command :noh
nnoremap <LEADER><SPACE> :noh<CR>

" Show syntax highlighting groups for word under cursor
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunction
nmap <C-S-P> :call <SID>SynStack()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AUTOCOMPLETE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent if we're at the beginning of a line. Else, do completion.
" Source: https://github.com/garybernhardt/dotfiles/blob/master/.vimrc
function! InsertTabWrapper()
  let col = col(".") - 1
  if !col || getline(".")[col - 1] !~ '\k'
    return "\<tab>"
  else 
    return "\<c-n>"
endfunction
inoremap <TAB> <C-r>=InsertTabWrapper()<CR>
" inoremap <Nul> <C-n>
inoremap <S-TAB> <C-p>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           NERDTree 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" How can I open a NERDTree automatically when vim starts up if no files were
" specified?
autocmd vimenter * if !argc() | NERDTree | endif

" How can I map a specific key or shortcut to open NERDTree?
map <C-n> :NERDTreeToggle<CR>

" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           HTML 5 VIM 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable event-handler attributes support:
let g:html5_event_handler_attributes_complete = 0

" Disable RDFa attributes support:
let g:html5_rdfa_attributes_complete = 0

" Disable microdata attributes support:
let g:html5_microdata_attributes_complete = 0

" Disable WAI-ARIA attribute support:
let g:html5_aria_attributes_complete = 0
