# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zshrc.main

export PATH=/usr/local/cuda/bin:/usr/local/bin:/opt/aws/bin:/home/ubuntu/.dl_binaries/bin:/usr/local/mpi/bin:/opt/aws/neuron/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/lib:/usr/lib:/usr/local/cuda/extras/CUPTI/lib64:/opt/amazon/openmpi/lib:/usr/local/cuda/lib:/opt/amazon/efa/lib:/usr/local/mpi/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
export MANPATH=/opt/aws/neuron/share/man:$MANPATH
export PATH=/usr/local/cuda/bin:/usr/local/bin:/opt/aws/bin:/usr/local/mpi/bin:$PATH
export LD_LIBRARY_PATH_WITH_DEFAULT_CUDA=/usr/lib64/openmpi/lib/:/usr/local/cuda/lib64:/usr/local/lib:/usr/lib:/usr/local/cuda/extras/CUPTI/lib64:/usr/local/mpi/lib:/lib/:/usr/local/cuda-10.0/lib/:$LD_LIBRARY_PATH_WITH_DEFAULT_CUDA
export LD_LIBRARY_PATH_WITHOUT_CUDA=/usr/lib64/openmpi/lib/:/usr/local/lib:/usr/lib:/usr/local/mpi/lib:/lib/:$LD_LIBRARY_PATH_WITHOUT_CUDA
export LD_LIBRARY_PATH=/usr/lib64/openmpi/lib/:/usr/local/cuda/lib64:/usr/local/lib:/usr/lib:/usr/local/cuda/extras/CUPTI/lib64:/usr/local/mpi/lib:/lib/:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
export PATH=/home/ubuntu/anaconda3/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Mount EFS volume
sudo mount -t efs fs-f5d212f1:/ /efs

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/ubuntu/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/ubuntu/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/ubuntu/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/ubuntu/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
__conda_setup="$('/efs/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/efs/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/efs/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/efs/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda activate transformers

export WANDB_API_KEY="69d3c00c4a3b812d08dcff010d1cacea8b8fe26f"

# # The next line updates PATH for the Google Cloud SDK.
# if [ -f '/home/ubuntu/google-cloud-sdk/path.zsh.inc' ]; then . '/home/ubuntu/google-cloud-sdk/path.zsh.inc'; fi

# # The next line enables shell command completion for gcloud.
# if [ -f '/home/ubuntu/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/ubuntu/google-cloud-sdk/completion.zsh.inc'; fi
