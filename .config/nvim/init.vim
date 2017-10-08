
call plug#begin('~/.local/share/nvim/plugged')

" Add or remove your plugins here:

" colorschemes
" ============================================
" xolox/vim-colorscheme-switcher
Plug 'rafi/awesome-vim-colorschemes'
Plug 'flazz/vim-colorschemes'
Plug 'atelierbram/Base2Tone-vim'
Plug 'atelierbram/vim-colors_atelier-schemes'
"Plug 'fcpg/vim-fahrenheit'
"Plug 'frankier/neovim-colors-solarized-truecolor-only'
"Plug 'morhetz/gruvbox'
"Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'rakr/vim-two-firewatch'
"Plug 'romainl/Apprentice'
"Plug 'KeitaNakamura/tex-conceal.vim'
"Plug 'rakr/vim-togglebg'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-commentary'
"Plug 'tpope/vim-surround'
Plug 'machakann/vim-sandwich'
"Plug 'tpope/vim-unimpaired'
Plug 'justinmk/vim-sneak' " https://vimawesome.com/plugin/vim-sneak
Plug 'junegunn/vim-easy-align' " some tips: https://www.reddit.com/r/vim/comments/2lsr8d/vimeasyalign_the_most_ingenious_plugin_ive/
"https://github.com/majutsushi/tagbar
Plug 'yuttie/comfortable-motion.vim' " https://vimawesome.com/plugin/vim-sneak

" neither of these rainbow parens seem to work with vimtex
" Plug 'junegunn/rainbow_parentheses.vim' " doesn't seem to work with latex
" Plug 'luochen1990/rainbow'
" djdt/pyparens.nvim
" bounceme/poppy.vim

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Helpful video here: http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
" Plug 'godlygeek/tabular' " alternative: https://vimawesome.com/plugin/vim-easy-align
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'yggdroot/indentline'
"
"xtal8/traces.vim " range and pattern preview for command-line mode

Plug 'lervag/vimtex'

"Plug ''
" fuzzy finder
" fzf, denite, LeaderF
" https://www.reddit.com/r/vim/comments/5w05yt/best_fuzzy_finder/

" Snippet options: ultisnips, neosnippet
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
Plug 'SirVer/ultisnips'
" Plug 'honza/snippets'

" tag options:
" vim-gutentags
" vim-tags
" vim-autotag, vim-automatic-ctags

" replace operator

" denite?

" sessions
" Plug 'thaerkh/vim-workspace'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'


" sunaku/vim-shortcut: discoverable shortcut system, inspired by Spacemacs, powered by fzf.vim

" for option is generally not needed as most plugins for specific file types usually don't have too much code in plugin directory. You might want to examine the output of vim --startuptime before applying the option.
" - from vim-plug page

" If you want to install not installed plugins on startup.
"if dein#check_install()
"    call dein#update()
"endif
"End dein Scripts-------------------------
call plug#end()


" Colors
" =================
set termguicolors
set background=dark
colorscheme gruvbox
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" end colors

" Leader
" ===============
" nnoremap <Space> <nop>
let mapleader="\<Space>"
let maplocalleader=","
set timeoutlen=10000
" end leader

" Sensible options
" =====================
set modelines=0  " ??

set guioptions=M        " supposedly hides some gui options and speeds startup

" syntax on
" set ts=4 " Don't need this so that hard tabs are preserved to default
set sw=4
set sts=4
set expandtab
set backspace=indent,eol,start
set autoindent
set ignorecase
set smartcase
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
"set showmode            " Show current mode.
set noshowmode          " Disable for airline
set hlsearch
set incsearch " highlight the next match while still typing out search pattern
set splitright
set splitbelow
set hidden
set mouse=a
set clipboard=unnamed
set gdefault " make searches with %s have g by default


" some more things from sensible.vim
" some might be redundant, should check
set display+=lastline
" set complete-=i " no idea what this does
set smarttab
" Use <C-L> to clear the highlighting of :set hlsearch.
" My mnemonic: toggle highlight (eventually should re-highlight as well)
if mapcheck('<Leader>th', 'n') ==# ''
    nnoremap <silent> <Leader>th :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif
set laststatus=2    " apparently this is also good for airline
set ruler
set wildmenu
set wildmode=list:longest,full
set wildignorecase
"set statusline+=%F     " Does not work with airline


