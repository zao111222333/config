# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export PATH=$PATH:~/Desktop/Myshell
source ~/.zinit/bin/zinit.zsh
export HOMEBREW_NO_AUTO_UPDATE=true

zinit ice depth=1; zinit light romkatv/powerlevel10k

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000



# 语法高亮
zinit ice lucid wait='0' atinit='zpcompinit'
zinit light zdharma/fast-syntax-highlighting

# 自动建议
zinit ice lucid wait="0" atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

# 补全
zinit ice lucid wait='0'
zinit light zsh-users/zsh-completions


# 加载 OMZ 框架及部分插件
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh

zinit ice lucid wait='1'
zinit snippet OMZ::plugins/git/git.plugin.zsh

zinit snippet OMZ::plugins/thefuck/thefuck.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#echo 'export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/a/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/a/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/a/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/a/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
