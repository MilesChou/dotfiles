#!/usr/bin/env fish

set prepend_paths
set prepend_paths $prepend_paths /usr/local/opt/ruby/bin
set prepend_paths $prepend_paths /usr/local/opt/go/libexec/bin
set prepend_paths $prepend_paths /usr/local/sbin
set prepend_paths $prepend_paths $HOME/.composer/vendor/bin
set prepend_paths $prepend_paths $HOME/.gem/ruby/2.6.0/bin
set prepend_paths $prepend_paths $HOME/go/bin
set prepend_paths $prepend_paths $HOME/bin

for val in $prepend_paths
    if test -d $val
        set PATH $val $PATH
    end
end

# JAVA Home
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home

# lang
set -x LANG en_US.UTF-8

# nvm
if test -d (brew --prefix nvm)
    set -x NVM_DIR $HOME/.nvm
    set -x nvm_prefix (brew --prefix nvm)
end

# init Node
node -v > /dev/null

# init phpbrew
source ~/.phpbrew/phpbrew.fish

# thefuck
if test -d (brew --prefix thefuck)
    thefuck --alias | source
end

# Powerline
# set fish_function_path $fish_function_path "/usr/local/lib/python3.9/site-packages/powerline/bindings/fish"
# powerline-setup

# THEME PURE #
set fish_function_path /Users/miles/.config/fish/functions/theme-pure/functions/ $fish_function_path
source /Users/miles/.config/fish/functions/theme-pure/conf.d/pure.fish
