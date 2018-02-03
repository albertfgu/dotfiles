" Plugins {{{
call plug#begin('~/.local/share/nvim/plugged')
" cosmetics {{{
" ============================================
" xolox/vim-colorscheme-switcher
Plug 'rafi/awesome-vim-colorschemes'
Plug 'flazz/vim-colorschemes'
Plug 'atelierbram/Base2Tone-vim'
Plug 'atelierbram/vim-colors_atelier-schemes'
"arcticicestudio/nord-vim
"Plug 'fcpg/vim-fahrenheit'
"Plug 'frankier/neovim-colors-solarized-truecolor-only'
"Plug 'morhetz/gruvbox'
"Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'rakr/vim-two-firewatch'
"Plug 'romainl/Apprentice'
"Plug 'rakr/vim-togglebg'

"Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'Yggdroot/indentLine'
" gcmt/wildfire.vim  " seems to be subsumed by sandwich
" Plug 'xtal8/traces.vim'
Plug 'machakann/vim-highlightedyank'
" romainl/vim-cool
Plug 'myusuf3/numbers.vim'
Plug 'simnalamburt/vim-mundo'

" neither of these rainbow parens seem to work with vimtex
" Plug 'junegunn/rainbow_parentheses.vim' " doesn't seem to work with latex
" Plug 'luochen1990/rainbow'
" djdt/pyparens.nvim
" bounceme/poppy.vim
" }}}
" movement, windows, buffers {{{
" ========
Plug 'rhysd/clever-f.vim'
" Plug 'justinmk/vim-sneak' " https://vimawesome.com/plugin/vim-sneak
Plug 'yuttie/comfortable-motion.vim' " https://vimawesome.com/plugin/vim-sneak

" Windows 
" https://github.com/qpkorr/vim-bufkill
" Plug 'psolyca/vim-bbye'
Plug 'mhinz/vim-sayonara'
" zhaocai/GoldenView.Vim
" }}}
" text objects, matching, operators, etc. {{{
" =======================================
" Plug 'tpope/vim-surround'
Plug 'machakann/vim-sandwich'
Plug 'nelstrom/vim-visual-star-search' " also a bronson/ version
Plug 'michaeljsmith/vim-indent-object' " alternative: qstrahl/vim-dentures
Plug 'tommcdo/vim-ninja-feet'
" Plug 'wellle/targets.vim'
" kana/vim-textobj-user
" https://github.com/vim-scripts/ReplaceWithRegister
" Plug 'andymass/vim-matchup' " https://www.reddit.com/r/vim/comments/7emayn/favorite_lesserknown_but_useful_vim_plugins/

" alignment operator
Plug 'junegunn/vim-easy-align' " some tips: https://www.reddit.com/r/vim/comments/2lsr8d/vimeasyalign_the_most_ingenious_plugin_ive/
" Plug 'godlygeek/tabular' 'tommcdo/vim-lion' " alternatives to easy-align
" Helpful video here: http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
" }}}
" fuzzy finder {{{
" fzf, denite, LeaderF
" https://www.reddit.com/r/vim/comments/5w05yt/best_fuzzy_finder/
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" }}}
" snippet options: ultisnips, neosnippet {{{
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
Plug 'SirVer/ultisnips'
" Plug 'honza/snippets'
" }}}
" completion {{{
" maralla/completor.vim
" lifepillar/vim-mucomplete
" prabirshrestha/asyncomplete.vim + prabirshrestha/vim-lsp
Plug 'roxma/nvim-completion-manager'
" }}}
" quickfix, linting {{{
Plug 'w0rp/ale'
Plug 'romainl/vim-qf'
" }}}
" tags {{{
Plug 'ludovicchabant/vim-gutentags'
" vim-tags
" vim-autotag, vim-automatic-ctags
Plug 'majutsushi/tagbar'
" }}}
" sessions {{{
" Plug 'thaerkh/vim-workspace'
" Plug 'tpope/vim-obsession'
" Plug 'dhruvasagar/vim-prosession'
" Plug 'kopischke/vim-stay'
" }}}
" file browser {{{
Plug 'justinmk/vim-dirvish'
" tpope/vinegar
" }}}
" language tools {{{
Plug 'lervag/vimtex'
" sheerun/vim-polyglot " language pack
" for option is generally not needed as most plugins for specific file types usually don't have too much code in plugin directory. You might want to examine the output of vim --startuptime before applying the option.
" - from vim-plug page
" }}}
" misc. {{{
" =====
Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-unimpaired'
" Plug 'tpope/vim-repeat'
" AndrewRadev/splitjoin.vim

