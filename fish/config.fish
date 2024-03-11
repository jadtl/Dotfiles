# Default editor
set -gx EDITOR "nvim"

# Commit signing
set -gx GPG_TTY $(tty)
set -x VSCODE_GIT_ASKPASS_EXTRA_ARGS "--title=foobar"

# Java home
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home

# Starship
starship init fish | source

# Shell greeting
set fish_greeting "All those moments will be lost in time, like tears in rain."

# VSCode alias
function code
	set location "$PWD/$argv"
	open -n -b "com.microsoft.VSCode" --args $location
end

# Path
fish_add_path /usr/local/bin/
fish_add_path /opt/homebrew/bin/
fish_add_path /opt/homebrew/sbin
fish_add_path /Applications/Xcode.app/Contents/Developer/usr/bin/
fish_add_path /usr/local/texlive/2022/bin/universal-darwin/
fish_add_path $HOME/Library/Application\ Support/Coursier/bin
fish_add_path /opt/homebrew/opt/qt@5/bin
fish_add_path /opt/local/bin/
