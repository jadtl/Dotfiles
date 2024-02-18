if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end

# Welcome message
set -g fish_greeting 'All those moments will be lost in time, like tears in rain...'

# GnuPG
set -gx GPG_TTY (tty)

# Default editor
set -gx EDITOR "nvim"
