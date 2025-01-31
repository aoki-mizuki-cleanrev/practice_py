# カラフルなプロンプトの設定
PS1='\[\e[93m\]\u\[\e[35m\]@\h\[\e[0m\]\[\e[0m\] :\[\e[34m\]\w\[\e[0m\]\n\$ '

# コマンドの出力にカラーを有効にする
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# エイリアスの設定
alias ll='ls -la'
alias gs='git status'
alias gp='git push'

# lsコマンドにカラーを有効にする
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
