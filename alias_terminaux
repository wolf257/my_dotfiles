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
alias config='/usr/bin/git --git-dir=$HOME/.mydotfiles/ --work-tree=$HOME'
alias config_st='config status'
alias config_a='config add'
alias config_coam='config commit -am'
alias config_push='config push'
