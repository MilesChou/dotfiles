#!/usr/bin/env fish

# Prepend paths
set prepend_paths
set prepend_paths $prepend_paths /usr/local/opt/ruby/bin
set prepend_paths $prepend_paths /usr/local/opt/go/libexec/bin
set prepend_paths $prepend_paths /usr/local/sbin
set prepend_paths $prepend_paths $HOME/.composer/vendor/bin
set prepend_paths $prepend_paths $HOME/go/bin
set prepend_paths $prepend_paths $HOME/bin

for val in $prepend_paths
    if test -d $val
        set PATH $val $PATH
    end
end

# nvm, need fish-nvm https://github.com/FabioAntunes/fish-nvm
if test -d (brew --prefix nvm)
    set -x NVM_DIR $HOME/.nvm
    set -x nvm_prefix (brew --prefix nvm)
end

# thefuck
if test -d (brew --prefix thefuck)
    thefuck --alias | source
end

# Powerline
# set fish_function_path $fish_function_path "/usr/local/lib/python3.7/site-packages/powerline/bindings/fish"
# powerline-setup

# Pure Fish
set fish_function_path /Users/miles/.config/fish/functions/theme-pure/functions/ $fish_function_path
source /Users/miles/.config/fish/functions/theme-pure/conf.d/pure.fish
