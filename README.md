# simple-sesh
Simple oh-my-zsh theme derived from the default theme.

## How to use
Just drop the *\*.zsh-theme* file in to your custom zsh directory.
You can find the directory with `echo $ZSH_CUSTOM/themes`.

To change colors, you just have to set the variables to your prefered colors.
Valid colors are: red, yellow, green, blue, cyan, magenta, black & white.
Each color can be displayed bold.

## Cheatsheet
- Put variable in prompt string: `%{VAR%}`
#### Color setting:
- set text color: `%{$fg[color]%}`
- set bold text color: `%{$fg_bold[color]%}`
- set background color: `%{$bg[color]%}`
#### Variables:
- `%n` current user
- `%m` name of current machine
- `%c` current directory
- `%~` full path except that $HOME gets represented with a ~
- `%N~` display only the *N* last directorys as the path (e.g. `%2~` shows only the last 2 directorys from the full path)
- `%#` prompt will show # when shell is running with root privileges, else it shows %
#### Ternary Condition:
`%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )`
When the last command exits successful, the arrow becomes green.
Else if the last command did not end successful, the arrow becomes red.