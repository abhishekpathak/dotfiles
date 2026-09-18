# brew
# Ensure coreutils and brew-installed binaries take precedence. Also ensure user-level binaries are present in the path.
if command -v brew >/dev/null 2>&1; then
    eval "$(brew shellenv)"
fi
export PATH="$HOME/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/binutils/libexec/gnubin:/usr/local/opt/diffutils/libexec/gnubin:/usr/local/opt/findutils/libexec/gnubin:/opt/homebrew/opt/coreutils/libexec/gnubin:/opt/homebrew/opt/binutils/libexec/gnubin:/opt/homebrew/opt/diffutils/libexec/gnubin:/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

