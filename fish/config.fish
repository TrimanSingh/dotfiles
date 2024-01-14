function fish_greeting
	set_color green; echo "Hello Triman!"; set_color normal
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
export STARSHIP_CONFIG=/mnt/c/Users/trima/.config/starship.toml

alias ls='ls -l $argv'
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias ...='cd ../../..'
