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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin list
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins configurations are placed bottom of the file

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

" The NERD tree allows you to explore your filesystem and to open files 
" and directories.
Plugin 'scrooloose/nerdtree'

" Vim colors scheme
Plugin 'altercation/vim-colors-solarized'

Plugin 'tomtom/tlib_vim'

" Snippets

" Syntastic is a syntax checking plugin for Vim that runs files through external 
" syntax checkers and displays any resulting errors to the user.
Plugin 'scrooloose/syntastic'

" HTML5 + inline SVG omnicomplete funtion, indent and syntax for Vim. 
" Based on the default htmlcomplete.vim.
Plugin 'othree/html5.vim'

" This project adds CoffeeScript support to vim. It covers syntax, indenting,
" compiling, and more.
Plugin 'kchmck/vim-coffee-script'

" Surround.vim is all about 'surroundings': parentheses, brackets, quotes, XML
" tags, and more. The plugin provides mappings to easily delete, change and
" add such surroundings in pairs.
Plugin 'tpope/vim-surround'

" I'm not going to lie to you; fugitive.vim may very well be the best Git
" wrapper of all time.
Plugin 'tpope/vim-fugitive'

" Remember when everybody and their mother was using TextMate for Ruby on
" Rails development? Well if it wasn't for rails.vim, we'd still be in that
" era. So shut up and pay some respect.
Plugin 'tpope/vim-rails'

" This plugin is meant to simplify a task I've found too common in my
" workflow: switching between a single-line statement and a multi-line one. It
" offers the following default keybindings, which can be customized:
" + gS to split a one-liner into multiple lines
" + gJ (with the cursor on the first line of a block) to join a block into a
" single-line statement.
Plugin 'AndrewRadev/splitjoin.vim'

" FuzzyFinder
Plugin 'L9'
Plugin 'FuzzyFinder'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'kien/ctrlp.vim'

" YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine
" for Vim.
" Plugin 'Valloric/YouCompleteMe'

" Lean & mean status/tabline for vim that's light as air.
" Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve
" 
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
