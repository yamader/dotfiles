syntax on
set nowrap

set expandtab
set tabstop=2
set shiftwidth=2
set smarttab

set backupdir=$HOME/.vim

set mouse=
"set paste

" Auto directory creation
" https://vim-jp.org/vim-users-jp/2011/02/20/Hack-202.html
augroup vimrc-auto-mkdir
  autocmd!
  autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'))
  function! s:auto_mkdir(dir)
    if !isdirectory(a:dir)
      call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
    endif
  endfunction
augroup END
