# Homebrew (Apple Silicon only)
if [ -x /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# GNU coreutils and brew-installed binaries take precedence over Apple's BSD binaries.
if [ -n "$HOMEBREW_PREFIX" ]; then
    for d in "$HOMEBREW_PREFIX"/opt/*/libexec/gnubin; do
        [ -d "$d" ] && export PATH="$d:$PATH"
    done
    for d in "$HOMEBREW_PREFIX"/opt/*/libexec/gnuman; do
        [ -d "$d" ] && export MANPATH="$d:$MANPATH"
    done
fi

# ensure user-level binaries are present in the path and take precendence over everything else.
export PATH="$HOME/.local/bin:$PATH"
