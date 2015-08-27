language English_United States	      	" ���������� ����
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim

set nobackup       
set nowritebackup  
set noswapfile     

set autowrite
set autowriteall

" ����� � ���������
set mouse=a


"
" == �������
"------------------------------------------
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ������� ����������
Plugin 'JulesWang/css.vim'
Plugin 'hail2u/vim-css3-syntax.git'
Plugin 'groenewege/vim-less.git'
"Plugin 'skammer/vim-css-color.git'

Plugin 'digitaltoad/vim-jade'
Plugin 'evidens/vim-twig'
Plugin 'vim-scripts/django.vim'
Plugin 'aaronj1335/underscore-templates.vim'
Plugin 'othree/html5.vim'

" �������������� �������
Plugin 'junegunn/vim-easy-align'
Plugin 'mattn/emmet-vim.git'
"Plugin 'miripiruni/CSScomb-for-Vim.git'
Plugin 'nelstrom/vim-qargs'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'tmhedberg/matchit'
Plugin 'vim-scripts/CSS-one-line--multi-line-folding'
Plugin 'yegappan/mru'
Plugin 'majutsushi/tagbar'
"Plugin 'juneedahamed/svnj.vim'
"Plugin 'rking/ag.vim'
"Plugin 'benmills/vimux'
"Plugin 'mklabs/grunt.vim'

"Snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'bonsaiben/bootstrap-snippets'  
Plugin 'honza/vim-snippets'

" ��������� �� ������
"Plugin 'project.tar.gz'
"Plugin 'shemerey/vim-indexer'
 
" �������� �����
"Plugin 'mileszs/ack.vim'
"Plugin 'tpope/vim-abolish'
"Plugin 'exUtility'

call vundle#end()
filetype plugin indent on    " required!
filetype on                  " required!



"
" == ������� �������
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
nmap <F7> :grep -r --exclude=*~ --exclude-dir=finish  "" templates<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
 
" F8 - ���/���� ������� ������� �����
map <F8> :set wrap!<cr>

" F9 - CSScomb
nmap <F9> :CSScomb<cr>

" F11 - ������� �� ������� ����� �� ����������
nmap <F11> :tabe C:\Program\ Files\vim\vimfiles\snippets\<cr>

" Shift-F12 - ������������ ������:set directory=$HOME/.vim/swapfiles//
map <S-F12> :Vex z: <cr><C-W>20\|

" ��������� ��������� K, �������� ������������� �� caps-lock
nmap K <Nop>


"
" == ������� ���������
"------------------------------------------

"�������� �����
colors desert

"�������� ������ �����
set number
"������������� ���� � �������
set expandtab
"������ ��������� �� ���������
set shiftwidth=4 
set softtabstop=4 
set tabstop=4
"��� ������������ ������� ����� �� ����� ����������� �� ������
set hidden

"�� ���������� ������� ������
set nowrap
" ������� ����� �� ������, � �� �� ������
set linebreak
" �������� ������������ ������ ������ >>>
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

"��������� ������ � �������� �����
set backupdir=$HOME\.vim\\

"Project plugin options
let g:proj_flags="cgimt"
set wildignore=*~



"
" == ����������� ������� � ��������� ���������
"------------------------------------------

"��� ����������� �������� �� ������ (w) � ������� ������
set iskeyword=@,a-z,A-Z,48-57,_,128-175,192-255
"��� ���������� ������ ������ �� ������� ���������
set langmap=�\\;,�\\,�.,�p,�y,�f,�g,�c,�r,�l,�/,�@,�a,�o,�e,�u,�i,�d,�d,�t,�n,�s,�-,�\\',�q,�j,�k,�x,�b,�m,�w,�v,�:,�<,�>,�P,�Y,�F,�G,�C,�R,�L,�?,�\\',�A,�O,�E,�U,�I,�D,�H,�T,�N,�S,�_,�\\",�Q,�J,�K,�X,�B,�M,�W,�V,�$
"set langmap=\\;q,\\,w,.e,pr,yt,fy,gu,ci,ro,lp,/[,=],aa,os,ed,uf,ig,dh,hj,tk,nl,-\\',\\'z,qx,jc,kv,xb,bn,mm,w\\,,v.,z/,<W,>E,PR,YT,FY,GU,CI,RO,LP,?{,+},AA,OS,ED,UF,IG,DH,HJ,TK,NL,S:,_\\",\\"Z,QX,JC,KV,XB,BN,MM,W<,V>,Z?,�q,�w,�e,�r,�t,�y,�u,�i,�o,�p,�[,�],�s,�s,�d,�f,�g,�h,�j,�k,�l,�\\;,�\',�z,�x,�c,�v,�b,�n,�m,�\\,,�.,�Q,�W,�E,�R,�T,�Y,�U,�I,�O,�P,�[,�],�A,�S,�D,�F,�G,�H,�J,�K,�L,�:,�\\",�Z,�X,�C,�V,�B,�N,�M,�<,�>

ino <C-C> <Esc>



"
" == �������
"------------------------------------------

