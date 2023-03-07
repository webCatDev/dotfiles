# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/profile.pre.bash" ]] && builtin source "$HOME/.fig/shell/profile.pre.bash"
export AMD_VULKAN_ICD=RADV
export BROWSER=firedragon
export EDITOR=/usr/bin/micro
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export MAIL=thunderbird
export TERM=xterm
export VISUAL=kate
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/profile.post.bash" ]] && builtin source "$HOME/.fig/shell/profile.post.bash"
