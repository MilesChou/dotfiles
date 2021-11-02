#!/usr/bin/env fish

set prepend_paths
set prepend_paths $prepend_paths $HOME/.composer/vendor/bin
set prepend_paths $prepend_paths $HOME/go/bin
set prepend_paths $prepend_paths $HOME/bin

for val in $prepend_paths
    if test -d $val
        set PATH $val $PATH
    end
end

# Golang Home
if test -d (brew --prefix go)
    set -x GOROOT (brew --prefix go)/libexec
    set -x GOPATH /Users/miles/go
    set -x GO111MODULE auto
end

# Java Home
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home

# nvm
if test -d (brew --prefix nvm)
    set -x NVM_DIR $HOME/.nvm
    set -x nvm_prefix (brew --prefix nvm)
end

# init Node
node -v > /dev/null

# lang
set -x LANG en_US.UTF-8
