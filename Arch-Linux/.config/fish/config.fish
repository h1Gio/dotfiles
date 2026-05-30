### Paths ###

fish_add_path ~/.local/bin
fish_add_path ~/.spicetify
fish_add_path ~/bin

if status is-interactive
    set fish_greeting
end

### Starship ###

starship init fish | source

### envman ###

if test -f ~/.config/envman/load.fish
    source ~/.config/envman/load.fish
end

### Dircolors ###

eval (dircolors -c ~/.dircolors | source)
