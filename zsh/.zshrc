# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your /home/kali/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games.
export PATH=/home/admin/bin:/usr/local/bin:/home/admin/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games

# Path to your oh-my-zsh installation.
export ZSH=/home/admin/.oh-my-zsh

# start wm
# startx
# Arttime
# arttime --nolearn -a kissingcats -b kissingcats2 -t "Since we found love within, we don't bother rats - Wise cats" --ac 3
# cbonsai -i -l
#Zsh theme
ZSH_THEME=powerlevel10k/powerlevel10k

#Zsh plugins
plugins=(git zsh-autosuggestions)

# For Neofetch
# neofetch
# For fastfetch
# fastfetch
fastfetch --pipe false --logo-type file --logo "$HOME/fastfetch.txt"
# neofetch --source ~/skull.txt
# for man pager
export MANPAGER="nvim +Man!"

# For wallpaper
# feh --bg-scale ~/Downloads/gruvbox-abstract-shapes-1920×1080.jpg
# feh --bg-scale ~/Downloads/forest2.jpg
# feh --bg-scale ~/Downloads/gruvmountains1.jpg
# For battery
# acpi
# for colors
#for i in {0..255}; do print -Pn %K{} %k%F{}000%f  ; done

source /home/admin/.oh-my-zsh/oh-my-zsh.sh
# source /home/admin/scripts/hdmi

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh

# To customize prompt, run  or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r /home/admin/.cache/p10k-instant-prompt-admin.zsh ]]; then
  source /home/admin/.cache/p10k-instant-prompt-admin.zsh
fi

# if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#    exec startx
# fi

# Following line was automatically added by arttime installer
export MANPATH=/home/admin/.local/share/man:$MANPATH

# Following line was automatically added by arttime installer
export PATH=/home/admin/.local/bin:$PATH

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export PATH=$PATH:/home/admin/.spicetify
