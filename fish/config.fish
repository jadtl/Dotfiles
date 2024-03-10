# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/jad/.pyenv/versions/anaconda3-2023.07-0/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set -x VULKAN_SDK /Users/jad/VulkanSDK/1.3.216.0
set -x glslc $VULKAN_SDK/bin/macOS/glslc
set -x PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
set -x PUPPETEER_EXECUTABLE_PATH `which chromium`
set -x VSCODE_GIT_ASKPASS_EXTRA_ARGS "--title=foobar"
set -x RUST_LOG info
set -x PATH $PATH:/Users/jad/.spicetify
set -x PATH $(pyenv root)/shims:$PATH
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home
set -x PATH "/usr/local/opt/llvm/bin:$PATH"
set -x RUST_SRC_PATH "$(rustc --print sysroot)/lib/rustlib/src/rust/src"
set -x DYLD_LIBRARY_PATH "$(rustc --print sysroot)/lib:$DYLD_LIBRARY_PATH"
set -x GPG_TTY $(tty) # To sign commits with pinentry
set -x EDITOR "nvim"

set -x LDFLAGS "-L/opt/homebrew/opt/openssl/lib" $LDFLAGS
set -x CPPFLAGS "-I/opt/homebrew/opt/openssl/include" $CPPFLAGS

alias spotify_theme="$HOME/Development/spotify-theme.sh"
alias gvim="nvim --listen /tmp/nvim.pipe"

starship init fish | source
set fish_greeting "All those moments will be lost in time, like tears in rain."

function code
	set location "$PWD/$argv"
	open -n -b "com.microsoft.VSCode" --args $location
end

fish_add_path /usr/local/bin/
fish_add_path /opt/homebrew/bin/
fish_add_path /opt/homebrew/sbin
fish_add_path /Applications/Xcode.app/Contents/Developer/usr/bin/
fish_add_path /usr/local/texlive/2022/bin/universal-darwin/
fish_add_path $HOME/Library/Application\ Support/Coursier/bin
fish_add_path /opt/homebrew/opt/qt@5/bin
fish_add_path /opt/local/bin/
