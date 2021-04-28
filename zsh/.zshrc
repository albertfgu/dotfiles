# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Plugin manager

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk


##################
# Plugins        #
##################

# TODO maybe only install some of these programs if not already installed by package manager

# neovim
zinit ice from"gh-r" as"program" mv"nvim* -> nvim" pick"nvim/bin/nvim"
zinit light neovim/neovim

# tmux
zinit ice from"gh-r" as"program" mv"tmux* -> tmux"
zinit light tmux/tmux

# cd
zinit ice wait"0a" lucid
# zinit light b4b4r07/enhancd
# export ENHANCD_FILTER=fzf
zinit load changyuheng/zsh-interactive-cd

# bookmarks
# zplug "urbainvaes/fzf-marks"
zinit load wfxr/formarks

# git
zinit ice wait lucid
zinit load wfxr/forgit

zinit ice wait"0" lucid as"program" pick"bin/git-dsf"
zinit light zdharma/zsh-diff-so-fancy

# jonas/tig

### terminal utils
zinit ice from"gh-r" as"program" mv"bat* -> bat" pick"bat/bat" atload"alias cat='bat -p'"
zinit light sharkdp/bat

# fzf
# zinit ice lucid wait'0b' from"gh-r" as"program" atload"~/.fzf/install"
# zinit light junegunn/fzf-bin # this is outdated!

# see https://www.reddit.com/r/zsh/comments/efi857/use_fzf_as_zshs_completion_selection_menu/
# zinit ice wait"0" lucid
# zinit light Aloxaf/fzf-tab

# rg
zinit ice from"gh-r" as"program" mv"ripgrep* -> ripgrep" pick"ripgrep/rg"
zinit light BurntSushi/ripgrep

# exa
zinit ice wait"0" lucid from"gh-r" as"program" mv"exa* -> exa"
zinit light ogham/exa
zinit ice wait blockf atpull'zinit creinstall -q .'

# lf
zinit ice from"gh-r" as"program" mv"lf* -> lf"
zinit light gokcehan/lf
zinit snippet 'https://raw.githubusercontent.com/gokcehan/lf/master/etc/lfcd.sh'

# fd
zinit ice as"command" from"gh-r" mv"fd* -> fd" pick"fd/fd"
zinit light sharkdp/fd

# omz history
zplugin snippet OMZ::lib/history.zsh



# HISTORY SUBSTRING SEARCHING
zinit ice wait"0b" lucid atload'bindkey "$terminfo[kcuu1]" history-substring-search-up; bindkey "$terminfo[kcud1]" history-substring-search-down' # what does this do?
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey -M viins "^P" history-substring-search-up
bindkey -M viins "^N" history-substring-search-down
zinit ice wait"0" lucid
zinit light zsh-users/zsh-history-substring-search

# Syntax highlighting, Autosuggestions, Completions
# From example http://zdharma.org/zinit/wiki/Example-Minimal-Setup/
zinit wait"0b" lucid light-mode for \
  atinit"zicompinit; zicdreplay" \
      zdharma/fast-syntax-highlighting \
  atload"_zsh_autosuggest_start" \
      zsh-users/zsh-autosuggestions \
  blockf atpull'zinit creinstall -q .' \
      zsh-users/zsh-completions

# from: https://unix.stackexchange.com/questions/230742/bash-zsh-tab-autocomplete-given-initial-command-ignore-certain-files-in-direct
zstyle ':completion:*:*:nvim:*' file-patterns '^*.(pdf|synctex.gz):source-files' '*:all-files'
zstyle ':completion:*:*:open:*' file-patterns '^*.(tex|synctex.gz):source-files' '*:all-files'
zstyle ':fzf-tab:complete:cd:*' extra-opts --preview=$extract'exa -1 --color=always ${~ctxt[hpre]}$in'




##################
# Prompt         #
##################
zinit ice depth=1; zinit light romkatv/powerlevel10k
# zplug "BrandonRoehl/zsh-clean"





##################
# setopt         #
##################
# from: http://joshsymonds.com/blog/2014/06/12/shell-awesomeness-with-prezto/
setopt AUTO_PUSHD     # This makes cd=pushd
setopt AUTO_NAME_DIRS # This will use named dirs when possible
# setopt GLOB_COMPLETE  # If we have a glob this will expand it
setopt PUSHD_MINUS    # swaps the meaning of cd +1 and cd -1
# setopt PUSHD_SILENT # No more annoying pushd messages...
setopt PUSHD_TO_HOME # blank pushd goes to home
setopt PUSHD_IGNORE_DUPS # this will ignore multiple directories for the stack.  Useful?  I dunno.
setopt RM_STAR_WAIT   # 10 second wait if you do something that will delete everything

### History
# some of this is covered by OMZ history plugin
# alias h=history
# export HISTFILE=~/.zsh_history