" sunaku/vim-shortcut: discoverable shortcut system, inspired by Spacemacs, powered by fzf.vim
" bryphe/oni " full IDE functionality
" }}}
call plug#end()
" }}}

" colors {{{
" =================
set termguicolors
set background=dark
colorscheme gruvbox
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" }}}
" leader {{{
" ===============
" nnoremap <space> <nop>
let mapleader="\<space>"
let maplocalleader=","
set timeoutlen=10000
" }}}
" indentation {{{
" set ts=4 " Don't need this so that hard tabs are preserved to default
set sw=4
set sts=4
set expandtab
set backspace=indent,eol,start
set autoindent
set smarttab
" }}}
" line numbers {{{
set cursorline
set number
set relativenumber
set lazyredraw
" from: jeffkreeftmeijer/vim-numbertoggle
" augroup numbertoggle
"   autocmd!
"   " autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
"   " autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
"   autocmd BufEnter,FocusGained,InsertLeave,WinEnter * set number | set relativenumber
"   autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * set number | set norelativenumber
" augroup END

" using plugin for now
" When scrolling is slow, some helpful debugging tips:
" http://eduncan911.com/software/fix-slow-scrolling-in-vim-and-neovim.html
" e.g. :syntime on and :syntime report
" }}}
" folding {{{
nnoremap zz za
" https://stackoverflow.com/questions/21280457/stop-vim-from-dynamically-updating-folds
" autocmd InsertLeave,WinEnter * let &l:foldmethod=g:oldfoldmethod
" autocmd InsertEnter,WinLeave * let g:oldfoldmethod=&l:foldmethod | setlocal foldmethod=manual
" }}}
" sensible options {{{
" =====================
set modelines=1  " ??
set guioptions=M        " supposedly hides some gui options and speeds startup

set ignorecase
set smartcase
set inccommand=split    " Live preview for :substitute (neovim only)
" Are there similar features for: searching for a line :/fat/, highlighting the line it currently matches?

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
set laststatus=2    " apparently this is also good for airline
set ruler
set wildmenu
set wildmode=list:longest,full
set wildignorecase
"set statusline+=%F     " Does not work with airline

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
" }}}

" Plugin configuration
"===========================================
" airline {{{
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
" }}}
" vim-sneak {{{
"" 2-character Sneak (default)
"nmap f <Plug>Sneak_s
"nmap F <Plug>Sneak_S
"xmap f <Plug>Sneak_s
"xmap F <Plug>Sneak_S
"omap f <Plug>Sneak_s
"omap F <Plug>Sneak_S
"nmap \ <Plug>Sneak_,
""let g:sneak#label = 1
""nmap t <Plug>Sneak_t
"" }}}
" clever-f {{{
let g:clever_f_across_no_line = 0
let g:clever_f_fix_key_direction = 1
" }}}
" vim-sandwich {{{
let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)
nmap s <Nop>
xmap s <Nop>
xmap ia <Plug>(textobj-sandwich-auto-i)
xmap aa <Plug>(textobj-sandwich-auto-a)
omap ia <Plug>(textobj-sandwich-auto-i)
omap aa <Plug>(textobj-sandwich-auto-a)
xmap i  <Plug>(textobj-sandwich-query-i)
xmap a  <Plug>(textobj-sandwich-query-a)
omap i  <Plug>(textobj-sandwich-query-i)
omap a  <Plug>(textobj-sandwich-query-a)
xmap il  <Plug>(textobj-sandwich-literal-query-i)
xmap al  <Plug>(textobj-sandwich-literal-query-a)
xmap il  <Plug>(textobj-sandwich-literal-query-i)
xmap al  <Plug>(textobj-sandwich-literal-query-a)
let g:textobj#sandwich#recipes = [
            \   {'external': ['iw', 'aw'], 'noremap': 1, 'input': ['w']},
            \   {'external': ['iW', 'aW'], 'noremap': 1, 'input': ['W']},
            \   {'external': ['is', 'as'], 'noremap': 1, 'input': ['s']},
            \   {'external': ['iS', 'aS'], 'noremap': 1, 'input': ['S']},
            \   {'external': ['ip', 'ap'], 'noremap': 1, 'input': ['p']},
            \   {'external': ['iP', 'aP'], 'noremap': 1, 'input': ['P']},
            \   {'external': ['i`', 'a`'], 'noremap': 1, 'input': ['`']},
            \ ]
            " \   {'external': ['i[', 'a['], 'noremap': 1, 'input': ['[']},
            " \   {'external': ['i(', 'a('], 'noremap': 1, 'input': ['(']},
            " \   {'external': ['i<', 'a<'], 'noremap': 1, 'input': ['<']},
            " \   {'external': ['i{', 'a{'], 'noremap': 1, 'input': ['{']},
            " \   {'external': ['i"', 'a"'], 'noremap': 1, 'input': ['"']},
            " \   {'external': ["i'", "a'"], 'noremap': 1, 'input': ['''']},
            " \   {'external': ['i]', 'a]'], 'noremap': 0, 'input': [']']},
            " \   {'external': ['i)', 'a)'], 'noremap': 0, 'input': [')']},
            " \   {'external': ['ib', 'ab'], 'noremap': 0, 'input': ['b']},
            " \   {'external': ['i>', 'a>'], 'noremap': 0, 'input': ['>']},
            " \   {'external': ['it', 'at'], 'noremap': 0, 'input': ['t']},
            " \   {'external': ['i}', 'a}'], 'noremap': 0, 'input': ['}']},
            " \   {'external': ['iB', 'aB'], 'noremap': 0, 'input': ['B']},

