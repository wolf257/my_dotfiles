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

