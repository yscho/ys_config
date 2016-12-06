"Move to Recent Editing position
 " au BufReadPost *
"  if line("'\"") > 0 && line("'\"") <= line("$") | exe "norm g`\"" | endif

if has("autocmd")
      au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
          \| exe "normal! g'\"" | endif
  endif

"set statusline+=%F
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2
set title


set ignorecase
set number "print line number
:colorscheme elflord

 map <F3> <C-W><C-W>
 map <C-L> :Tlist<CR>
 map <C-F11> :set paste<CR>
 map <C-F12> :set paste!<CR>

"----cscope configuration
  set csprg=/usr/local/bin/cscope
  set nocsverb
  cs add /root/trunk/src/cscope.out
  set csverb
  set cst

  if filereadable($TUK_HOME . "/dev/vim/tos.vim")
        so $TUK_HOME/dev/vim/tos.vim
  endif

  if filereadable("/ys_config/.vundle.vim")
        so /ys_config/.vundle.vim
  endif


