" .vimrc vim 配置文件.
"缩写 日期 imode下键入xdate<cr>自动补齐
ia xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
"当前文件名
ia xfname <c-r>%
"按缩进折叠,启动时默认为折叠状态
"set foldmethod=indent
"Head同名头文件源文件切换
nmap <c-a> :A<cr>
" Fast saving
"nmap ww :w!<cr>
""检测文件类型?
filetype plugin indent on
set completeopt=longest,menu
"IDE
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"let Tlist_Auto_Open=1 "自动打开Tlist
"
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
"let g:winManagerWindowLayout = "TagList|FileExplorer,BufExplorer"
"let g:NERDTree_title='NERD Tree'
let g:winManagerWindowLayout='TagList'
""let g:winManagerWindowLayout='FileExplorer|TagList'
let g:AutoOpenWinManager = 0 "启动时自动打开其他文件/函数窗口
let g:WinManagerRight = 1 "文件窗口显示位置(默认:左)
"按键映射
nmap <c-t> :WMToggle<Cr>
nmap <c-l> :NERDTree<Cr>
"调试vim"
""set verbose=9 


colorscheme morning
"
set cscopequickfix=s-,c-,d-,i-,t-,e-

set nu
set cin
"set cursorline
"编码
""set fileencodings=utf-8,gb2312,gbk,gb18030
set fileencodings=utf-8,cp936,big5,latin1
set termencoding=utf-8
set fileformats=unix
set encoding=utf-8
""language messages zh_CN.utf-8

"high light
"cale -a | grep zh_CN
set cc=81
hi colorcolumn guibg=lightgreen

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
"":inoremap < <><ESC>i
"":inoremap > <c-r>=ClosePair('>')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i

function ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endf
