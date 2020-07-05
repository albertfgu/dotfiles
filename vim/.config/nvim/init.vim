" Plugins {{{
call plug#begin('~/.local/share/nvim/plugged')
" cosmetics {{{
" ============================================
" xolox/vim-colorscheme-switcher
" Plug 'rafi/awesome-vim-colorschemes'
" Plug 'flazz/vim-colorschemes'
" Plug 'atelierbram/Base2Tone-vim'
" Plug 'atelierbram/vim-colors_atelier-schemes'
" Plug 'aonemd/kurio'
"Plug 'fcpg/vim-fahrenheit'
"Plug 'frankier/neovim-colors-solarized-truecolor-only'
"Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'rakr/vim-two-firewatch'
"Plug 'romainl/Apprentice'
"Plug 'rakr/vim-togglebg'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'dylanaraps/wal.vim'

" status bar
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'

" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'Yggdroot/indentLine'
" gcmt/wildfire.vim  " seems to be subsumed by sandwich
" Plug 'xtal8/traces.vim' " This plugin highlights patterns and ranges for Ex commands in Command-line mode.
" Plug 'machakann/vim-highlightedyank' " replaced by neovim options
" romainl/vim-cool
Plug 'myusuf3/numbers.vim'
" Plug 'simnalamburt/vim-mundo'

" neither of these rainbow parens seem to work with vimtex
Plug 'junegunn/rainbow_parentheses.vim' " doesn't seem to work with latex
" Plug 'luochen1990/rainbow'
" djdt/pyparens.nvim
" bounceme/poppy.vim
" }}}
" movement, windows, buffers {{{
" ========
Plug 'rhysd/clever-f.vim'
" Plug 'justinmk/vim-sneak' " https://vimawesome.com/plugin/vim-sneak
" Plug 'yuttie/comfortable-motion.vim' " https://vimawesome.com/plugin/vim-sneak

" Windows 
" https://github.com/qpkorr/vim-bufkill
" Plug 'psolyca/vim-bbye'
Plug 'moll/vim-bbye'
" Plug 'mhinz/vim-sayonara'
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
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
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
" Plug 'roxma/nvim-completion-manager'
" Plug 'roxma/nvim-yarp'
" Plug 'ncm2/ncm2'
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" }}}
" quickfix, linting {{{
" Plug 'w0rp/ale'
Plug 'romainl/vim-qf'
" }}}
" tags {{{
Plug 'ludovicchabant/vim-gutentags'
" alternatives: vim-tags, vim-autotag, vim-automatic-ctags
" Plug 'majutsushi/tagbar'
" Plug 'liuchengxu/vista.vim'
" }}}
" sessions {{{
" Plug 'thaerkh/vim-workspace'
" Plug 'tpope/vim-obsession'
" Plug 'dhruvasagar/vim-prosession'
" Plug 'kopischke/vim-stay'
" }}}
" file browser {{{
" Plug 'justinmk/vim-dirvish'
" tpope/vinegar
Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'lambdalisue/fern.vim'
" Plug 'hrsh7th/fern-mapping-collapse-or-leave.vim'
" }}}
" language tools {{{
Plug 'lervag/vimtex'
" sheerun/vim-polyglot " language pack
" for option is generally not needed as most plugins for specific file types usually don't have too much code in plugin directory. You might want to examine the output of vim --startuptime before applying the option.
" - from vim-plug page
"
" Plug 'sillybun/vim-repl'
Plug 'jpalardy/vim-slime'
" }}}
" version control {{{
Plug 'airblade/vim-gitgutter'
" }}}
" misc. {{{
" =====
Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-unimpaired'
" Plug 'tpope/vim-repeat'
" AndrewRadev/splitjoin.vim
" Plug 'roxma/vim-tmux-clipboard'

