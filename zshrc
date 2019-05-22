# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# if [ "$(uname)" == "Darwin" ]; then
#     export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
# fi

export CLICOLOR=1
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33'

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;37;46'

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

export PATH=$PATH:~/.mes_scripts_sys/
export PATH=$PATH:/Applications/treetager/cmd
export PATH=$PATH:/Applications/treetager/bin
export PATH=$PATH:/usr/local/Cellar/python/3.7.3/Frameworks/Python.framework/Versions/3.7/bin

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
# POWERLEVEL9K_MODE='awesome-fontconfig'
# ZSH_THEME="powerlevel9k/powerlevel9k"    #"crunch"
# ZSH_THEME="crunch"

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
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# History {{{
HISTSIZE=10000
SAVEHIST=9000
HISTFILE=~/.zsh_history
# }}}

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  #git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# ======= PROMPT =======

# \d – Current date
# \t – Current time
# \h – Host name
# \# – Command number
# \u – User name
# \W – Current working directory (ie: Desktop/)
# \w – Current working directory with full path (ie: /Users/Admin/Desktop/)
# %1d folder



COLOR_WHITE="%{$fg[white]%}"
COLOR_YELLOW="%{$fg[yellow]%}"
COLOR_MAGENTA="%{$fg[magenta]%}"
COLOR_CYAN="%{$fg[cyan]%}"
COLOR_GREEN="%{$fg[green]%}"
COLOR_RED="%{$fg[red]%}"
RESET_COLOR="%{$reset_color%}"

# These Git variables are used by the oh-my-zsh git_prompt_info helper:
ZSH_THEME_GIT_PROMPT_PREFIX="$RESET_COLOR($COLOR_WHITE:$COLOR_GREEN"
ZSH_THEME_GIT_PROMPT_CLEAN=" $COLOR_GREEN✓$RESET_COLOR"
ZSH_THEME_GIT_PROMPT_DIRTY=" $COLOR_RED✗$RESET_COLOR"

ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{…%G%}"

# Our elements:
# Time
CRUNCH_TIME_="$COLOR_WHITE{$COLOR_YELLOW%T$COLOR_WHITE}$RESET_COLOR"
# perso
INFO_PERSO="$COLOR_YELLOW%n@%m$RESET_COLOR in "

# pwd + git
CRUNCH_DIR_="$COLOR_CYAN%2d \$(git_prompt_info) "
# end
CRUNCH_PROMPT="$COLOR_WHITE➭ "

# Put it all together!
# total
# PROMPT="$CRUNCH_TIME_ $INFO_PERSO$CRUNCH_RVM_$CRUNCH_DIR_$CRUNCH_PROMPT%{$reset_color%}"
# light
PROMPT="$CRUNCH_TIME_ $CRUNCH_DIR_$CRUNCH_PROMPT%{$reset_color%}"





# ===================================================================

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# TMUX AUTOMATIC
# this line will exit ssh and terminate the connection once you detach or exit tmux.
[ -z "$TMUX"  ] && { tmux attach -t new-session || exec tmux new-session && exit; }

# if you don't want that :
# [ -z "$TMUX"  ] && { tmux attach || exec tmux new-session;}


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

alias ll='ls -alFh'

#alias cdic='cd ~/Library/Mobile\ Documents' # Go to icloud folder
#alias cdtl='cd /usr/local/texlive/' # Go to the texlive folder

# alias cde='cd ~/.emacs.d'
# alias cdnv='cd ~/.config/nvim'
# alias cdvi='cd ~/.vim'
alias cdconf='cd ~/.0_my_configs_files'
alias cvisualcode='f ~/Library/Application\ Support/Code/User/'

if [[ $OSTYPE == 'darwin'* ]]; then
    source ~/.zshAliasPerso
fi

alias c='clear'

alias cd.='cd ../'
alias cd..='cd ../../'
alias cd...='cd ../../../'
alias cd4='cd ../../../../'
alias cd5='cd ../../../../../'
alias cd6='cd ../../../../../../'
alias cdold='cd $OLDPWD'

if [[ $OSTYPE == 'darwin'* ]]; then
    alias f='open -a Finder ./'
    # f: Opens current directory in MacOS Finder
fi

alias h='history'
alias hg='history | grep'

alias source_zsh='source ~/.zshrc'
alias edit_zsh='mate ~/.zshrc'

alias source_bash='source ~/.bash_profile'
alias edit_bash='mate ~/.bash_profile'

alias source_vimrcNeo='source ~/.vimrc'
alias edit_vimrcNeo='nvim ~/.vimrc'

alias source_vimrcNeo='source ~/.config/nvim/init.vim'
alias edit_vimrcNeo='nvim ~/.config/nvim/init.vim'

alias py3='python3'
alias pep8check='pycodestyle'
# alias pip3='python3 -m pip'

alias pl='perl'

alias neoMeInBrowser='open http://localhost:7474/'
alias neoMeConf='mate /usr/local/Cellar/neo4j/3.4.5/libexec/conf/neo4j.conf'

alias vi='vim'
alias nv='nvim'

alias qtdesign='open -a Designer'

##############################################
# Git aliases. start with 'g'
###############################################
alias g='git'
#### add
alias ga='git add'
alias gaa='git add .'
#### branching
alias gbranch='git branch'
alias gbranch_delete='git branch -d'
alias gbranch_v='git branch -v'
alias gbranch_no_merged='git branch --no-merged'
alias gbranch_merged='git branch --merged'
#### checkout
alias gcheckout='git checkout'
alias gcheckout_b='git checkout -b'
alias gcheckout_master='git checkout master'
#### clone
alias gcl='git clone'
#### commit
alias gcom='git commit -m'
alias gcoam='git commit -a -m'
#### log
alias gll='git log --color --graph --pretty=format:"%C(bold white)%h%Creset - %C(bold green)%d%Creset%s%C(bold green)(%cr)%Creset%C(bold blue)<%an>%Creset" --abbrev-commit --date=relative | cat'
#### merge
alias gmerge='git merge'
#### push & pull
alias gpush='git push'
alias gpull='git pull'
#### remote
alias gr='git remote'
alias gra='git remote add'
#### status
alias gst='git status'
#### alias
alias galias='git config -l | grep alias | cut -c 7-'
# help
alias gh='git help'

##############################################
# Git aliases for mydotfiles. start with 'config_'
###############################################

# we will use instead of the regular git when we want to interact with our configuration repository.
alias config='/usr/bin/git --git-dir=$HOME/.0_my_configs_files/.git --work-tree=$HOME/.0_my_configs_files/'
alias config_st='config status'
alias config_a='config add'
alias config_coam='config commit -am'
alias config_push='config push'








###############################################

# if [ "$(uname)" == "Darwin" ]; then
#     test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
