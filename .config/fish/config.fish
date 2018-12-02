#!/usr/bin/env fish

# Global command alias
alias ls="ls -G"

set prepend_paths
set prepend_paths $prepend_paths /usr/local/opt/php@7.1/bin
set prepend_paths $prepend_paths /usr/local/opt/php@7.1/sbin
set prepend_paths $prepend_paths /usr/local/opt/go/libexec/bin
set prepend_paths $prepend_paths /usr/local/sbin
set prepend_paths $prepend_paths $HOME/.composer/vendor/bin
set prepend_paths $prepend_paths $HOME/go/bin

for val in $prepend_paths
    if test -d $val
        set PATH $val $PATH
    end
end

# Composer Alias
if command -sq composer
    alias composer="php -n /usr/local/bin/composer"
end

# nvm
if test -d $HOME/.nvm
    set -x NVM_DIR $HOME/.nvm
    sh (brew --prefix nvm)/nvm.sh
end

# Powerline
set fish_function_path $fish_function_path "/usr/local/lib/python3.7/site-packages/powerline/bindings/fish"
powerline-setup