" sunaku/vim-shortcut: discoverable shortcut system, inspired by Spacemacs, powered by fzf.vim
" bryphe/oni " full IDE functionality
" Plug 'liuchengxu/vim-which-key'
Plug 'kalekundert/vim-coiled-snake'
Plug 'Konfekt/FastFold'
Plug 'junegunn/vim-peekaboo'
" }}}
" Plug 'vimwiki/vimwiki'
call plug#end()
" }}}

" colors {{{
" =================
set termguicolors
set background=dark
" colorscheme nord
" colorscheme wal
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
set sw=4  " shiftwidth
set sts=4 "softtabstop
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
nnoremap <leader>tn :set invnumber invrelativenumber<cr>
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
set list                " Show problematic characters.

" nnoremap Y y$           " a bit controversial (yank can be seen as fundamentally different from delete/change; compare to v and V)

" Refresh unchanged files
" http://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim
set autoread
set sessionoptions-=options

" }}}

" Plugin configuration
"===========================================
" statusline {{{
" let g:lightline = {
"       \ 'colorscheme': 'wombat',
"       \ }
" Below settings taken from vista README
" let g:lightline = {
"       \ 'colorscheme': 'wombat',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'readonly', 'filename', 'modified', 'method' ] ]
"       \ },
"       \ 'component_function': {
"       \ },
"       \ }
let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \   'cocstatus': 'coc#status'
            \ },
            \ }

" Use auocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

" let g:airline_theme = 'gruvbox'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#tab_nr_type = 2
" let g:airline#extensions#tabline#buffer_nr_show = 1

" let g:airline#extensions#tabline#buffer_idx_mode = 1
" nmap <leader>b1 <Plug>AirlineSelectTab1
" nmap <leader>b2 <Plug>AirlineSelectTab2
" nmap <leader>b3 <Plug>AirlineSelectTab3
" nmap <leader>b4 <Plug>AirlineSelectTab4
" nmap <leader>b5 <Plug>AirlineSelectTab5
" nmap <leader>b6 <Plug>AirlineSelectTab6
" nmap <leader>b7 <Plug>AirlineSelectTab7
" nmap <leader>b8 <Plug>AirlineSelectTab8
" nmap <leader>b9 <Plug>AirlineSelectTab9
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
" let g:comfortable_motion_no_default_key_mappings = 1
" nnoremap <A-j> <C-e>
" nnoremap <A-k> <C-y>
" nnoremap <C-j> <C-d>
" nnoremap <C-k> <C-u>
" " nnoremap <silent> <C-j> :call comfortable_motion#flick(100)<CR>
" " nnoremap <silent> <C-k> :call comfortable_motion#flick(-100)<CR>
" nnoremap <silent> <C-A-j> :call comfortable_motion#flick(100)<CR>
" nnoremap <silent> <C-A-k> :call comfortable_motion#flick(-100)<CR>
" let g:comfortable_motion_interval = 1000.0 / 60
" let g:comfortable_motion_friction = 80.0
" let g:comfortable_motion_air_drag = 2.0
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
" peekaboo {{{
let g:peekaboo_delay = 200
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
" let g:highlightedyank_timeout = 50
" https://www.reddit.com/r/neovim/comments/gofplz/neovim_has_added_the_ability_to_highlight_yanked/
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 100)
augroup END
" }}}
" undotree {{{
set undofile " persistent undo
nnoremap <leader>ut :MundoToggle<CR>
" }}}

" fzf {{{
" default split is C-x
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split', 
  \ 'ctrl-v': 'vsplit' }
