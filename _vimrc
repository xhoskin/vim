language English_United States	      	" ���������� ����
runtime macros/matchit.vim              " ���������� matchit.vim
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim

"------------------------------------------
" ` �������
"------------------------------------------
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=$VIM\vimfiles\bundle\vundle
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" ������� ����������
Bundle 'evidens/vim-twig'
Bundle 'groenewege/vim-less.git'
Bundle 'hail2u/vim-css3-syntax.git'
Bundle 'skammer/vim-css-color.git'
Bundle 'vim-scripts/django.vim'
Bundle 'aaronj1335/underscore-templates.vim'

" �������������� �������
Bundle 'mattn/emmet-vim.git'
Bundle 'miripiruni/CSScomb-for-Vim.git'
Bundle 'nelstrom/vim-qargs'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tsaleh/vim-matchit'
Bundle 'vim-scripts/CSS-one-line--multi-line-folding'
Bundle 'junegunn/vim-easy-align'

"Snipmate
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
"bootstrap html-markup snippets!
Bundle 'bonsaiben/bootstrap-snippets'  
Bundle 'honza/vim-snippets'

" ��������� �� ������
Bundle 'project.tar.gz'
Bundle 'shemerey/vim-indexer'
 
" �������� �����
"Bundle 'mileszs/ack.vim'
"Bundle 'tpope/vim-abolish'
"Bundle 'exUtility'

filetype plugin indent on    " required!
filetype on                  " required!


"------------------------------------------
" `������� �������
"------------------------------------------
" <C-x> - ��������
vmap <C-x> "*d
" <C-v> - ��������
map <C-Insert> "*y
map <S-Insert> "*p

" <C-@>
nmap <C-@> <C-]>

" � ��������� ������:
" <C-p>|<C-n> - ��������|���������� ������� �� �������
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" � ��������� ������ � ������ �����:
" <C-f>|<C-b> - ������|�����
cnoremap <C-f> <Right>
inoremap <C-f> <Right>
cnoremap <C-b> <Left>
inoremap <C-b> <Left>
" <C-a>|<C-e> - � ������|�����
cnoremap <C-a> <Home>
inoremap <C-a> <Home>
cnoremap <C-e> <End>
inoremap <C-e> <End>
          
" ������������ ����� ������� � ���������
map <S-Tab> <C-w>w
map <C-Tab> :tabn<CR>
map <CS-Tab> :tabp<CR>

"F1 - �������� ��� �������������� ����� (������ �������)
map <F1> g<C-G>

" F2 - ��������� ����
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i
" C-F2 - ��������� ����
nmap <C-F2> :wall<cr>
vmap <C-F2> <esc>:wall<cr>i
imap <C-F2> <esc>:wall<cr>i

" F7 - ����� vimgrep �� ������� �����
"nmap <F7> :vimgrep // *<Left><Left><Left>
nmap <F7> :grep -r --exclude=*~ --exclude-dir=finish  "" cart catalog common templates<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
 
" F8 - ���/���� ������� ������� �����
map <F8> :set wrap!<cr>

" F9 - CSScomb
nmap <F9> :CSScomb<cr>

" F11 - ������� �� ������� ����� �� ����������
nmap <F11> :tabe C:\Program\ Files\vim\vimfiles\snippets\<cr>

" Shift-F12 - ������������ ������
map <S-F12> :Vex z: <cr><C-W>20\|

" ��������� ��������� K, �������� ������������� �� caps-lock
nmap K <Nop>

" ������� � �������� ���� css-����� ��� ��������
map ,n yi"<S-Tab>o.<C-r>0 {  }<Left><Left>

" ����� ����������� ������ � �������� ����
vmap ,* *<S-Tab>nzz

" ����� ������ �� ������ ������
nmap ,* /<C-r>*<cr>zz

"------------------------------------------
" ` ������ ������� �������� � ������������
"------------------------------------------

"pascal
"nmap <C-F9> <F2>:!echo off && c:\FPC\2.4.4\bin\i386-win32\fpc.exe % \| findstr "^%" \|\| %:r <cr><cr>

"tidy
"vmap ,x :%!tidy -q -i --show-errors 0<CR>

"------------------------------------------
" ` ������� ���������
"------------------------------------------

"�������� �����
colors desert

"�������� ������ �����
set number
"������������� ���� � �������
set expandtab
"������ ��������� �� ���������
set shiftwidth=2 
set softtabstop=2 
set tabstop=2
"��� ������������ ������� ����� �� ����� ����������� �� ������
set hidden

"�� ���������� ������� ������
set nowrap
"������� ����� �� ������, � �� �� ������
set linebreak
"�������� ������������ ������ ������ >>>
set showbreak=>>>

"������ ������ ������������
set guioptions-=T
"��� ������ ������� ������ ����� ���������� �� ������ ����������
set incsearch
"�� ������������ ��� ���������� ��� ������
set nohlsearch
"�� ��������� ������� �������� ��� ������
set ignorecase
"�� �������� ��������� �������� ������
set vb t_vb=
"�� ��������� swap-����
set noswapfile
"������������ ������� ������
"set cursorline

"Project plugin options
let g:proj_flags="cgimt"
set wildignore=*~


"------------------------------------------
" ` ����������� ������� � ��������� ���������
"------------------------------------------

