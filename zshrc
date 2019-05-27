#Remove weird strings and letters due to pywal
PS1=$'%{\e]0;%d\a%}\n%F{green}%n@%m %F{yellow}%d%f\n%# '
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
bindkey -v
#Load zgen
source "/home/me/.config/zgen/zgen.zsh"
#Sourcing some configs
source "/home/me/.profile"
source "/home/me/.config/aliasrc"
source "/home/me/.config/shortcutrc"
# The following lines were added by compinstall
zstyle :compinstall filename '/home/me/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#Load zgen plugins
if ! zgen saved; then
	zgen oh-my-zsh
	zgen oh-my-zsh themes/amuse
	#zgen oh-my-zsh plugins/sudo
	#zgen oh-my-zsh plugins/vi-mode
	#zgen oh-my-zsh plugins/common-aliases
	zgen load zsh-users/zsh-syntax-highlighting
	zgen load chrissicool/zsh-bash
	zgen save
fi
#Remove user@hostname
#DEFAULT_USER=me
#prompt_context(){}
