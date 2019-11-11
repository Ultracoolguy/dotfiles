# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt inc_append_history
setopt share_history
bindkey -v
#Load zgen
source "/home/me/.config/zgen/zgen.zsh"
#Hopefully fix messed prompt
setopt prompt_subst
#Sourcing some configs
source "/home/me/.profile"
source "/home/me/.config/aliasrc"
source "/home/me/.config/shortcutrc"
zstyle :compinstall filename '/home/me/.zshrc'
export ZGEN_PLUGIN_UPDATE_DAYS=30
export ZGEN_SYSTEM_UPDATE_DAYS=30

autoload -Uz compinit
compinit

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
	zgen load unixorn/autoupdate-zgen
fi

# Several environment variables
export QEMU_IRIX=/usr/bin/qemu-irix

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
