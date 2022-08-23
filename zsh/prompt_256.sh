export LANG="en_US.UTF-8"

if [ -n "$BASH_VERSION" ]; then
    export PS1='\[\e[38;5;135m\]\u\[\e[0m\]@\[\e[38;5;166m\]\h\[\e[0m\] \[\e[38;5;118m\]\w\[\e[0m\] \$ '
else
    if [ "$UID" -eq 0 ]; then
        export PROMPT="%F{135}%n%f@%F{166}%m%f %F{118}%~%f %# "
    else
        export PROMPT="%F{135}%n%f@%F{166}%m%f %F{118}%~%f \$ "
    fi
fi

export PS1="\[\e]0;\u@\h\a\]$PS1" # 终端标题: 用户, 主机名
export RPROMPT="%F{red}%(?..%?)%f" # 右边显式上一个程序的返回码