# http://zsh.sourceforge.net/Doc/Release/Options.html#History
SAVEHIST=100000
HISTSIZE=100000
# setopt inc_append_history # Appends every command to the history file once it is executed
# setopt share_history # Reloads the history whenever you use it
setopt extended_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt no_hist_beep
# setopt hist_no_store
setopt hist_verify            # show command with history expansion to user before running it


# globbing
setopt glob              # expand stuff to generate filenames.
# setopt extended_glob     # treat #, ~, and ^ as globbing patterns
# setopt nomatch           # zsh gets mad when I glob patterns that don't exist
# unsetopt equals          # Avoid = expansion so that if [ a == b ] works

# Other options
setopt completealiases        # complete aliases
setopt nocorrect              # spelling correction for commands
setopt check_jobs        # yell at me if I try to exit zsh with jobs running


##################
# env vars       #
##################
export EDITOR=nvim
export VISUAL=$EDITOR


##################
# aliases        #
##################
source $HOME/.zsh_aliases


##################
# keybindings    #
##################

bindkey -v

# from: https://www.johnhawthorn.com/2012/09/vi-escape-delays/
# 10ms for key sequences
KEYTIMEOUT=1


# oh wow!  This is killer...  try it!
bindkey -M vicmd "q" push-line # clears prompt temporarily for one command, then restore # also see push-line-or-edit for multiline commands

# it's like, space AND completion.  Gnarlbot.
bindkey -M viins ' ' magic-space

bindkey -M vicmd "?" history-incremental-search-backward
bindkey -M vicmd "/" history-incremental-search-forward
# bindkey -M vicmd "?" history-incremental-pattern-search-backward
# bindkey -M vicmd "/" history-incremental-pattern-search-forward

# Search based on what you typed in already
# bindkey -M viins "^P" history-beginning-search-backward
# bindkey -M viins "^N" history-beginning-search-forward
# Disabling until I need it. See https://github.com/zsh-users/zsh-syntax-highlighting/issues/411 for ideas on troubleshooting
# bindkey -M viins "^P" history-substring-search-up
# bindkey -M viins "^N" history-substring-search-down

# Beginning search with arrow keys
# http://stratus3d.com/blog/2017/10/26/better-vi-mode-in-zshell/
# TODO need to install plugin to use this
# bindkey "^[OA" up-line-or-beginning-search
# bindkey "^[OB" down-line-or-beginning-search
# bindkey -M vicmd "k" up-line-or-beginning-search
# bindkey -M vicmd "j" down-line-or-beginning-search

# https://dougblack.io/words/zsh-vi-mode.html
# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line
# https://github.com/zsh-users/zsh/blob/master/Functions/Zle/edit-command-line
zle -N edit-command-line
bindkey -M vicmd ! edit-command-line
# Emacs style
# bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line


# bindkey -M viins '^X^A' fasd-complete    # C-x C-a to do fasd-complete (files and directories)
# bindkey -M viins '^X^F' fasd-complete-f  # C-x C-f to do fasd-complete-f (only files)
# bindkey -M viins '^X^D' fasd-complete-d  # C-x C-d to do fasd-complete-d (only directories)

#
##################
# FZF settings   #
##################
# FZF
# note that this sets environment variables
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"


# fzf-git
# source "${ZDOTDIR:-$HOME}/fzfgit-functions.sh"
# source "${ZDOTDIR:-$HOME}/fzfgit-key-binding.zsh"


# ripgrep
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
# export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'



##################
# Misc           #
##################


# cdf - cd into the directory of the selected file
jf() {
   local file
   local dir
   file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}

# fasd & fzf change directory - open best matched file using `fasd` if given argument, filter output of `fasd` using `fzf` else
# note: the seanbowman blog post has an alternate version that might be better (always filter output of fasd with fzf)
jj() {
    [ $# -gt 0 ] && fasd_cd -d "$*" && return
    local dir
    dir="$(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "${dir}" || return 1
}

# fdr - cd to selected parent directory (broken)
# fdr() {
#   local declare dirs=()
#   get_parent_dirs() {
#     if [[ -d "${1}" ]]; then dirs+=("$1"); else return; fi
#     if [[ "${1}" == '/' ]]; then
#       for _dir in "${dirs[@]}"; do echo $_dir; done
#     else
#       get_parent_dirs $(dirname "$1")
#     fi
#   }
#   local DIR=$(get_parent_dirs $(realpath "${1:-$PWD}") | fzf-tmux --tac)
#   cd "$DIR"
# }

# cd to the path of the front Finder window
# from: http://brettterpstra.com/2013/02/09/quick-tip-jumping-to-the-finder-location-in-terminal/
cdfd() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}

alias opfd='open -a Finder ./'



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
