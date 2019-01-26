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

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
# POWERLEVEL9K_MODE='awesome-fontconfig'
# ZSH_THEME="powerlevel9k/powerlevel9k"    #"crunch"
ZSH_THEME="crunch"

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

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


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

if [[ $OSTYPE == 'darwin8' ]]; then
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

alias pl='perl'

alias neoMeInBrowser='open http://localhost:7474/'
alias neoMeConf='mate /usr/local/Cellar/neo4j/3.4.5/libexec/conf/neo4j.conf'

alias vi='vim'
alias nv='nvim'

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
alias config='/usr/bin/git --git-dir=$HOME/.mydotfiles/ --work-tree=$HOME'
alias config_st='config status'
alias config_a='config add'
alias config_coam='config commit -am'
alias config_push='config push'








###############################################

# if [ "$(uname)" == "Darwin" ]; then
#     test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
