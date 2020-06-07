# source $AFS/.zshrc
source ~/.zshrc.main # alias to main zshrc file

### AFS specific settings

alias python=python3
alias pip='python -m pip'
# export GIT_EDITOR='/dfs/scratch1/albertgu/nvim.appimage'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/utilities/powerlevel10k/powerlevel10k.zsh-theme # Doesn't work without this for some reason

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/dfs/scratch1/albertgu/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/dfs/scratch1/albertgu/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/dfs/scratch1/albertgu/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/dfs/scratch1/albertgu/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<
# [ $TERM = "dumb" ] && unsetopt zle && PS1='$ '
# . /dfs/scratch1/albertgu/anaconda3/etc/profile.d/conda.sh
# conda activate


# eval $(ssh-agent)
# ssh-add
#
# alias h=history
# export HISTFILE=~/.zsh_history


# export MKL_NUM_THREADS=1

# alias nvim=/dfs/scratch1/albertgu/nvim.appimage
# alias vim=nvim
# export GIT_EDITOR='/dfs/scratch1/albertgu/nvim.appimage'
# alias python=python3



# julia stuff
# https://stackoverflow.com/questions/36398629/change-package-directory-in-julia
# https://docs.julialang.org/en/stable/manual/packages/<Paste>
export JULIA_PKGDIR=/dfs/scratch1/albertgu/julia_pkg


export CUDA_HOME="/usr/local/cuda"
export PATH="$CUDA_HOME/bin:${PATH}"
export LD_LIBRARY_PATH="$CUDA_HOME/lib64:$LD_LIBRARY_PATH"
# export CUDA_CACHE_PATH=/dfs/scratch1/albertgu/.nv/ComputeCache
# export XDG_CACHE_HOME=/dfs/scratch1/albertgu/.cache/jedi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
export PATH="/dfs/scratch1/albertgu/node-v12.14.0-linux-x64/bin:${PATH}"

export WANDB_API_KEY="69d3c00c4a3b812d08dcff010d1cacea8b8fe26f"

# declare -A ZINIT  # initial Zinit's hash definition, if configuring before loading Zinit
# export ZINIT[BIN_DIR]=/dfs/scratch1/albertgu/.zinit/bin
# export ZINIT[HOME_DIR]=/dfs/scratch1/albertgu/.zinit
# export ZINIT[PLUGINS_DIR]=/dfs/scratch1/albertgu/.zinit/plugins
# export ZINIT[COMPLETIONS_DIR]=/dfs/scratch1/albertgu/.zinit/completions
# export ZINIT_HOME=/dfs/scratch1/albertgu/.zinit
# source ~/.zshrc.main
