#!/usr/bin/env bash

# Global command alias
alias ls="ls -G"

# Initial path env
PATH_LIST="
/usr/local/opt/go/libexec/bin
/usr/local/sbin
${HOME}/.composer/vendor/bin
${HOME}/go/bin
"

for item in $PATH_LIST
do
    if [ -d "$item" ]; then
        export PATH="$item:$PATH"
    fi
done

# Composer Alias
if command -v composer >/dev/null 2>&1; then
    alias composer="php -n /usr/local/bin/composer"
fi

# nvm
if [ -d "$HOME/.nvm" ]; then
    export NVM_DIR="$HOME/.nvm"
    . "$(brew --prefix nvm)/nvm.sh"
fi

# Bash completion for brew
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Powerline
if [ -f /usr/local/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh ]; then
    . /usr/local/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
fi
