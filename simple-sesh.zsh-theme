# customized robbyrussel.zsh-theme

# Cheatsheet
## Color setting:
#   set text color: %{$fg[color]%}
#   set background color: %{$bg[color]%}
## Variables:
#   %n = current user
#   %m = name of current machine
#   %c = current directory
#   %~ = full path except that $HOME gets represented with a ~
#   %N~ = display only the N last directorys as the path
#   %# = prompt will show # when shell is running with root, else it shows %
## Ternary Condition:
#   %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )
#   When the last command exits successful, the arrow becomes green.
#   Else if the last command did not end successful, the arrow becomes red.

# Color shortcuts
RED=$fg[red]
YELLOW=$fg[yellow]
GREEN=$fg[green]
WHITE=$fg[white]
BLUE=$fg[blue]
CYAN=$fg[cyan]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]
CYAN_BOLD=$fg_bold[cyan]
RESET_COLOR=$reset_color

# Define Prompts
# Original
#PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
#PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
PROMPT="%{$GREEN_BOLD%}%n%{$reset_color%}@%{$GREEN%}%m%{$reset_color%}:%{$BLUE_BOLD%}%~%{$reset_color%}"
PROMPT+=' $(git_prompt_info)
%(?:%{$GREEN_BOLD%}➜ :%{$RED_BOLD%}➜ )%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$CYAN%}git(%{$RED_BOLD%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$CYAN%}) %{$YELLOW%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}%{$CYAN%})"