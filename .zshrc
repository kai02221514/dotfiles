# 日本語使用
export LANG=ja_JP.UTF-8

# パス
export PATH="/bin:$PATH"
export PATH="/Users/futaba/.nodebrew/current/bin:$PATH"
export PATH="/Users/futaba/.pyenv/shims/:$PATH"
# export PATH="/Users/futaba/Library/Python/3.7/bin:$PATH"
# export PATH="/Users/futaba/Library/Python/3.7/lib/python/site-packages:$PATH"
export PATH="/Users/futaba/.pyenv/versions/3.7.1/bin:$PATH"

# 色を使用
autoload -Uz colors
colors

# 補完
autoload -Uz compinit
compinit

# 他のターミナルとヒストリーを共有
setopt share_history

# ヒストリーに重複を表示しない
setopt histignorealldups

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# cd省略
setopt auto_cd

# コマンドミス修正
setopt list_packed
setopt correct

zstyle ':completion::complete:*' use-cache true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
SPROMPT="correct: $RED%R$DEFAULT -> $GREEN%r$DEFAULT ? [Yes/No/Abort/Edit] => "
# 表示
# vcs_infoロード
autoload -Uz vcs_info
# PROMPT変数内で変数参照
setopt prompt_subst
# vcsの表示
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr " +"
zstyle ':vcs_info:git:*' unstagedstr " *"
zstyle ':vcs_info:*' formats "%F{red}(%b%u%c) %f"
zstyle ':vcs_info:*' actionformats "[%b|%a]"
# プロンプト表示前にvcs_infoを呼び出す
precmd() { vcs_info }
# プロンプト表示
PROMPT='${fg[cyan]}%~/%f%f ${vcs_info_msg_0_}
\$ '

# alias
alias ls='ls -FG'
alias la='ls -FGa'
alias l='ls -FG'
alias ll='ls -lG'

alias so='source'
alias ..='cd ..'
alias mk='touch'
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias jn='jupyter notebook'

alias vi='vim'

fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
alias gs='git status'
alias gl='git log --graph'
alias gcom='git commit'
alias gc='git checkout'
alias gb='git branch'
alias gp='git pull'

alias c='clear'

alias pip='pip3'

alias port_50000='lsof -i:50000'

export KAGGLE="$HOME/program/study/kaggle/"

eval "$(pyenv init -)"
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"

eval "$(starship init zsh)"