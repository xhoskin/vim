language English_United States	      	" английский язык
runtime macros/matchit.vim              " подключаем matchit.vim
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim

"------------------------------------------
" ` Плагины
"------------------------------------------
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=$VIM\vimfiles\bundle\vundle
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" плагины синтаксиса
Bundle 'evidens/vim-twig'
Bundle 'groenewege/vim-less.git'
Bundle 'hail2u/vim-css3-syntax.git'
Bundle 'skammer/vim-css-color.git'
Bundle 'vim-scripts/django.vim'
Bundle 'aaronj1335/underscore-templates.vim'

" функциональные плагины
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

" навигация по файлам
Bundle 'project.tar.gz'
Bundle 'shemerey/vim-indexer'
 
" попробую позже
"Bundle 'mileszs/ack.vim'
"Bundle 'tpope/vim-abolish'
"Bundle 'exUtility'

filetype plugin indent on    " required!
filetype on                  " required!


"------------------------------------------
" `Горячие клавиши
"------------------------------------------
" <C-x> - вырезать
vmap <C-x> "*d
" <C-v> - вставить
map <C-Insert> "*y
map <S-Insert> "*p

" <C-@>
nmap <C-@> <C-]>

" В командной строке:
" <C-p>|<C-n> - следущая|предыдущая команда из истории
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" В командной строке и режиме ввода:
" <C-f>|<C-b> - вправо|влево
cnoremap <C-f> <Right>
inoremap <C-f> <Right>
cnoremap <C-b> <Left>
inoremap <C-b> <Left>
" <C-a>|<C-e> - в начало|конец
cnoremap <C-a> <Home>
inoremap <C-a> <Home>
cnoremap <C-e> <End>
inoremap <C-e> <End>
          
" переключения между окнамии и вкладками
map <S-Tab> <C-w>w
map <C-Tab> :tabn<CR>
map <CS-Tab> :tabp<CR>

"F1 - показать имя редактируемого файла (вместо справки)
map <F1> g<C-G>

" F2 - сохранить файл
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i
" C-F2 - сохранить файл
nmap <C-F2> :wall<cr>
vmap <C-F2> <esc>:wall<cr>i
imap <C-F2> <esc>:wall<cr>i

" F7 - поиск vimgrep по текущей папке
"nmap <F7> :vimgrep // *<Left><Left><Left>
nmap <F7> :grep -r --exclude=*~ --exclude-dir=finish  "" cart catalog common templates<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
 
" F8 - вкл/выкл перенос длинных строк
map <F8> :set wrap!<cr>

" F9 - CSScomb
nmap <F9> :CSScomb<cr>

" F11 - открыть во вкладке папку со сниппетами
nmap <F11> :tabe C:\Program\ Files\vim\vimfiles\snippets\<cr>

" Shift-F12 - обозреватель файлов
map <S-F12> :Vex z: <cr><C-W>20\|

" отключаем сочетание K, случайно срабатывающее на caps-lock
nmap K <Nop>

" создать в соседнем окне css-класс под курсором
map ,n yi"<S-Tab>o.<C-r>0 {  }<Left><Left>

" поиск выделенного текста в соседнем окне
vmap ,* *<S-Tab>nzz

" поиск текста из буфера обмена
nmap ,* /<C-r>*<cr>zz

"------------------------------------------
" ` Запуск внешних программ и компиляторов
"------------------------------------------

"pascal
"nmap <C-F9> <F2>:!echo off && c:\FPC\2.4.4\bin\i386-win32\fpc.exe % \| findstr "^%" \|\| %:r <cr><cr>

"tidy
"vmap ,x :%!tidy -q -i --show-errors 0<CR>

"------------------------------------------
" ` Базовые настройки
"------------------------------------------

"цветовая схема
colors desert

"показать номера строк
set number
"преобразовать табы в пробелы
set expandtab
"размер табулации по умолчанию
set shiftwidth=2 
set softtabstop=2 
set tabstop=2
"при переключении буферов файлы не будут выгружаться из памяти
set hidden

"не переносить длинные строки
set nowrap
"Перенос строк по словам, а не по буквам
set linebreak
"Помечаем перенесенные строки знаком >>>
set showbreak=>>>