"��� ����������� �������� �� ������ (w) � ������� ������
set iskeyword=@,a-z,A-Z,48-57,_,128-175,192-255
"��� ���������� ������ ������ �� ������� ���������
set langmap=�\\;,�\\,�.,�p,�y,�f,�g,�c,�r,�l,�/,�@,�a,�o,�e,�u,�i,�d,�d,�t,�n,�s,�-,�\\',�q,�j,�k,�x,�b,�m,�w,�v,�:,�<,�>,�P,�Y,�F,�G,�C,�R,�L,�?,�\\',�A,�O,�E,�U,�I,�D,�H,�T,�N,�S,�_,�\\",�Q,�J,�K,�X,�B,�M,�W,�V,�$
"set langmap=\\;q,\\,w,.e,pr,yt,fy,gu,ci,ro,lp,/[,=],aa,os,ed,uf,ig,dh,hj,tk,nl,-\\',\\'z,qx,jc,kv,xb,bn,mm,w\\,,v.,z/,<W,>E,PR,YT,FY,GU,CI,RO,LP,?{,+},AA,OS,ED,UF,IG,DH,HJ,TK,NL,S:,_\\",\\"Z,QX,JC,KV,XB,BN,MM,W<,V>,Z?,�q,�w,�e,�r,�t,�y,�u,�i,�o,�p,�[,�],�s,�s,�d,�f,�g,�h,�j,�k,�l,�\\;,�\',�z,�x,�c,�v,�b,�n,�m,�\\,,�.,�Q,�W,�E,�R,�T,�Y,�U,�I,�O,�P,�[,�],�A,�S,�D,�F,�G,�H,�J,�K,�L,�:,�\\",�Z,�X,�C,�V,�B,�N,�M,�<,�>

ino <C-C> <Esc>


"------------------------------------------
" ` �������
"------------------------------------------

"��������� ����� ���� � ������ �������
autocmd BufRead,BufNewFile *.cshtml set filetype=html
autocmd BufRead,BufNewFile *.twig set filetype=html
autocmd BufRead,BufNewFile *.less set filetype=css
autocmd BufRead,BufNewFile *.sass set filetype=css

" TODO: ��������� ������� � ������
" function MyDiff()
  " let opt = '-a --binary '
  " if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  " if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  " let arg1 = v:fname_in
  " if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  " let arg2 = v:fname_new
  " if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  " let arg3 = v:fname_out
  " if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  " let eq = ''
  " if $VIMRUNTIME =~ ' '
    " if &sh =~ '\<cmd'
      " let cmd = '""' . $VIMRUNTIME . '\diff"'
      " let eq = '"'
    " else
      " let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    " endif
  " else
    " let cmd = $VIMRUNTIME . '\diff'
  " endif
  " silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
" endfunction

" JSON
augroup json_autocmd 
  autocmd! 
  autocmd FileType json set autoindent 
  autocmd FileType json set formatoptions=tcq2l 
  autocmd FileType json set textwidth=78 shiftwidth=2 
  autocmd FileType json set softtabstop=2 tabstop=8 
  autocmd FileType json set expandtab 
  autocmd FileType json set foldmethod=syntax 
augroup END 

" Insert-only <CAPS-LOCK> on <C-^>
set imsearch=-1
"set keymap=insert-only_capslock
set iminsert=0
" black cursor - caps off
:highlight Cursor guifg=NONE guibg=Red
" cyan cursor - caps off
:highlight lCursor guifg=NONE guibg=Cyan

"auto encoding (win7 fix, but breaks gui menu)
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8 bomb
  set fileencodings=utf-8,cp1251,koi8-r,latin1
  set fileformats=dos,unix,mac
endif

" ������������� vimrc ������ ���, ����� ��� �������������
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" �����, ������� �� ����� ������������ � netrw
let g:netrw_list_hide='\~,\.git'

" ����������� �� '-' � <?php ?> /
autocmd FileType php let b:surround_45 = "<?php \r ?>"
" ����������� �� '/' � <?php /* */ ?> /
autocmd FileType php let b:surround_47 = "<?php/* \r */?>"

" ���������� � ����� ������ ���� � �����
if has('win32')
  nmap ,cs :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
  nmap ,cl :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>
  nmap ,c8 :let @*=substitute(expand("%:p:8"), "/", "\\", "g")<CR>
else
  nmap ,cs :let @*=expand("%")<CR>
  nmap ,cl :let @*=expand("%:p")<CR>
endif

"�������� ��������� underscore
nmap ,su :set ft=underscore_template<cr>

"�������� ����� ����
nmap ,e vato<C-c>yi"vat<C-c>A <!-- / <C-r>" --><C-c>

"������� ���������� ��� less-�����
nmap ,mi :g/\v(\=\=\\|\*\*)/y A"apV}:s/  //ggv:s/== //ggv:s/** /  /g

" ����������, ������� ����� ����������� ��� �������� �� gf
:set suffixesadd+=.php,.less,.css

" ���������� unix-grep ������ windows-findstr
set grepprg=\"$VIMRUNTIME\grep\grep.exe\"\ -ni\ $*
set grepformat=%f:%l:%m

" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign with a Vim movement
nmap <Leader>a <Plug>(EasyAlign)

" Repeat alignment in visual mode with . key
vmap . <Plug>(EasyAlignRepeat)



"------------------------------------------
" ` CSS text-objects
"------------------------------------------

"������� �������� � �������� ����� ����
nmap dar ?[{<Char-0x7c><Char-0x7c>]<CR>wd/;\s?/e<CR>
"������� �������� ��� ������� ����� ����
nmap cir ?[{<Char-0x7c><Char-0x7c>]<CR>wc/;/e<CR>
"TO-DO ����� ��� �� ����� ��������� ���� text-objects

"TO-DO ����������� ide.vim
"TO-DO Project: ��������� � vs
"TO-DO ��� ����� git-grep
"TO-DO ack

"TO-DO ����������� https://github.com/mozilla/doctorjs
"


nmap ,mi :g/\v(\=\=|\*\*)/y A"ap
