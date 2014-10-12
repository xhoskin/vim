language English_United States	      	" английский язык
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim

"
" == Плагины
"------------------------------------------
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=$VIM\vimfiles\bundle\vundle
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" плагины синтаксиса
Plugin 'aaronj1335/underscore-templates.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'evidens/vim-twig'
Plugin 'groenewege/vim-less.git'
Plugin 'hail2u/vim-css3-syntax.git'
Plugin 'skammer/vim-css-color.git'
Plugin 'vim-scripts/django.vim'

" функциональные плагины
Plugin 'junegunn/vim-easy-align'
Plugin 'mattn/emmet-vim.git'
Plugin 'miripiruni/CSScomb-for-Vim.git'
Plugin 'nelstrom/vim-qargs'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/CSS-one-line--multi-line-folding'
Plugin 'junegunn/vim-easy-align'
Plugin 'mileszs/ack.vim'
Plugin 'yegappan/mru'

"Snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
"bootstrap html-markup snippets!
Plugin 'bonsaiben/bootstrap-snippets'  
Plugin 'honza/vim-snippets'

" навигация по файлам
Plugin 'project.tar.gz'
Plugin 'ide'
"Plugin 'shemerey/vim-indexer'
 
" попробую позже
"Plugin 'mileszs/ack.vim'
"Plugin 'tpope/vim-abolish'
"Plugin 'exUtility'

call vundle#end()
filetype plugin indent on    " required!
filetype on                  " required!



"
" == Горячие клавиши
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
nmap <F7> :grep -r --exclude=*~ --exclude-dir=finish  "" templates<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
 
" F8 - вкл/выкл перенос длинных строк
map <F8> :set wrap!<cr>

" F9 - CSScomb
nmap <F9> :CSScomb<cr>

" F11 - открыть во вкладке папку со сниппетами
nmap <F11> :tabe C:\Program\ Files\vim\vimfiles\snippets\<cr>

" Shift-F12 - обозреватель файлов:set directory=$HOME/.vim/swapfiles//
map <S-F12> :Vex z: <cr><C-W>20\|

" отключаем сочетание K, случайно срабатывающее на caps-lock
nmap K <Nop>



"------------------------------------------

"pascal
"nmap <C-F9> <F2>:!echo off && c:\FPC\2.4.4\bin\i386-win32\fpc.exe % \| findstr "^%" \|\| %:r <cr><cr>

"tidy
"vmap ,x :%!tidy -q -i --show-errors 0<CR>



"
" == Базовые настройки
"------------------------------------------

"цветовая схема
colors desert

"показать номера строк
set number
"преобразовать табы в пробелы
set expandtab
"размер табулации по умолчанию
set shiftwidth=4 
set softtabstop=4 
set tabstop=4
"при переключении буферов файлы не будут выгружаться из памяти
set hidden

"не переносить длинные строки
set nowrap
" Перенос строк по словам, а не по буквам
set linebreak
" Помечаем перенесенные строки знаком >>>
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

"сохранять бэкапы в домашнюю папку
"set backupdir=$HOME\\vim-tmp

"не сохранять бекапы
set nobackup
set nowritebackup
set noswapfile

"Project plugin options
let g:proj_flags="cgimt"
set wildignore=*~



"
" == Исправление проблем с раскадкой клавиатур
"------------------------------------------

"для правильного перехода по словам (w) в русском тексте
set iskeyword=@,a-z,A-Z,48-57,_,128-175,192-255
"для правильной работы команд на русской раскладке
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
"для буквы Ё
setlocal spell spelllang=ru_yo,en_us

ino <C-C> <Esc>



"
" == Скрипты
"------------------------------------------

"открывать файлы кода в нужном формате
autocmd BufRead,BufNewFile *.cshtml set filetype=html
autocmd BufRead,BufNewFile *.twig set filetype=html
autocmd BufRead,BufNewFile *.ejs  set filetype=html
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

" оборачивать по '-' в <?php ?>
autocmd FileType php let b:surround_45 = "<?php \r ?>"
" оборачивать по '/' в <?php /* */ ?>
autocmd FileType php let b:surround_47 = "<?php /* \r */ ?>"
" оборачивать по '?' в <?  ?> 
autocmd FileType html let b:surround_63 = "<? \r ?>"

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



"
" == Мои макросы
"------------------------------------------

" ,n - создать в соседнем окне css-класс под курсором
map ,n yi"<S-Tab>o.<C-r>0 {  }<Left><Left>

" ,* - поиск выделенного текста в соседнем окне
vmap ,* *<S-Tab>nzz

" ,* - поиск текста из буфера обмена
nmap ,* /<C-r>*<cr>zz

" ,g - grep-поиск в текущей паке
nmap ,g :grep -r "" *<Left><Left><Left>

" ,su - включить синтаксис underscore (mnemo - Set Underscore)
nmap ,su :set ft=html<cr>:set syntax=underscore_template<cr>

" ,e - пометить конец тега (mnemo - End)
nmap ,e vato<C-c>yi"vat<C-c>A <!-- / <C-r>" --><C-c>

" копировать в буфер обмена путь к файлу
if has('win32')
  " ,cs - копирует в буфер только имя файла
  nmap ,cs :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
  " ,cl - копирует в буфер полный путь к файлу
  nmap ,cl :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>
  " ,c8 - копирует в буфер имя в DOS-формате
  nmap ,c8 :let @*=substitute(expand("%:p:8"), "/", "\\", "g")<CR>
else
  nmap ,cs :let @*=expand("%")<CR>
  nmap ,cl :let @*=expand("%:p")<CR>
endif

" сделать многострочный css из однострочного (mnemo Css Multiline)
"vmap ,cm :s/\v( \{|\} |;)/\1<C-V><CR>/g<CR>


"
" == Содержание и заголовки для css и js
"------------------------------------------

"создать содержание (mnemo - Make Index)
nmap ,mi v"ay:g/\v(\=\=\|\*\*)/y A<CR>g;"apV}:s/  //g<CR>gv:s/== //g<CR>gv:s/** /  /g<CR>

"создать заголовок 1-го уровня (mnemo - make 1st level heading)
nmap ,m1 o//<CR>// ==<CR>// <CR><C-c>kA-<C-c>59.ka 

"создать заголовок 2-го уровня (mnemo - (mnemo - 2nd level heading)
nmap ,m2 i<CR>// ** 


"
" == CSS text-objects
"------------------------------------------

"удалить свойство с пробелом после него
nmap dar ?[{<Char-0x7c><Char-0x7c>]<CR>wd/;\s?/e<CR>
"удалить свойство БЕЗ пробела после него
nmap cir ?[{<Char-0x7c><Char-0x7c>]<CR>wc/;/e<CR>
"TO-DO найти как по науке создовать свои text-objects


"
" == TO-DO
"------------------------------------------

"TO-DO emmet-vim css-свойства в строчку

"плагины
"TO-DO попробовать ide.vim
"TO-DO Project: открывать в vs
"TO-DO что такое git-grep
"TO-DO ack
"TO-DO попробовать https://github.com/mozilla/doctorjs