"скрыть панель инструментов
set guioptions-=T
"при наборе шаблона поиска сразу переходить на первое совпадение
set incsearch
"не подсвечивать все совпадения при поиске
set nohlsearch
"не учитывать регистр символов при поиске
set ignorecase
"не издавать противный звуковой сигнал
set vb t_vb=
"не создавать swap-файл
set noswapfile
"подсвечивать текущую строку
"set cursorline

"Project plugin options
let g:proj_flags="cgimt"
set wildignore=*~


"------------------------------------------
" ` Исправления проблем с раскадкой клавиатур
"------------------------------------------

"для правильного перехода по словам (w) в русском тексте
set iskeyword=@,a-z,A-Z,48-57,_,128-175,192-255
"для правильной работы команд на русской раскладке
set langmap=й\\;,ц\\,у.,кp,еy,нf,гg,шc,щr,зl,х/,ъ@,фa,ыo,вe,аu,пi,рd,оd,лt,дn,жs,э-,я\\',чq,сj,мk,иx,тb,ьm,бw,юv,Й:,Ц<,У>,КP,ЕY,НF,ГG,ШC,ЩR,ЗL,Х?,Ъ\\',ФA,ЫO,ВE,АU,ПI,РD,ОH,ЛT,ДN,ЖS,Э_,Я\\",ЧQ,СJ,МK,ИX,ТB,ЬM,БW,ЮV,ё$
"set langmap=\\;q,\\,w,.e,pr,yt,fy,gu,ci,ro,lp,/[,=],aa,os,ed,uf,ig,dh,hj,tk,nl,-\\',\\'z,qx,jc,kv,xb,bn,mm,w\\,,v.,z/,<W,>E,PR,YT,FY,GU,CI,RO,LP,?{,+},AA,OS,ED,UF,IG,DH,HJ,TK,NL,S:,_\\",\\"Z,QX,JC,KV,XB,BN,MM,W<,V>,Z?,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фs,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э\',яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х[,Ъ],ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э\\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>

ino <C-C> <Esc>


"------------------------------------------
" ` Скрипты
"------------------------------------------

"открывать файлы кода в нужном формате
autocmd BufRead,BufNewFile *.cshtml set filetype=html
autocmd BufRead,BufNewFile *.twig set filetype=html
autocmd BufRead,BufNewFile *.less set filetype=css
autocmd BufRead,BufNewFile *.sass set filetype=css

" TODO: перенести функцию в плагин
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

" перезагружать vimrc каждый раз, когда его пересохраняют
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" файлы, которые не будут показываться в netrw
let g:netrw_list_hide='\~,\.git'

" оборачивать по '-' в <?php ?> /
autocmd FileType php let b:surround_45 = "<?php \r ?>"
" оборачивать по '/' в <?php /* */ ?> /
autocmd FileType php let b:surround_47 = "<?php/* \r */?>"

" копировать в буфер обмена путь к файлу
if has('win32')
  nmap ,cs :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
  nmap ,cl :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>
  nmap ,c8 :let @*=substitute(expand("%:p:8"), "/", "\\", "g")<CR>
else
  nmap ,cs :let @*=expand("%")<CR>
  nmap ,cl :let @*=expand("%:p")<CR>
endif

"включить синтаксис underscore
nmap ,su :set ft=underscore_template<cr>

"пометить конец тега
nmap ,e vato<C-c>yi"vat<C-c>A <!-- / <C-r>" --><C-c>

"создать содержание для less-файла
nmap ,mi :g/\v(\=\=\\|\*\*)/y A"apV}:s/  //ggv:s/== //ggv:s/** /  /g

" расширения, которые будут добавлятсья при переходе по gf
:set suffixesadd+=.php,.less,.css

" используем unix-grep вместо windows-findstr
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

"удалить свойство с пробелом после него
nmap dar ?[{<Char-0x7c><Char-0x7c>]<CR>wd/;\s?/e<CR>
"удалить свойство БЕЗ пробела после него
nmap cir ?[{<Char-0x7c><Char-0x7c>]<CR>wc/;/e<CR>
"TO-DO найти как по науке создовать свои text-objects

"TO-DO попробовать ide.vim
"TO-DO Project: открывать в vs
"TO-DO что такое git-grep
"TO-DO ack

"TO-DO попробовать https://github.com/mozilla/doctorjs
"


nmap ,mi :g/\v(\=\=|\*\*)/y A"ap
