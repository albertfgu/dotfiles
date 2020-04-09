# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# FZF
# commenting this out because it sets environment variables
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/albertgu/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/albertgu/.fzf/shell/key-bindings.zsh"


# ripgrep
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
# export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

# Plugins
# export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
# source "${ZDOTDIR:-$HOME}/.zprezto/plugins/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh"
# zplug "changyuheng/zsh-interactive-cd"
# zplug "urbainvaes/fzf-marks"
# zplug "wfxr/fzf-marks"
# zplug "BrandonRoehl/zsh-clean"
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load --verbose

# from: https://www.johnhawthorn.com/2012/09/vi-escape-delays/
# 10ms for key sequences
# KEYTIMEOUT=1

# disable annoying autocorrect prompt for mosh
alias mosh='nocorrect mosh'
alias vim=nvim # shorter and for completion
alias jr="fasd_cd -i"
alias j=jump

alias l=exa
alias ll="exa -lbhg --git"

alias pd=popd # TODO: make this a function taking a number argument

# from: https://realjenius.com/2017/08/28/prezto/
# .. will already work as 'cd ..' in prezto ZSH
# Go up two directories
alias ...='cd ../..'
# Go up three directories
alias ....='cd ../../..'
# Go up four directories
alias .....='cd ../../../..'

# from: http://joshsymonds.com/blog/2014/06/12/shell-awesomeness-with-prezto/
# This makes cd=pushd
setopt AUTO_PUSHD

# This will use named dirs when possible
setopt AUTO_NAME_DIRS

# If we have a glob this will expand it
setopt GLOB_COMPLETE
setopt PUSHD_MINUS

# No more annoying pushd messages...
# setopt PUSHD_SILENT

# blank pushd goes to home
setopt PUSHD_TO_HOME

# this will ignore multiple directories for the stack.  Useful?  I dunno.
setopt PUSHD_IGNORE_DUPS

# 10 second wait if you do something that will delete everything.  I wish I'd had this before...
setopt RM_STAR_WAIT

# Appends every command to the history file once it is executed
# setopt inc_append_history
# Reloads the history whenever you use it
# setopt share_history
export SAVEHIST=100000
export HISTSIZE=100000
# http://zsh.sourceforge.net/Doc/Release/Options.html#History
# setopt inc_append_history
# setopt share_history
setopt inc_append_history extended_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt no_hist_beep hist_no_store


# oh wow!  This is killer...  try it!
bindkey -M vicmd "q" push-line

# it's like, space AND completion.  Gnarlbot.
bindkey -M viins ' ' magic-space

# Incremental search is elite!
# (this might be overwritten by prezto; can't tell)
bindkey -M vicmd "?" history-incremental-search-backward
bindkey -M vicmd "/" history-incremental-search-forward
# bindkey -M vicmd "?" history-incremental-pattern-search-backward
# bindkey -M vicmd "/" history-incremental-pattern-search-forward

# Search based on what you typed in already
# bindkey -M viins "^P" history-beginning-search-backward
# bindkey -M viins "^N" history-beginning-search-forward
bindkey -M viins "^P" history-substring-search-up
bindkey -M viins "^N" history-substring-search-down

bindkey -M vicmd m edit-command-line

# from: https://unix.stackexchange.com/questions/230742/bash-zsh-tab-autocomplete-given-initial-command-ignore-certain-files-in-direct
zstyle ':completion:*:*:nvim:*' file-patterns '^*.(pdf|synctex.gz):source-files' '*:all-files'
zstyle ':completion:*:*:open:*' file-patterns '^*.(tex|synctex.gz):source-files' '*:all-files'

bindkey -M viins '^X^A' fasd-complete    # C-x C-a to do fasd-complete (files and directories)
bindkey -M viins '^X^F' fasd-complete-f  # C-x C-f to do fasd-complete-f (only files)
bindkey -M viins '^X^D' fasd-complete-d  # C-x C-d to do fasd-complete-d (only directories)

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
cdfinder() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}

alias finder='open -a Finder ./'


# fzf-git
# source "${ZDOTDIR:-$HOME}/fzfgit-functions.sh"
# source "${ZDOTDIR:-$HOME}/fzfgit-key-binding.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh