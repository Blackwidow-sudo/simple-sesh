# customized robbyrussel.zsh-theme

# Color shortcuts
RED=$fg[red]
YELLOW=$fg[yellow]
GREEN=$fg[green]
WHITE=$fg[white]
BLUE=$fg[blue]
CYAN=$fg[cyan]
MAGENTA=$fg[magenta]
BLACK=$fg[black]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]
CYAN_BOLD=$fg_bold[cyan]
MAGENTA_BOLD=$fg_bold[magenta]
BLACK_BOLD=$fg_bold[black]

# Set your prefered Colors here
USER_NAME=$GREEN_BOLD
MACHINE_NAME=$GREEN
CURRENT_DIR=$BLUE_BOLD

GIT_INFO=$CYAN
GIT_BRANCH=$RED_BOLD


# Define Prompt
PROMPT="%{$USER_NAME%}%n%{$reset_color%}@%{$MACHINE_NAME%}%m%{$reset_color%}:%{$CURRENT_DIR%}%~%{$reset_color%}"
PROMPT+=' $(git_prompt_info)
%(?:%{$GREEN_BOLD%}➜ :%{$RED_BOLD%}➜ )%{$reset_color%} '

# Original from the 'robbyrussel.zsh-theme':
#PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
#PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

# Define Git-Info
ZSH_THEME_GIT_PROMPT_PREFIX="%{$GIT_INFO%}git(%{$GIT_BRANCH%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$GIT_INFO%}) %{$YELLOW%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}%{$GIT_INFO%})"