" }}}
" comfortable-motion {{{
let g:comfortable_motion_no_default_key_mappings = 1
nnoremap <A-j> <C-e>
nnoremap <A-k> <C-y>
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>
" nnoremap <silent> <C-j> :call comfortable_motion#flick(100)<CR>
" nnoremap <silent> <C-k> :call comfortable_motion#flick(-100)<CR>
nnoremap <silent> <C-A-j> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-A-k> :call comfortable_motion#flick(-100)<CR>
let g:comfortable_motion_interval = 1000.0 / 60
let g:comfortable_motion_friction = 80.0
let g:comfortable_motion_air_drag = 2.0
" }}}
" easy-align {{{
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
" }}}
" rainbow parentheses {{{
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
" }}}
" indent lines {{{
let g:indentLine_char = '┊'
let g:indentLine_faster = 1
let g:indentLine_setConceal = 1
let g:indentLine_fileTypeExclude = ['tex']
" }}}
" indent guides {{{
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_default_mapping = 0
let g:indent_guides_start_level = 2
nmap <silent> <leader>tg <Plug>IndentGuidesToggle
" }}}
" highlightedyank {{{
let g:highlightedyank_timeout = 50
" }}}
" undotree {{{
set undofile " persistent undo
nnoremap <leader>ut :MundoToggle<CR>
" }}}

" fzf {{{
nnoremap <leader>ff :FZF<CR>
" }}}
" snippets {{{
" let g:UltiSnipsExpandTrigger="<tab>"
imap <C-h> <nop>
imap <C-l> <nop>
" let g:UltiSnipsExpandTrigger="<Plug>(ultisnips_expand)" "there is a bug with this when forward trigger and expand trigger on same key;
" it will expand before jumping (can probably define mappings calling UltiSnips#ExpandSnippetOrJump() to manually get right behavior)
" inoremap <silent> <C-l> <C-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<CR>
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-h>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
" can define normal map, something like ':nmap <ultisnips jump trigger> i<ultisnips jump trigger>'
" idea from: https://github.com/SirVer/ultisnips/issues/526

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
" }}}
" quickfix {{{
nmap <Leader>q<space> <Plug>qf_qf_switch
nmap <leader>q] <Plug>qf_qf_next
nmap <leader>q[ <Plug>qf_qf_previous
nmap <leader>ql] <Plug>qf_loc_next
nmap <leader>ql[ <Plug>qf_loc_previous
nmap <Leader>qt <Plug>qf_qf_stay_toggle
nmap <Leader>qlt <Plug>qf_loc_stay_toggle
" }}}
" completion {{{
set shortmess+=c
set complete-=i " don't complete from all included files
inoremap <expr> <CR> (pumvisible() ? "\<C-y>\<CR>" : "\<CR>")
inoremap <expr> <tab> (pumvisible() ? "\<C-n>" : "\<tab>")
inoremap <expr> <S-tab> (pumvisible() ? "\<C-p>" : "\<S-tab>")
" let g:cm_sources_override = {
"             \ 'cm-tags': {'enable':0}
"             \ }
augroup vimtex_completion
    autocmd!
    autocmd User CmSetup call cm#register_source({
                \ 'name' : 'vimtex',
                \ 'priority': 8,
                \ 'scoping': 1,
                \ 'scopes': ['tex'],
                \ 'abbreviation': 'tex',
                \ 'cm_refresh_patterns': g:vimtex#re#ncm,
                \ 'cm_refresh': {'omnifunc': 'vimtex#complete#omnifunc'},
                \ })
