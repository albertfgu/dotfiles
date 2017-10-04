execute pathogen#infect()

if has('autocmd')
    filetype indent plugin on
endif
if has('syntax') && !exists('g:syntax_on')
    syntax enable
endif

set nocompatible " No backwards compatibility with vi
set modelines=0  " ??

" syntax on
set expandtab
set ts=4
set sw=4
set sts=4
" set ts=4 " Don't need this so that hard tabs are preserved to default
set autoindent
set ignorecase
set smartcase
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set hlsearch
set incsearch " highlight the next match while still typing out search pattern
set splitright
set splitbelow
set hidden
set mouse=a
set clipboard=unnamed

set laststatus=2
set ruler
set wildmenu

set gdefault " make searches with %s have g by default

set number
set relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set statusline+=%F

" keybindings
nnoremap <Space> <nop>
let mapleader="\<Space>"
"let maplocalleader="\\"
"nnoremap <Leader>w :w<CR>

" center after searching
nnoremap N Nzz
nnoremap n nzz

" remap arrow keys to screen line navigation instead of file line
nnoremap <up> gk
nnoremap <down> gj
inoremap <up> <C-o><up>
inoremap <down> <C-o><down>

set background=dark
" TODO make command for toggling background from light to dark
colorscheme desert
call togglebg#map("<F6>") " <F5> taken by vim-latex I think


" Highlight tabs and trailing whitespaces
" from: http://nerditya.com/code/guide-to-neovim/
" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
"set list                " Show problematic characters.

" Refresh unchanged files
" http://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim
set autoread
set sessionoptions-=options

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
    set t_Co=16
endif

" Ideas for clearing last search from
"
" "This unsets the "last search pattern" register by hitting return
" nnoremap <CR> :noh<CR><CR>
" "To clear the last used search pattern:
" :let @/ = ""
" "The pattern is really cleared, like when starting Vim.

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
" filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
"set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
