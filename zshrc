#Remove weird strings and letters due to pywal
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
bindkey -v
#Load zgen
source "/home/me/.config/zgen/zgen.zsh"
#Hopefully fix messed prompt
setopt prompt_subst
#Sourcing some configs
source "/home/me/.profile"
source "/home/me/.config/aliasrc"
source "/home/me/.config/shortcutrc"
source ~/.purepower
# The following lines were added by compinstall
zstyle :compinstall filename '/home/me/.zshrc'

autoload -Uz compinit
compinit
## End of lines added by compinstall

##Load zgen plugins
## if ! zgen saved; then
#	zgen oh-my-zsh
#	zgen oh-my-zsh themes/amuse
#	#zgen oh-my-zsh plugins/sudo
#	#zgen oh-my-zsh plugins/vi-mode
#	#zgen oh-my-zsh plugins/common-aliases
#	zgen load zsh-users/zsh-syntax-highlighting
#	zgen load chrissicool/zsh-bash
#	zgen save
#fi

#Load zgen plugins
if ! zgen saved; then
	zgen load romkatv/powerlevel10k powerlevel10k
	#zgen load aaronjamesyoung/aaron-zsh-theme aaron.zsh-theme
	#zgen load 0i0/0i0.zsh-theme 0i0
	#zgen load jackharrisonsherlock/common common
	#zgen load maniat1k/birame birame
	zgen load chrissicool/zsh-256color
	zgen load zsh-users/zsh-autosuggestions
	 zgen load Tarrasch/zsh-bd
	zgen load zuxfoucault/colored-man-pages_mod
	zgen load zdharma/fast-syntax-highlighting
	zgen load zsh-users/zsh-history-substring-search
	zgen load mdumitru/fancy-ctrl-z
	#zgen load sei40kr/zsh-fast-alias-tips
	zgen load djui/alias-tips
	zgen load changyuheng/fz
	zgen load laurenkt/zsh-vimto
	zgen load agkozak/zsh-z
fi
