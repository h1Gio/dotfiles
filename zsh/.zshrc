# If you come from bash you might have to change your /home/kali/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games.
export PATH=/home/kali/bin:/usr/local/bin:/home/kali/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games

# Path to your oh-my-zsh installation.
export ZSH=/home/kali/.oh-my-zsh

#Zsh theme
ZSH_THEME=powerlevel10k/powerlevel10k

#Zsh plugins
plugins=(git zsh-autosuggestions)

# For Neofetch
neofetch

# for colors
#for i in {0..255}; do print -Pn %K{} %k%F{}000%f  ; done

source /home/kali/.oh-my-zsh/oh-my-zsh.sh

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh

# To customize prompt, run  or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r /home/kali/.cache/p10k-instant-prompt-kali.zsh ]]; then
  source /home/kali/.cache/p10k-instant-prompt-kali.zsh
fi
