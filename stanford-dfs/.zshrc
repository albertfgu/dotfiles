source $AFS/.zshrc
alias python=python3
alias pip='python -m pip'
export GIT_EDITOR='/dfs/scratch1/albertgu/nvim.appimage'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/utilities/powerlevel10k/powerlevel10k.zsh-theme # Doesn't work without this for some reason

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/dfs/scratch1/albertgu/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/dfs/scratch1/albertgu/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/dfs/scratch1/albertgu/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/dfs/scratch1/albertgu/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