nnoremap <leader>ff :FZF<CR>
nnoremap <leader>sb :History<CR>
nnoremap <leader>sf :Files<CR>
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>sw :Windows<CR>
nnoremap <leader>sl :BLines<CR>
nnoremap <leader>sm :Maps<CR>
nnoremap <leader>ss :Snippets<CR>
" Mapping selecting mappings
" nmap <leader><tab> <plug>(fzf-maps-n)
" xmap <leader><tab> <plug>(fzf-maps-x)
" omap <leader><tab> <plug>(fzf-maps-o)
" }}}
" snippets {{{
" let g:UltiSnipsExpandTrigger="<tab>"
imap <C-b> <nop>
imap <C-f> <nop>
" let g:UltiSnipsExpandTrigger="<Plug>(ultisnips_expand)" "there is a bug with this when forward trigger and expand trigger on same key;
" it will expand before jumping (can probably define mappings calling UltiSnips#ExpandSnippetOrJump() to manually get right behavior)
" inoremap <silent> <C-l> <C-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<CR>
let g:UltiSnipsExpandTrigger="<C-f>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"
let g:UltiSnipsJumpForwardTrigger="<C-f>"
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
" Some servers have issues with backup files, see coc.nvim#649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

set shortmess+=c
set complete-=i " don't complete from all included files

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>g] <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>gn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>gf  <Plug>(coc-format-selected)
nmap <leader>gf  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>ga  <Plug>(coc-codeaction-selected)
nmap <leader>ga  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>gac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>gqf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>ca  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>co  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>cs  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>ck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR><Paste>

" " ncm settings?
" inoremap <expr> <CR> (pumvisible() ? "\<C-y>\<CR>" : "\<CR>")
" inoremap <expr> <tab> (pumvisible() ? "\<C-n>" : "\<tab>")
" inoremap <expr> <S-tab> (pumvisible() ? "\<C-p>" : "\<S-tab>")
" let g:cm_sources_override = {
"             \ 'cm-tags': {'enable':0}
"             \ }
"
" augroup vimtex_completion
"     autocmd!
"     autocmd User CmSetup call cm#register_source({
"                 \ 'name' : 'vimtex',
"                 \ 'priority': 8,
"                 \ 'scoping': 1,
"                 \ 'scopes': ['tex'],
"                 \ 'abbreviation': 'tex',
"                 \ 'cm_refresh_patterns': g:vimtex#re#ncm,
"                 \ 'cm_refresh': {'omnifunc': 'vimtex#complete#omnifunc'},
"                 \ })
" augroup END
" }}}
" linting {{{
nmap <silent> <leader>l] <Plug>(ale_next_wrap)
nmap <silent> <leader>l[ <Plug>(ale_previous_wrap)
let g:ale_linters = {
            \ 'latex': ['lacheck', 'proselint', 'write-good', 'redpen']
            \}
" }}}
" tags {{{
" nmap <leader>tt :TagbarToggle<CR>
" let g:gutentags_ctags_tagfile = ".tags"
let g:gutentags_ctags_exclude = [
      \ '*.git', '*.svg', '*.hg',
      \ "*.pyc",
      \ "*.bak", '*.tmp', '*.cache',
      \ '*.swp', '*.swo',
      \ '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png',
      \ '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2',
      \ '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx',
      \ ]
let g:gutentags_cache_dir = expand('~/.cache/vim/ctags/')
command! -nargs=0 GutentagsClearCache call system('rm ' . g:gutentags_cache_dir . '/*')

let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_ctags_extra_args = [
      \ '--tag-relative=yes',
      \ '--fields=+ailmnS',
      \ ]
" Vista settings
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'coc'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'python': 'coc',
  \ 'cpp': 'nvim_lsp',
  \ }

" " Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
" let g:vista#renderer#icons = {
" \   "function": "\uf794",
" \   "variable": "\uf71b",
" \  }
" }}}
" repl {{{
let g:slime_target = "neovim"
let g:slime_python_ipython = 1
" }}}
" gitgutter {{{
set updatetime=100
nnoremap <leader>tgg :GitGutterToggle<cr>
nnoremap <leader>tgb :GitGutterBufferToggle<cr>
nnoremap <leader>tgs :GitGutterSignsToggle<cr>
nnoremap <leader>tgh :GitGutterLineHighlightsToggle :GitGutterLineNrHighlightsToggle<cr>