"��������� ����� ���� � ������ �������
autocmd BufRead,BufNewFile *.cshtml set filetype=html
autocmd BufRead,BufNewFile *.twig set filetype=html
autocmd BufRead,BufNewFile *.less set filetype=css
autocmd BufRead,BufNewFile *.sass set filetype=css

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
"set imsearch=-1
"set keymap=insert-only_capslock
"set iminsert=0
" black cursor - caps off
":highlight Cursor guifg=NONE guibg=Red
" cyan cursor - caps off
":highlight lCursor guifg=NONE guibg=Cyan

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

" ����������� �� '-' � <?php ?>
autocmd FileType php let b:surround_45 = "<?php \r ?>"
" ����������� �� '/' � <?php /* */ ?>
autocmd FileType php let b:surround_47 = "<?php /* \r */ ?>"
" ����������� �� '?' � <?  ?> 
autocmd FileType html let b:surround_63 = "<? \r ?>"

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

" emmet.vim �������� 
let g:user_emmet_settings = {
\    'css': {
\        'snippets': {
\            'ct' : "content:\"\";",
\            'c': 'color:|;',
\            'm:0a': 'margin:0 auto;',
\            'm0a': 'margin:0 auto;',
\            'mw': 'min-width:|;',
\            'mh': 'min-height:|;',
\            'bd+': 'border:1px solid |;',
\            'bdt+': 'border-top:1px solid |;',
\            'bdl+': 'border-left:1px solid |;',
\            'bdr+': 'border-right:1px solid |;',
\            'bdb+': 'border-bottom:1px solid |;',
\            'bg': 'background:|;',
\            'bg+': 'background:url("|") no-repeat;',
\            'bg:i': 'background:url("@{img}|") no-repeat;',
\            'c:bp' : "color:@brand-primary;",
\            'c:bs' : "color:@brand-success;",
\            'c:bw' : "color:@brand-warning;",
\            'c:bd' : "color:@brand-danger;",
\            'c:bi' : "color:@brand-info;",
\            'bg:bp' : "background:@brand-primary;",
\            'bg:bs' : "background:@brand-success;",
\            'bg:bw' : "background:@brand-warning;",
\            'bg:bd' : "background:@brand-danger;",
\            'bg:bi' : "background:@brand-info;",
\            'ff:bs' : "font-family: @font-family-base",
\            'bs:b' : ".box-shadow(|rgba(0,0,0,.2))",
\        }
\     },
\}



"
" == ��� �������
"------------------------------------------

" ,n - ������� � �������� ���� css-����� ��� ��������
map ,n yi"<S-Tab>o.<C-r>0 {  }<Left><Left>

" ,* - ����� ����������� ������ � �������� ����
vmap ,* *<S-Tab>nzz

" ,* - ����� ������ �� ������ ������
nmap ,* /<C-r>*<cr>zz

" ,g - grep-����� � ������� ����� (Grep)
nmap ,g :grep -r "" *<Left><Left><Left>

" ,gt - grep-����� � ������� ����� .twig ������ (Grep)
nmap ,gg :grep -r "" * --exclude-dir=".svn"<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" ,su - �������� ��������� underscore (Syntax Underscore)
nmap ,su :set ft=html<cr>:set syntax=underscore_template<cr>

" ,te - �������� ����� ���� (Tag End)
nmap ,te vato<C-c>yi"vat<C-c>A <!-- / <C-r>" --><C-c>

" ,e - ������� netrw � ������� ����� (Explore)
nmap ,e :Ex<cr>

" ,sh - ������� ������� � ������� �����
nmap ,sh :!start bash --login -i<cr>

" ���������� � ����� ������ ���� � �����
if has('win32')
  " ,cs - �������� � ����� ������ ��� �����
  nmap ,cs :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
  " ,cl - �������� � ����� ������ ���� � �����
  nmap ,cl :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>
  " ,c8 - �������� � ����� ��� � DOS-�������
  nmap ,c8 :let @*=substitute(expand("%:p:8"), "/", "\\", "g")<CR>
else
  nmap ,cs :let @*=expand("%")<CR>
  nmap ,cl :let @*=expand("%:p")<CR>
endif



"
" == ���������� � ��������� ��� css � js
"------------------------------------------

"������� ���������� 
nmap ,mi v"ay:g/\v(\=\=\|\*\*)/y A<CR>g;"apV}:s/  //g<CR>gv:s/== //g<CR>gv:s/** /  /g<CR>

"������� ��������� 1-�� ������
nmap ,m1 o//<CR>// ==<CR>// <CR><C-c>kA-<C-c>59.ka 

"������� ��������� 2-�� ������
nmap ,m2 i<CR>// ** 


"
" == CSS text-objects
"------------------------------------------

"������� �������� � �������� ����� ����
nmap dar ?[{<Char-0x7c><Char-0x7c>]<CR>wd/;\s?/e<CR>
"������� �������� ��� ������� ����� ����
nmap cir ?[{<Char-0x7c><Char-0x7c>]<CR>wc/;/e<CR>
"TO-DO ����� ��� �� ����� ��������� ���� text-objects


"
" == TO-DO
"------------------------------------------

"TO-DO emmet-vim css-�������� � �������

"�������
"TO-DO ����������� ide.vim
"TO-DO Project: ��������� � vs
"TO-DO ��� ����� git-grep
"TO-DO ack
"TO-DO ����������� https://github.com/mozilla/doctorjs
