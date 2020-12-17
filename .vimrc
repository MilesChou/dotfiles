set rtp+=/usr/local/lib/python3.7/site-packages/powerline/bindings/vim

" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256

let g:minBufExplForceSyntaxEnable = 1

if ! has('gui_running')
   set ttimeoutlen=10
   augroup FastEscape
      autocmd!
      au InsertEnter * set timeoutlen=0
      au InsertLeave * set timeoutlen=1000
   augroup END
endif

" Always display the statusline in all windows
set laststatus=2

set guifont=Inconsolata\ for\ Powerline:h14

" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode

" In some shell + vim, backspace will broken, reset backspace signal
set backspace=indent,eol,start

" My setting
syntax on