nnoremap <leader>tgq :GitGutterQuickFix<cr>

" remap c(hange) to h(unk)
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

omap ih <Plug>(GitGutterTextObjectInnerPending)
omap ah <Plug>(GitGutterTextObjectOuterPending)
xmap ih <Plug>(GitGutterTextObjectInnerVisual)
xmap ah <Plug>(GitGutterTextObjectOuterVisual)
" }}}
" file browser {{{
let g:lf_map_keys = 0
" map <leader>f :Lf<CR>
let g:lf_command_override = 'lf -command "set hidden"'

" floaterm
command! LF FloatermNew lf

" fern
command! LFern Fern . -reveal=%
" nmap <buffer><silent> h <Plug>(fern-action-collapse-or-leave)

" }}}
" firenvim {{{
let fc = g:firenvim_config['localSettings']
" let fc['.*'] = { 'takeover': 'never' } " always, empty, nonempty, never, once

au BufEnter github.com_*.txt set filetype=markdown
au BufEnter overleaf.com_*.txt set filetype=tex
" }}}
" {{{ misc
vnoremap gy ygv<Plug>Commentary " is x mode more appropriate? (just visual no select)
" nnoremap <leader><leader>dw :g/^\s\+$/normal<space>d$
nnoremap <leader><leader>dtw :%s/\s\+$//e<cr> " delete trailing whitespace
" }}}

" " wiki {{{
" let g:vimwiki_list = [{'path': '~/vimwiki'}]
" nmap <leader>vw <Plug>VimwikiIndex
" nmap <leader>vt <Plug>VimwikiTabIndex
" nmap <leader>vs <Plug>VimwikiUISelect
" nmap <leader>vdi <Plug>VimwikiDiaryIndex
" nmap <leader>vdn <Plug>VimwikiMakeDiaryNote
" nmap <leader>vdt <Plug>VimwikiTabMakeDiaryNote
" nmap <leader>vdy <Plug>VimwikiMakeYesterdayDiaryNote
" nmap <leader>vdm <Plug>VimwikiMakeTomorrowDiaryNote
" nmap <leader>vc <Plug>Vimwiki2HTML
" nmap <leader>vv <Plug>Vimwiki2HTMLBrowse
" nmap <leader>v<Leader>i <Plug>VimwikiDiaryGenerateLinks
" nmap <leader>vx <Plug>VimwikiDeleteLink
" nmap <leader>vr <Plug>VimwikiRenameLink

" " :map > <Plug>VimwikiIncreaseLvlSingleItem
" " :map <A->> <Plug>VimwikiIncreaseLvlWholeItem
" " :map < <Plug>VimwikiDecreaseLvlSingleItem
" " :map <A-<> <Plug>VimwikiDecreaseLvlWholeItem
" map <A-l> <Plug>VimwikiIncreaseLvlSingleItem
" map <A-L> <Plug>VimwikiIncreaseLvlWholeItem
" map <A-h> <Plug>VimwikiDecreaseLvlSingleItem
" map <A-H> <Plug>VimwikiDecreaseLvlWholeItem
" imap <A-l> <Plug>VimwikiIncreaseLvlSingleItem
" " imap <A-L> <Plug>VimwikiIncreaseLvlWholeItem
" imap <A-h> <Plug>VimwikiDecreaseLvlSingleItem
" " imap <A-H> <Plug>VimwikiDecreaseLvlWholeItem
" let g:vimwiki_folding = 'list:quick'
" " }}}
" {{{ which-key
let g:mapleader = "\<space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<space>'<CR>
nnoremap <leader>      :<c-u>WhichKey '<space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
" }}}
" {{{ FastFold
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_force = 1 " prevent all fold methods (not just expr and syntax) from recomputing on every buffer change
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:fastfold_fold_command_suffixes = ['x','X','a','A','o','O','c','C','r','R','m','M']
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
" cnoremap <expr> <CR> getcmdtype() =~ '[/?]' ? '<CR>zz' : '<CR>'
" }}}
" movement {{{
" --------------------------------
" remap arrow keys to screen line navigation instead of file line
nnoremap <up> gk
nnoremap <down> gj
inoremap <up> <C-o><up>
inoremap <down> <C-o><down>
" more mnemonic jump list
nnoremap <S-tab> <C-o> " opposite of tab for jumping backwards
" nnoremap <A-[> <C-o>
" nnoremap <A-]> <C-i> " TODO: in help mode this is already bound to show TOC
" more sensible screen movement (REPLACED BY COMFORTABLE-MOTION)
nnoremap <A-j> <C-e>
nnoremap <A-k> <C-y>
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>
vnoremap <C-j> <C-d>
vnoremap <C-k> <C-u>
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
nnoremap <leader>wd <C-w>c
nnoremap <leader>wo <C-w>o
nnoremap <leader>ws <C-w>s
nnoremap <leader>wn <C-w>n
nnoremap <leader>wv <C-w>v
nnoremap <leader>w= <C-w>=

