### prompt personalization
PS1="\[\033[7m\][\W]\[\033[00m\] \$ "

### Title in window
export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}:${PWD/#$HOME/~}"; echo -ne "\007"'

### colors
export CLICOLOR=1
export LS_OPTIONS='--color=auto'
export GREP_OPTIONS='--color=auto'

### history
# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth
shopt -s cmdhist #Fix multiple line commands
shopt -s cdspell #easy spell corrections

### alias
alias lF='ls -F'
alias ll="ls -olh"
alias la='ls -olhA'          # show hidden files
alias lx='ls -olhXB'         # sort by extension
alias lk='ls -olhSr'         # sort by size, biggest last
alias lc='ls -olhtcr'        # sort by and show change time, most recent last
alias lu='ls -olhtur'        # sort by and show access time, most recent last
alias lt='ls -olhtr'         # sort by date, most recent last
alias lm='ls -olhA | less'    # pipe through 'more'
alias lr='ls -olhR'          # recursive ls

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
#alias rmbackupfiles='rm -fr *~'

alias mkdir='mkdir -p'
alias ..='cd ..'

alias l='less'
alias tf='tail -f'
alias j='jobs -l'
alias s="screen"
alias g='grep'

alias h='history'
alias c='clear'
alias du='du -kh'
alias df='df -kTh'

# alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs "$@"'
alias e='emacs -nw'
alias nb='jupyter notebook'

function mkcd()
{
    mkdir $1 && eval cd $1
}

##########################
# Extra
###########################

# # added by Anaconda2 4.0.0 installer
# export PATH="/Users/sniderog/anaconda2/bin:$PATH"
#
#
# # spark setting
# export PYSPARK_PYTHON=$HOME/anaconda/bin/python
#
# export SPARK_HOME="/Users/sniderog/spark-1.6.0-bin-hadoop2.6"
# export PYTHONPATH="$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.9-src.zip:${PYTHONPATH}"

# rsync -auv QA go:giaco_python
# rsync -av --partial --progress --rsh=ssh bss_campaign_agg.parquet
