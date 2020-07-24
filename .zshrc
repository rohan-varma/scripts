# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# added by Anaconda 2.3.0 installer
export PATH="/Users/rvarm1/anaconda/bin:$PATH"

##
# Your previous /Users/rvarm1/.bash_profile file was backed up as /Users/rvarm1/.bash_profile.macports-saved_2016-05-14_at_16:36:40
##

# MacPorts Installer addition on 2016-05-14_at_16:36:40: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Path to your oh-my-zsh installation.
export ZSH=/Users/rvarm1/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias encouragement='echo rvarm1 you are awesome'
alias gs='git status'
alias gb='git branch'
alias gp='git pull'
alias gmm='git merge master'
alias jb='jupyter notebook'
alias cdml='cd ~/desktop/machine-learning'
alias em='emacs'
alias cdd='cd ~/desktop'
alias jnbc='jupyter nbconvert'
alias ga='git add .'
alias sl='ls'
alias pushup='~/pushup'
alias gd='git diff'
alias nukeonly='~/desktop/scripts/nukeonly.sh'
alias setupgit='~/desktop/scripts/setupgit.sh'
alias commit='~/desktop/scripts/commit.sh'
alias doubledollar='python3 ~/desktop/scripts/doubledollar.py'
alias tojb='python3 ~/desktop/scripts/s2nb.py'
alias ls='ls -la'
alias cdscripts='cd ~/desktop/scripts'
alias typora='~/desktop/scripts/typora.sh'
alias uclascp='~/desktop/scripts/uclascp.sh'
alias mdcheck='python3 ~/desktop/scripts/md-check.py'
alias topdf='~/desktop/scripts/pdf.sh'
alias acmbox="ssh acm@131.179.54.92"
alias autopep8='/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/autopep8.py'
alias acmscp='~/desktop/scripts/acmscp.sh'
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rvarm1/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/rvarm1/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rvarm1/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/rvarm1/google-cloud-sdk/completion.zsh.inc'; fi
alias gp='gprolog'
alias ssh136='ssh la136ew@users.isi.deterlab.net'
alias spotify='open /Applications/Spotify.app'
alias uclassh='ssh lnxsrv09.seas.ucla.edu'
alias pyformat='autopep8 --in-place --aggressive --aggressive'
alias message='/Users/rvarm1/desktop/scripts/message.sh'
alias format='/Users/rvarm1/desktop/scripts/format.sh'
alias subl2='sublime'

alias python='python3.7'
alias python3='python3.7'
alias pip='pip3'
alias getpytorchnightly='pip install numpy ; pip install --pre torch torchvision -f https://download.pytorch.org/whl/nightly/cpu/torch_nightly.html --upgrade'
alias p='python'
export PATH="/usr/local/opt/protobuf@3.7/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/rvarm1/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/rvarm1/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/rvarm1/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/rvarm1/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
alias pytohon=python
alias potyhon=python
alias ortgpm=python
alias pythn=python
alias pytohn=python
alias pyton=python
alias ptyhon=python
alias oython=python

alias subl='sublime'
HISTSIZE=130000 SAVEHIST=130000
# PROMPT

# default macOS prompt is: \h:\W \u\$

# assemble the prompt string PS1
# inspired from: https://stackoverflow.com/a/16715681
function __build_prompt {
    local EXIT="$?" # store current exit code
    
    # define some colors
    local RESET='\[\e[0m\]'
    local RED='\[\e[0;31m\]'
    local GREEN='\[\e[0;32m\]'
    local BOLD_GRAY='\[\e[1;30m\]'
    # longer list of codes here: https://unix.stackexchange.com/a/124408
    
    # start with an empty PS1
    PS1=""

    if [[ $EXIT -eq 0 ]]; then
        PS1+="${GREEN}√${RESET} "      # Add green for success
    else
        PS1+="${RED}?️️️${EXIT}${RESET} " # Add red if exit code non 0
    fi
    # this is the default prompt for 
    PS1+="${BOLD_GRAY}\W ${RESET}\$ "
}

# set the prompt command
# include previous values to maintain Apple Terminal support (window title path and sessions)
# this is explained in /etc/bashrc_Apple_Terminal
PROMPT_COMMAND="__build_prompt${PROMPT_COMMAND:+; $PROMPT_COMMAND}"

alias checkout='~/utils/script.sh'
set -o vi # enable vim command line
alias v="vim"
alias gp='git push'
bindkey -v
bindkey '^R' history-incremental-search-backward