" numbering
set cursorline
set number
set relativenumber
set lazyredraw
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
" When scrolling is slow, some helpful debugging tips:
" http://eduncan911.com/software/fix-slow-scrolling-in-vim-and-neovim.html
" e.g. :syntime on and :syntime report
" end numbering


" Plugin configuration
"===========================================
" airline configuration
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>b1 <Plug>AirlineSelectTab1
nmap <leader>b2 <Plug>AirlineSelectTab2
nmap <leader>b3 <Plug>AirlineSelectTab3
nmap <leader>b4 <Plug>AirlineSelectTab4
nmap <leader>b5 <Plug>AirlineSelectTab5
nmap <leader>b6 <Plug>AirlineSelectTab6
nmap <leader>b7 <Plug>AirlineSelectTab7
nmap <leader>b8 <Plug>AirlineSelectTab8
nmap <leader>b9 <Plug>AirlineSelectTab9
" nmap <leader>b- <Plug>AirlineSelectPrevTab
" nmap <leader>b+ <Plug>AirlineSelectNextTab

" vim-sneak
" 2-character Sneak (default)
nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S
xmap f <Plug>Sneak_s
xmap F <Plug>Sneak_S
omap f <Plug>Sneak_s
omap F <Plug>Sneak_S
nmap \ <Plug>Sneak_,
"let g:sneak#label = 1
"nmap t <Plug>Sneak_t

" vim-sandwich
let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)

" comfortable-motion
let g:comfortable_motion_no_default_key_mappings = 1
nnoremap <A-j> <C-e>
nnoremap <A-k> <C-y>
nnoremap <silent> <C-j> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-k> :call comfortable_motion#flick(-100)<CR>
nnoremap <silent> <C-A-j> :call comfortable_motion#flick(200)<CR>
nnoremap <silent> <C-A-k> :call comfortable_motion#flick(-200)<CR>
let g:comfortable_motion_interval = 2000.0 / 60
let g:comfortable_motion_friction = 80.0
let g:comfortable_motion_air_drag = 1.0

" easy-align
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" fzf
nnoremap <Leader>ff :FZF<CR>

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<C-]>"
let g:UltiSnipsJumpBackwardTrigger="<C-[>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" rainbow parentheses
"let g:rainbow#max_level = 16
"let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
        \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}
" ========================================
" end plugin

" Keybindings
"============================================
" center after searching
nnoremap N Nzz
nnoremap n nzz
cnoremap <expr> <CR> getcmdtype() =~ '[/?]' ? '<CR>zz' : '<CR>'


" Movement
" --------------------------------
" remap arrow keys to screen line navigation instead of file line
nnoremap <up> gk
nnoremap <down> gj
inoremap <up> <C-o><up>
inoremap <down> <C-o><down>
" more mnemonic jump list
nnoremap <A-[> <C-o>
nnoremap <A-]> <C-i> " TODO: in help mode this is already bound to show TOC
" more sensible screen movement (REPLACED BY COMFORTABLE-MOTION)
" nnoremap <A-j> <C-e>
" nnoremap <A-k> <C-y>
" nnoremap <C-j> <C-d>
" nnoremap <C-k> <C-u>
" nnoremap <C-A-j> <C-f>
" nnoremap <C-A-k> <C-b>

" remap window movement
nnoremap <Leader>ww <C-w>w
nnoremap <Leader>wr <C-w>r
nnoremap <Leader>wR <C-w>R
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wl <C-w>l
nnoremap <Leader>wc <C-w>c
nnoremap <Leader>wo <C-w>o
nnoremap <Leader>ws <C-w>s
nnoremap <Leader>wv <C-w>v

