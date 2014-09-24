set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Colorscheme solarazied for vim
" Bundle 'altercation/vim-colors-solarized'

Plugin 'nanotech/jellybeans.vim'

" Nice statusline/ruler for vim
Plugin 'bling/vim-airline'

" A tree explorer plugin
Plugin 'scrooloose/nerdtree'

" Allow autoclose paired characters like [,] or (,),
" and add smart cursor positioning inside it,
Plugin 'Raimondi/delimitMate'

" Add smart commands for comments like:
" gcc - Toggle comment for the current line
" gc  - Toggle comments for selected region or number of strings
" Very usefull
Plugin 'tomtom/tcomment_vim'

" Plugin for changing cursor when entering in insert mode
" looks like it works fine with iTerm Konsole adn xerm
" Applies only on next vim launch after NeoBundleInstall
"Plugin 'jszakmeister/vim-togglecursor'

" HTML5 + inline SVG omnicomplete funtion, indent and syntax for Vim.
Plugin 'othree/html5.vim'

" Highlights the matching HTML tag when the cursor
" is positioned on a tag.
Plugin 'gregsexton/MatchTag'

" Add Support css3 property
Plugin 'hail2u/vim-css3-syntax'

" Runtime files for Haml and Sass
Plugin 'tpope/vim-haml'

filetype plugin indent on     " required


"--------------------------------------------------
" Plugins settings


"-------------------------
" NERDTree

nmap <Bs> :NERDTreeToggle<CR>

" Tell NERDTree to display hidden files on startup
let NERDTreeShowHidden=1

" Disable bookmarks label, and hint about '?'
let NERDTreeMinimalUI=1


"-------------------------
"" DelimitMate

" Delimitmate place cursor correctly n multiline objects e.g.
" if you press enter in {} cursor still be
" in the middle line instead of the last
let delimitMate_expand_cr = 1

" Delimitmate place cursor correctly in singleline pairs e.g.
" if x - cursor if you press space in {x} result will be { x } instead of { x}
let delimitMate_expand_space = 1


"-------------------------
" vim-airline

" Colorscheme for airline
let g:airline_theme='understated'

let g:airline_powerline_fonts = 1

" Enable airline for tab-bar
let g:airline#extensions#tabline#enabled = 1

" Don't display buffers in tab-bar with single tab
let g:airline#extensions#tabline#show_buffers = 0

set ttimeoutlen=50


"--------------------------------------------------
" Colorscheme

" Use solarized colorscheme
" colorscheme solarized

colorscheme jellybeans

" Setting up light color scheme
" set background=dark


"--------------------------------------------------
" General option

" Set character encoding to use in vim
set encoding=utf-8

" Use 256 colors in vim
" vim-airline not work without it
set t_Co=256


"--------------------------------------------------
" Display option

" Enable syntax highlighting
syntax on

" Hide showmode
" Showmode is useless with airline
set noshowmode

" Show file name in window title
set title

" Mute error bell
set novisualbell

" Enable display whitespace characters
set list

" Setting up how to display whitespace characters
"set listchars=tab:⇥\ ,trail:·,extends:⋯,precedes:⋯,nbsp:~
"set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
set listchars=nbsp:·,tab:→\ ,trail:·,extends:❯,precedes:❮

" Numbers of rows to keep to the left and to the right off the screen
set scrolloff=10

" Numbers of columns to keep to the left and to the right off the screen
set sidescrolloff=10

" Display command which you typing and other command related stuff
set showcmd

" Indicate that last window have a statusline too
set laststatus=2

" Disable wrapping long string
set nowrap

" Display Line numbers
set number

" Highlight line with cursor
set cursorline

" maximum text length at 80 symbols, vim automatically breaks longer lines
set textwidth=80

" higlight column right after max textwidth
set colorcolumn=+1


"--------------------------------------------------
" Tab option

" Copy indent from previous line
set autoindent

" Enable smart indent. it add additional indents whe necessary
set smartindent

" Replace tabs with spaces
set expandtab

" Whe you hit tab at start of line, indent added according to shiftwidth value
set smarttab

" number of spaces to use for each step of indent
set shiftwidth=2

" Number of spaces that a Tab in the file counts for
set tabstop=2

" Same but for editing operation (not shure what exactly does it means)
" but in most cases tabstop and softtabstop better be the same
set softtabstop=2

" Round indent to multiple of 'shiftwidth'.
" Indentation always be multiple of shiftwidth
" Applies to  < and > command
set shiftround

"--------------------------------------------------
"" Edit

" Allow backspace to remove indents, newlines and old text
set backspace=indent,eol,start

" Disable backups file
set nobackup

" Disable vim common sequense for saving.
" By defalut vim write buffer to a new file, then delete original file
" then rename the new file.
set nowritebackup

" Disable swp files
set noswapfile

"if has("autocmd")
"    au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"    au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"    au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"endif