" remap buffer movement
" nnoremap <leader>bb :ls<CR> " replaced by fzf
nnoremap <leader>b] :bnext<CR>
nnoremap <leader>b[ :bprevious<CR>
" nnoremap [b :bprevious<CR>
" nnoremap ]b :bnext<CR>
nnoremap <leader>b<space> <C-^>
" nnoremap <leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>
" nnoremap <silent> <leader>bd :Sayonara!<CR>
" nnoremap <silent> <leader>bD :Sayonara<CR>
" nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>bd :Bdelete<cr>
command! -bang -complete=buffer -nargs=? Bclose Bdelete<bang> <args>


" quickfix
" nnoremap <leader>qo :copen<CR>
" nnoremap <leader>qc :cclose<CR>
" nnoremap <leader>q] :cnext<CR>
" nnoremap <leader>q[ :cprev<CR>
" }}}

" terminal {{{
" tnoremap <leader>wj <C-\><C-n><C-w>j
" tnoremap <leader>wk <C-\><C-n><C-w>k
" tnoremap <leader>wh <C-\><C-n><C-w>h
" tnoremap <leader>wl <C-\><C-n><C-w>l
" tnoremap <leader>ws <C-\><C-n><C-w>s:term<CR>
" tnoremap <leader>wv <C-\><C-n><C-w>v:term<CR>
inoremap <A-j> <C-w>j
inoremap <A-k> <C-w>k
inoremap <A-h> <C-w>h
inoremap <A-l> <C-w>l
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-h> <C-w>h
nnoremap <A-l> <C-w>l
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-l> <C-\><C-n><C-w>l
" }}}
"
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
nnoremap <leader>fs :w<CR>
nnoremap <leader>fr :e<CR>
nnoremap <leader>fS :bufdo w<CR>
nnoremap <leader>fR :bufdo e<CR>
"   editor - dotfile, reload
nnoremap <leader>fed :e $MYVIMRC<CR>
nnoremap <leader>fer :so $MYVIMRC<CR>
" }}}
" package {{{
" update, reload/recache
" nnoremap <leader>pu :call dein#update()<CR>
" nnoremap <leader>pr :call dein#recache_runtimepath()<CR>
" }}}
" folds and scrolling {{{
" nnoremap zg zz " z{t,g,b} do same thing
nnoremap z<cr> zz " z{t,g,b} do same thing
nnoremap zh zc
nnoremap zl zo
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

" nnoremap <leader>tc :set conceallevel=0<CR>
" nnoremap <leader>tc :set conceallevel=0<CR>
nnoremap <leader>tc :setlocal conceallevel=<C-r>=&conceallevel == 0 ? '2' : '0'<cr><cr>


let g:tex_subscripts = " "
" let g:tex_conceal=""
let g:tex_conceal="abdg"               " conceal bold and italic, no sub/superscripts: see tex_supersub
set conceallevel=2
" hi Conceal guibg=bg guifg=fg
let g:tex_comment_nospell = 1           " No spellcheck inside comments
" Vimtex options go here

let g:vimtex_view_method = 'skim'
" from: https://www.reddit.com/r/vim/comments/7c7wd9/vim_vimtex_zathura_on_macos/
" let g:vimtex_view_zathura_hook_callback = 'ZathuraCallbackHook'
" function! ZathuraCallbackHook() dict
"   call self.xwin_send_keys('R')
" endfunction

let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_compiler_latexmk = {
        \ 'options' : [
        \   '-pdf',
        \   '-verbose',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \   '-shell-escape',
        \ ],
        \}
" from: https://github.com/lervag/vimtex/issues/383
let g:vimtex_view_use_temp_files=0

" let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
" let g:vimtex_view_general_options = '-r @line @pdf @tex'    " @tex doesn't seem to be necessary right now
" let g:vimtex_view_general_options_latexmk = '-r -g @begin'     " leaving out -g because autofocus is annoying, reminding me to quit skim
" let g:vimtex_compiler_callback_hooks = ['UpdateSkim'] " let g:vimtex_view_general_callback = 'UpdateSkim'?
"function! UpdateSkim(status)
"    if !a:status | return | endif
"    let cmd = [g:vimtex_view_general_viewer, "-r"]
"    if !empty(system("pgrep Skim"))
"        call extend(cmd, ["-g"])
"    endif
"    let out = b:vimtex.out()
"    let l:tex = expand('%:p')
"    call jobstart(cmd + [line('.'), out])
"    "if has('nvim')
"    "  call jobstart(cmd + [line('.'), out])
"    "elseif has('job')
"    "  call job_start(cmd + [line('.'), out])
"    "else
"    "  call system(join(cmd + [line('.'), shellescape(out)], ' '))
"    "endif
"endfunction

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

" Disable overfull/underfull \hbox and all package warnings
let g:vimtex_quickfix_latexlog = {
      \ 'references' : 0,
      \ 'overfull' : 0,
      \ 'underfull' : 0,
      \ 'packages' : {
      \   'default' : 0,
      \ },
      \}

let g:vimtex_quickfix_mode=2

" insert maps {{{
let g:vimtex_imaps_leader = ';'
let g:vimtex_imaps_disabled = [';']

call vimtex#imaps#add_map({ 'lhs' : '1', 'rhs' : '^{-1}' })
call vimtex#imaps#add_map({ 'lhs' : '2', 'rhs' : '\sqrt' })
" call vimtex#imaps#add_map({ 'lhs' : '^', 'rhs' : '\land' })
call vimtex#imaps#add_map({ 'lhs' : 't', 'rhs' : '^\top', 'leader' : '`' })
call vimtex#imaps#add_map({ 'lhs' : 't', 'rhs' : '^\top', 'leader' : ';;' })
call vimtex#imaps#add_map({ 'lhs' : 'N', 'rhs' : '\nabla'})
"call vimtex#imaps#add_map({ 'lhs' : ' ', 'rhs' : '; ' })

" call vimtex#imaps#add_map({ 'lhs' : '1', 'rhs' : '\mathcal{}', 'leader' : '\' })
let g:vimtex_imaps_disabled = ['c']
call vimtex#imaps#add_map({ 'lhs' : 'j', 'rhs' : '\xi' })
call vimtex#imaps#add_map({ 'lhs' : 'x', 'rhs' : '\chi' })
call vimtex#imaps#add_map({ 'lhs' : ';jh', 'rhs' : '\leftarrow' })
call vimtex#imaps#add_map({ 'lhs' : ';jj', 'rhs' : '\downarrow' })
call vimtex#imaps#add_map({ 'lhs' : ';jk', 'rhs' : '\uparrow' })
call vimtex#imaps#add_map({ 'lhs' : ';jl', 'rhs' : '\rightarrow' })

" call vimtex#imaps#add_map({ 'lhs' : 'cA', 'rhs' : '\mathcal{A}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cB', 'rhs' : '\mathcal{B}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cC', 'rhs' : '\mathcal{C}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cD', 'rhs' : '\mathcal{D}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cE', 'rhs' : '\mathcal{E}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cF', 'rhs' : '\mathcal{F}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cG', 'rhs' : '\mathcal{G}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cH', 'rhs' : '\mathcal{H}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cI', 'rhs' : '\mathcal{I}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cJ', 'rhs' : '\mathcal{J}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cK', 'rhs' : '\mathcal{K}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cL', 'rhs' : '\mathcal{L}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cM', 'rhs' : '\mathcal{M}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cN', 'rhs' : '\mathcal{N}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cO', 'rhs' : '\mathcal{O}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cP', 'rhs' : '\mathcal{P}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cQ', 'rhs' : '\mathcal{Q}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cR', 'rhs' : '\mathcal{R}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cS', 'rhs' : '\mathcal{S}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cT', 'rhs' : '\mathcal{T}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cU', 'rhs' : '\mathcal{U}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cV', 'rhs' : '\mathcal{V}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cW', 'rhs' : '\mathcal{W}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cX', 'rhs' : '\mathcal{X}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cY', 'rhs' : '\mathcal{Y}' })
" call vimtex#imaps#add_map({ 'lhs' : 'cZ', 'rhs' : '\mathcal{Z}' })

" " TODO figure out how to turn this into a macro
" call vimtex#imaps#add_map({ 'lhs' : 'va', 'rhs' : '\mathbf{a}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vb', 'rhs' : '\mathbf{b}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vc', 'rhs' : '\mathbf{c}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vd', 'rhs' : '\mathbf{d}' })
" call vimtex#imaps#add_map({ 'lhs' : 've', 'rhs' : '\mathbf{e}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vf', 'rhs' : '\mathbf{f}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vg', 'rhs' : '\mathbf{g}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vh', 'rhs' : '\mathbf{h}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vi', 'rhs' : '\mathbf{i}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vj', 'rhs' : '\mathbf{j}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vk', 'rhs' : '\mathbf{k}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vl', 'rhs' : '\mathbf{l}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vm', 'rhs' : '\mathbf{m}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vn', 'rhs' : '\mathbf{n}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vo', 'rhs' : '\mathbf{o}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vp', 'rhs' : '\mathbf{p}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vq', 'rhs' : '\mathbf{q}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vr', 'rhs' : '\mathbf{r}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vs', 'rhs' : '\mathbf{s}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vt', 'rhs' : '\mathbf{t}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vu', 'rhs' : '\mathbf{u}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vv', 'rhs' : '\mathbf{v}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vw', 'rhs' : '\mathbf{w}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vx', 'rhs' : '\mathbf{x}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vy', 'rhs' : '\mathbf{y}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vz', 'rhs' : '\mathbf{z}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vA', 'rhs' : '\mathbf{A}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vB', 'rhs' : '\mathbf{B}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vC', 'rhs' : '\mathbf{C}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vD', 'rhs' : '\mathbf{D}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vE', 'rhs' : '\mathbf{E}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vF', 'rhs' : '\mathbf{F}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vG', 'rhs' : '\mathbf{G}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vH', 'rhs' : '\mathbf{H}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vI', 'rhs' : '\mathbf{I}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vJ', 'rhs' : '\mathbf{J}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vK', 'rhs' : '\mathbf{K}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vL', 'rhs' : '\mathbf{L}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vM', 'rhs' : '\mathbf{M}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vN', 'rhs' : '\mathbf{N}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vO', 'rhs' : '\mathbf{O}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vP', 'rhs' : '\mathbf{P}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vQ', 'rhs' : '\mathbf{Q}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vR', 'rhs' : '\mathbf{R}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vS', 'rhs' : '\mathbf{S}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vT', 'rhs' : '\mathbf{T}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vU', 'rhs' : '\mathbf{U}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vV', 'rhs' : '\mathbf{V}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vW', 'rhs' : '\mathbf{W}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vX', 'rhs' : '\mathbf{X}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vY', 'rhs' : '\mathbf{Y}' })
" call vimtex#imaps#add_map({ 'lhs' : 'vZ', 'rhs' : '\mathbf{Z}' })
" call vimtex#imaps#add_map({ 'lhs' : 'v1', 'rhs' : '\mathbf{1}' })
" call vimtex#imaps#add_map({ 'lhs' : ';bc', 'rhs' : '\mathbb{C}' })
" call vimtex#imaps#add_map({ 'lhs' : ';be', 'rhs' : '\mathbb{E}' })
" call vimtex#imaps#add_map({ 'lhs' : ';bi', 'rhs' : '\mathbb{I}' })
" call vimtex#imaps#add_map({ 'lhs' : ';bn', 'rhs' : '\mathbb{N}' })
" call vimtex#imaps#add_map({ 'lhs' : ';bq', 'rhs' : '\mathbb{Q}' })
" call vimtex#imaps#add_map({ 'lhs' : ';br', 'rhs' : '\mathbb{R}' })
" call vimtex#imaps#add_map({ 'lhs' : ';bv', 'rhs' : '\mathbb{V}' })

        " \ { 'lhs' : '/',  'rhs' : 'vimtex#imaps#style_math("slashed")', 'expr' : 1, 'leader' : '#'},
" call vimtex#imaps#add_map( { 'lhs' : 'v',  'rhs' : 'vimtex#imaps#style_math("mathbf")',   'expr' : 1} ) # conflicts with varepsilon
        " \ { 'lhs' : 'f',  'rhs' : 'vimtex#imaps#style_math("mathfrak")', 'expr' : 1, 'leader' : '#'},
call vimtex#imaps#add_map( { 'lhs' : 'b',  'rhs' : 'vimtex#imaps#style_math("mathbf")',   'expr' : 1, 'leader' : ';;'} )
call vimtex#imaps#add_map( { 'lhs' : 'c', 'rhs' : 'vimtex#imaps#style_math("mathcal")',  'expr' : 1, 'leader' : ';;'} )
call vimtex#imaps#add_map( { 'lhs' : 's',  'rhs' : 'vimtex#imaps#style_math("mathsf")',   'expr' : 1, 'leader' : ';;'} )
call vimtex#imaps#add_map( { 'lhs' : 'B', 'rhs' : 'vimtex#imaps#style_math("mathbb")',   'expr' : 1, 'leader' : ';;'} )
call vimtex#imaps#add_map( { 'lhs' : '-',  'rhs' : 'vimtex#imaps#style_math("overline")', 'expr' : 1} )
call vimtex#imaps#add_map( { 'lhs' : '~',  'rhs' : 'vimtex#imaps#style_math("tilde")',    'expr' : 1} )
call vimtex#imaps#add_map( { 'lhs' : '^',  'rhs' : 'vimtex#imaps#style_math("hat")',      'expr' : 1} )

" }}}

" integrations
nnoremap <localleader>ff :call vimtex#fzf#run()<cr>
" }}}

set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim

" for chromeos:
" https://chromium.googlesource.com/apps/libapps/+/master/nassh/doc/FAQ.md#Is-OSC-52-aka-clipboard-operations_supported
" https://chromium.googlesource.com/apps/libapps/+/master/hterm/etc/osc52.vim
" source ~/osc52.vim
" vmap "+y :!xclip -f -sel clip
" map "+p :r!xclip -o -sel clip
" source ~/.gvimrc " Google vimrc

" vim:foldmethod=marker
