# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


## Bash prompt

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[92;1m\]\h\[\e[0m\]:\[\e[31m\][\[\e[94;1;2m\]\u\[\e[0;31m\]]\[\e[0m\]:\[\e[33;2m\](\[\e[0;35m\]${PS1_CMD1}\[\e[33;2m\])\[\e[0;35m\]\w\[\e[93;1;2m\]\\$\[\e[0m\] '


# Aliases

alias ls='ls -F -h --color=auto'
alias sl='ls -F -h --color=auto && echo mis'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias mkdir="mkdir -pv"

alias ..="cd .."
alias ...="cd ../../../"

alias now='date +"%A %d/%m/%y - %I:%M %p"'

alias wf="cd ~ && cd Dev/wireframe_game"
alias wfe='cd ~ && cd Dev/editor_wireframe'


# Exports

QT_QPA_PLATFORMTHEME="qt5ct"




export MANPAGER='nvim +Man!'
export PAGER='nvim +Man!'
export VISUAL='nvim'
export EDITOR='nvim'


function markdown() {
    pandoc $1 > $1.html
    xdg-open $1.html
}
