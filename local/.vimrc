"Move to Recent Editing position
 " au BufReadPost *
"  if line("'\"") > 0 && line("'\"") <= line("$") | exe "norm g`\"" | endif

if has("autocmd")
      au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
          \| exe "normal! g'\"" | endif
  endif

"set statusline+=%F
set laststatus=2 " 상태바 표시를 항상한다
set showmatch " 일치하는 괄호 하이라이팅
set fileencoding=utf-8 " 파일저장인코딩
set tenc=utf-8      " 터미널 인코딩
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2
set title
set hlsearch "검색 단어 하이라이트
set incsearch "  키워드 입력시 점진적 검색
set ignorecase "검색 대소문자 무시
set number "print line number

:colorscheme elflord

"cs add {cscope_path}/cscope.out

"----cscope configuration
  "set csprg=/usr/local/bin/cscope
  set nocsverb
  "cs add /root/trunk/src/cscope.out
  set csverb
  set cst

if has("cscope")
    " parent를 따라가면서 cscope DB를 찾아서 등록
    " autocmd BufEnter *.[chly] call ScopeFindDBFile()

    set cscopequickfix=s-,c-,d-,i-,t-,e-,g-
    " for using Ctrl+T(removing "tagstack is empty")
    set nocscopetag
    "make quick window to right
    set splitright

    nmap <F5> :cs find s <C-R>=expand("<cword>")<CR><CR>:cw<CR>
    nmap <F6> :cn<CR>
    nmap <F7> :cp<CR>
    nmap <F8> :ccl<CR>
endif

 map <F3> <C-W><C-W>
 map <C-L> :Tlist<CR>
 map <C-F11> :set paste<CR>
 map <C-F12> :set paste!<CR>
 nmap <F12> :windo set scb!<CR>

  if filereadable("/ys_config/.vundle.vim")
        so /ys_config/.vundle.vim
  endif