" remap buffer movement
nnoremap <Leader>bb :ls<CR>
nnoremap <Leader>b] :bnext<CR>
nnoremap <Leader>b[ :bprevious<CR>
nnoremap <Leader>bd :bd<CR>

" toggles
let g:indent_guides_default_mapping = 0
let g:indent_guides_start_level = 1
nnoremap <silent> <Leader>tg <Plug>IndentGuidesToggle
"call togglebg#map("<F5>")

" sessions and views
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview

" Auto save and load views
" set viewoptions-=options
" set viewoptions=cursor,folds,slash,unix should be same thing
" augroup autoview
"     autocmd BufWritePost *
"     \   if expand('%') != '' && &buftype !~ 'nofile'
"     \|      mkview
"     \|  endif
"     autocmd BufRead *
"     \   if expand('%') != '' && &buftype !~ 'nofile'
"     \|      silent loadview
"     \|  endif
" augroup END
" end sessions

" source ~/.vim/restore_view.vim

" set viminfo='100,f1 " marks for up to 100 files, global marks

" remap vertical cursor scrolling
nnoremap zg zz " z{t,g,b} do same thing
" nnoremap zq H
" nnoremap za M
" nnoremap zz L




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

" latex
" ======================================
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'


let g:tex_subscripts = " "
" let g:tex_conceal=""
let g:tex_conceal="abdmg"               " conceal bold and italic, no sub/superscripts: see tex_supersub
set conceallevel=0
let g:tex_comment_nospell = 1           " No spellcheck inside comments
" Vimtex options go here
let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_progname = 'nvr'
" from: https://github.com/lervag/vimtex/issues/383

" let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
" let g:vimtex_view_general_options = '-r @line @pdf @tex'    " @tex doesn't seem to be necessary right now
" let g:vimtex_view_general_options_latexmk = '-r -g @begin'     " leaving out -g because autofocus is annoying, reminding me to quit skim
" let g:vimtex_compiler_callback_hooks = ['UpdateSkim'] " let g:vimtex_view_general_callback = 'UpdateSkim'?
function! UpdateSkim(status)
    if !a:status | return | endif
    let cmd = [g:vimtex_view_general_viewer, "-r"]
    if !empty(system("pgrep Skim"))
        call extend(cmd, ["-g"])
    endif
    let out = b:vimtex.out()
    let l:tex = expand('%:p')
    call jobstart(cmd + [line('.'), out])
    "if has('nvim')
    "  call jobstart(cmd + [line('.'), out])
    "elseif has('job')
    "  call job_start(cmd + [line('.'), out])
    "else
    "  call system(join(cmd + [line('.'), shellescape(out)], ' '))
    "endif
endfunction

" g:vimtex_complete_close_braces
" g:vimtex_delim_toggle_mod_list " e.g. \left\right, \mleft\mright
" g:vimtex_fold_enabled
" g:vimtex_quickfix_method = 'pplatex'
" g:vimtex_toc_hotkeys ??
" nx map <plug>(vimtex-cmd-create)
" use vim-sandwich to do the surround commands

let g:vimtex_imaps_leader = ';'
let g:vimtex_imaps_disabled = [';']

call vimtex#imaps#add_map({ 'lhs' : '1', 'rhs' : '^{-1}' })
call vimtex#imaps#add_map({ 'lhs' : '2', 'rhs' : '\sqrt' })
call vimtex#imaps#add_map({ 'lhs' : 't', 'rhs' : '^\top', 'leader' : '`' })
"call vimtex#imaps#add_map({ 'lhs' : ' ', 'rhs' : '; ' })

" augroup vimtex_event_1
"   au!
"   au User VimtexEventQuit     call vimtex#compiler#clean(0)
"   " au User VimtexEventInitPost call vimtex#compiler#compile()
" augroup END
" nnoremap <localleader>la <plug>(vimtex-compile-ss) " maybe needs @ buffer local

let g:vimtex_fold_enabled = 1

" snippets
" Using UltiSnips#Anon
" inoremap <silent> __ __<c-r>=UltiSnips#Anon('_{$1}$0', '__', '', 'i')<cr>
" inoremap <silent> ^^ ^^<c-r>=UltiSnips#Anon('^{$1}$0', '^^', '', 'i')<cr>
" see UltiSnips-autotrigger
" end latex
" Neovim beta features
set inccommand=split    " Live preview for :substitute
" Are there similar features for: searching for a line :/fat/ and highlighting
" the line it currently matches?

" file:
"   editor - dotfile, reload
nnoremap <Leader>fed :e $MYVIMRC<CR>
nnoremap <Leader>fer :so $MYVIMRC<CR>

" package: update, reload/recache
nnoremap <Leader>pu :call dein#update()<CR>
nnoremap <Leader>pr :call dein#recache_runtimepath()<CR>


set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
"source ~/.vimrc