augroup END
" }}}
" linting {{{
nmap <silent> <leader>l] <Plug>(ale_next_wrap)
nmap <silent> <leader>l[ <Plug>(ale_previous_wrap)
let g:ale_linters = {
            \ 'latex': ['lacheck', 'proselint', 'write-good', 'redpen']
            \}
" }}}
" tags {{{
nmap <leader>tt :TagbarToggle<CR>
" }}}

" Keybindings
"============================================
" searching {{{
" fix search direction
" from: https://www.reddit.com/r/vim/comments/7l5pei/tips_and_tricks_for_the_intermediate_vimmer_aka/
nnoremap <expr> n  'Nn'[v:searchforward] . 'zz'
nnoremap <expr> N  'nN'[v:searchforward] . 'zz'
" center after searching
" nnoremap N Nzz
" nnoremap n nzz
cnoremap <expr> <CR> getcmdtype() =~ '[/?]' ? '<CR>zz' : '<CR>'
" }}}
" movement {{{
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

" }}}
" windows, buffers {{{

" remap window movement
nnoremap <leader>w<space> <C-w>w
nnoremap <leader>wr <C-w>r
nnoremap <leader>wR <C-w>R
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wh <C-w>h
nnoremap <leader>wl <C-w>l
nnoremap <leader>wJ <C-w>J
nnoremap <leader>wK <C-w>K
nnoremap <leader>wH <C-w>H
nnoremap <leader>wL <C-w>L
nnoremap <leader>wc <C-w>c
nnoremap <leader>wo <C-w>o
nnoremap <leader>ws <C-w>s
nnoremap <leader>wn <C-w>n
nnoremap <leader>wv <C-w>v

" remap buffer movement
nnoremap <leader>bb :ls<CR>
nnoremap <leader>b] :bnext<CR>
nnoremap <leader>b[ :bprevious<CR>
nnoremap <leader>b<space> <C-^>
" nnoremap <leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <silent> <leader>bd :Sayonara!<CR>
nnoremap <silent> <leader>bD :Sayonara<CR>

" quickfix
" nnoremap <leader>qo :copen<CR>
" nnoremap <leader>qc :cclose<CR>
" nnoremap <leader>q] :cnext<CR>
" nnoremap <leader>q[ :cprev<CR>
" }}}
" toggles {{{
"call togglebg#map("<F5>")
" clear the highlighting of :set hlsearch 
" My mnemonic: toggle highlight (eventually should re-highlight as well)
if mapcheck('<leader>th', 'n') ==# ''
    nnoremap <silent> <leader>th :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif
" }}}
" sessions and views {{{
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
" }}}
" file {{{
"   editor - dotfile, reload
nnoremap <leader>fed :e $MYVIMRC<CR>
nnoremap <leader>fer :so $MYVIMRC<CR>
" }}}
" package {{{
" update, reload/recache
nnoremap <leader>pu :call dein#update()<CR>
nnoremap <leader>pr :call dein#recache_runtimepath()<CR>
" }}}
" high/mid/low movement {{{
nnoremap zg zz " z{t,g,b} do same thing
" nnoremap zq H
" nnoremap za M
" nnoremap zz L
" }}}


let g:tex_flavor='latex'
" latex {{{
" ======================================
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':


let g:tex_subscripts = " "
" let g:tex_conceal=""
let g:tex_conceal="abdg"               " conceal bold and italic, no sub/superscripts: see tex_supersub
set conceallevel=2
" hi Conceal guibg=bg guifg=fg
let g:tex_comment_nospell = 1           " No spellcheck inside comments
" Vimtex options go here

let g:vimtex_view_method = 'zathura'
" from: https://www.reddit.com/r/vim/comments/7c7wd9/vim_vimtex_zathura_on_macos/
" let g:vimtex_view_zathura_hook_callback = 'ZathuraCallbackHook'
" function! ZathuraCallbackHook() dict
"   call self.xwin_send_keys('R')
" endfunction

let g:vimtex_compiler_progname = 'nvr'
" from: https://github.com/lervag/vimtex/issues/383
let g:vimtex_view_use_temp_files=0

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

" let g:vimtex_delim_list = {
"             \ 'env_math' : {
"             \   'name' : [
"             \     ['\(', '\)'],
"             \     ['\[', '\]'],
"             \     ['$$', '$$'],
"             \     ['$', '$'],
"             \     ['\begin{dmath}', '\end{dmath}'],
"             \     ['\begin{dmath*}', '\end{dmath*}']
"             \   ],
"             \   're' : [
"             \     ['\\(', '\\)'],
"             \     ['\\\@<!\\\[', '\\\]'],
"             \     ['\$\$', '\$\$'],
"             \     ['\$', '\$'],
"             \   ],
"             \ }
"             \}


" Compile on initialization, cleanup on quit
augroup vimtex_event_1 autocmd!
  autocmd User VimtexEventQuit     call vimtex#compiler#clean(0)
  " autocmd User VimtexEventInitPost call vimtex#compiler#compile()
augroup END
" nnoremap <localleader>la <plug>(vimtex-compile-ss) " maybe needs @ buffer local

" " let g:vimtex_fold_enabled = 1

let g:vimtex_indent_on_ampersands = 0

let g:vimtex_quickfix_latexlog = {
            \ 'overfull' : 0,
            \ 'underfull' : 0,
            \}

" insert maps {{{
let g:vimtex_imaps_leader = ';'
let g:vimtex_imaps_disabled = [';']

call vimtex#imaps#add_map({ 'lhs' : '1', 'rhs' : '^{-1}' })
call vimtex#imaps#add_map({ 'lhs' : '2', 'rhs' : '\sqrt' })
call vimtex#imaps#add_map({ 'lhs' : 't', 'rhs' : '^\top', 'leader' : '`' })
"call vimtex#imaps#add_map({ 'lhs' : ' ', 'rhs' : '; ' })

" call vimtex#imaps#add_map({ 'lhs' : '1', 'rhs' : '\mathcal{}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cA', 'rhs' : '\mathcal{A}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cB', 'rhs' : '\mathcal{B}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cC', 'rhs' : '\mathcal{C}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cD', 'rhs' : '\mathcal{D}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cE', 'rhs' : '\mathcal{E}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cF', 'rhs' : '\mathcal{F}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cG', 'rhs' : '\mathcal{G}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cH', 'rhs' : '\mathcal{H}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cI', 'rhs' : '\mathcal{I}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cJ', 'rhs' : '\mathcal{J}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cK', 'rhs' : '\mathcal{K}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cL', 'rhs' : '\mathcal{L}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cM', 'rhs' : '\mathcal{M}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cN', 'rhs' : '\mathcal{N}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cO', 'rhs' : '\mathcal{O}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cP', 'rhs' : '\mathcal{P}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cQ', 'rhs' : '\mathcal{Q}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cR', 'rhs' : '\mathcal{R}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cS', 'rhs' : '\mathcal{S}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cT', 'rhs' : '\mathcal{T}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cU', 'rhs' : '\mathcal{U}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cV', 'rhs' : '\mathcal{V}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cW', 'rhs' : '\mathcal{W}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cX', 'rhs' : '\mathcal{X}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cY', 'rhs' : '\mathcal{Y}', 'leader' : '\' })
" call vimtex#imaps#add_map({ 'lhs' : 'cZ', 'rhs' : '\mathcal{Z}', 'leader' : '\' })

" }}}

" }}}

set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim

" vim:foldmethod=marker
