" visual options
sy enable
se guicursor=
se laststatus=0 "cmdheight=0
se list listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
se number
se nowrap

" behavior options
se fileencodings=ucs-bom,utf-8,euc-jp,cp932,default,latin1
se foldlevelstart=99 foldmethod=indent
se ignorecase smartcase
se mouse=
se scrolloff=5 sidescrolloff=5

" editing options
se directory-=.
se expandtab shiftwidth=2 tabstop=8 softtabstop=-1
se smartindent

" keymap
no q <Nop>
no <Space> :
no <C-C> <Esc>
ino <C-C> <Esc>
nn <C-C> <Cmd>noh<CR>
no <C-H> <C-W>h
no <C-J> <C-W>j
no <C-K> <C-W>k
no <C-L> <C-W>l

" emacs
ino <C-A> <C-O><S-I>
cno <C-A> <Home>
no! <C-E> <End>
no! <C-F> <Right>
no! <C-B> <Left>
no! <C-D> <Del>
ino <C-K> <C-\><C-O>D
cno <C-K> <C-\>estrpart(getcmdline(),0,getcmdpos()-1)<CR>

" no auto comment
au FileType * setl formatoptions-=cro

" auto mkdir; https://neovim.io/doc/user/editing/#%2B%2Bp
au BufWritePre,FileWritePre * if @% !~# '\(://\)' | call mkdir(expand('<afile>:p:h'), 'p') | endif

" theme
colo industry
hi Normal guibg=NONE ctermbg=NONE
hi CursorLine guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
hi Folded guibg=NONE ctermbg=NONE
hi Identifier guifg=White ctermfg=15
hi NonText guifg=Grey35 ctermfg=59
hi SpecialKey guifg=Grey35 ctermfg=59
hi TabLineFill guibg=NONE ctermbg=NONE
hi VertSplit guifg=Grey42 guibg=NONE ctermfg=242 ctermbg=NONE
