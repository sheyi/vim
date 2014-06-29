colorscheme solarized
"colo morning		    " 设定配色方案
"colo sheyi

"set guifont=MONACO:h11
"set guifont=Courier_New:h10:cANSI	"设定字体
set guifont=YaHei_Consolas_Hybrid:h12                 "设置字体:字号（字体名称空格用下划线代替）
set encoding=utf-8
"call pathogen#runtime_append_all_bundles()	"插件打包
execute pathogen#infect()

"Delete current line
nmap <C-D> dd
imap <C-D> <ESC>ddi
map <C-D> dd

let mapleader=','
set helplang=cn
"autocmd! bufwritepost _vimrc source %         "自动载入配置文件不需要重启

" 自动重新读入
set autoread


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim7.1在windows下的编码设置。By Huadong.Liu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set encoding=utf-8
"set fileencodings=utf-8,chinese,latin-1
"if has("win32")
"set fileencoding=chinese
"else
"set fileencoding=utf-8
"endif
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8


set enc=utf8 
set fencs=utf8,gbk,gb2312,gb18030,cp936 











au GUIENTER * simalt ~x  "打开文件自动最大化
":set key=       "解密
"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F3> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>



" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]


set dictionary+=$VIMRUNTIME/../vimfiles/dic/sheyi.txt
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"set nowrap "设置不自动折行
set nocompatible            " 关闭 vi 兼容模式
syntax enable
syntax on                   " 自动语法高亮
set number                  " 显示行号
set cursorline              " 突出显示当前行
set ruler                   " 打开状态栏标尺
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)	"没有用
 
set shiftwidth=4            " 设定 > 命令移动时的宽度为 4
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4               " 设定 tab 长度为 4
set nobackup                " 覆盖文件时不备份
set autochdir               " 自动切换当前目录为当前文件所在的目录
filetype indent on	    " 为特定文件类型载入相关缩进文件
filetype plugin on	    " 载入文件类型插件
filetype plugin indent on   " 开启插件
filetype on	            " 检测文件的类型
setlocal foldlevel=1		" 设置折叠层数为
set backupcopy=yes          " 设置备份时的行为为覆盖
set ignorecase		    " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set smartcase
set nowrapscan              " 禁止在搜索到文件两端时重新搜索
set incsearch               " 输入搜索内容时就显示搜索结果
set hlsearch                " 搜索时高亮显示被找到的文本
set noerrorbells            " 关闭错误信息响铃
set novisualbell            " 关闭使用可视响铃代替呼叫
set t_vb=                   " 置空错误铃声的终端代码
set vb t_vb=                 "去掉警铃响
" set showmatch               " 插入括号时，短暂地跳转到匹配的对应括号
" set matchtime=2             " 短暂跳转到匹配括号的时间
set magic                   " 设置魔术
set hidden                  " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
"set guioptions-=T           " 隐藏工具栏
"set guioptions-=m           " 隐藏菜单栏
set smartindent             " 开启新行时使用智能自动缩进
set backspace=indent,eol,start
                            " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1             " 设定命令行的行数为 1
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)
set noswapfile                    " It's 2012, Vim.
"set clipboard+=unnamed		" 与windows共享剪贴板share clipboard with windows
set ic                  " 搜索不区分大小写


set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
"set go=             " 不要图形按钮  
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
"autocmd InsertEnter * se cul    " 用浅色高亮当前行  
set showcmd         " 输入的命令显示出来，看的清楚些  
"set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
"set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set novisualbell    " 不要闪烁(不明白)  
set foldenable      " 允许折叠  
set foldmethod=manual   " 手动折叠  
"cd E:\w		"默认工作目录
cd E:\Dropbox\Docs	"默认工作目录



" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"autocmd BufEnter * call DoWordComplete()


" 文件浏览器 netrw
"map <f2> :Explore<cr>

"filetype plugin on
"filetype indent on
let g:tex_flavor='latex'



let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>


let g:miniBufExplMapWindowNavVim = 1	"则可以用<C-h,j,k,l>切换到上下左右的窗口中去,
let g:miniBufExplMapWindowNavArrows = 1	"是用<C-箭头键>切换到上下左右窗口中去

set tags=tags;"ctags
let g:SuperTabRetainCompletionType=2	"supertab
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

"authorinfo
"let g:vimrc_author='dantezhu' 
"let g:vimrc_email='zny2008@gmail.com' 
"let g:vimrc_homepage='http://www.vimer.cn' 
"nmap <F4> :AuthorInfoDetect<cr>


    """"""""""""""""""""""""""""""
   " mark setting
   """"""""""""""""""""""""""""""
   nmap <silent> <leader>hl <Plug>MarkSet
   vmap <silent> <leader>hl <Plug>MarkSet
   nmap <silent> <leader>hh <Plug>MarkClear
   vmap <silent> <leader>hh <Plug>MarkClear
   nmap <silent> <leader>hr <Plug>MarkRegex
   vmap <silent> <leader>hr <Plug>MarkRegex




  ""出现错误 map <F12> :Voom<CR>

set dy=lastline "显示最多行，不用@@

"tab mappings
map <M-1> 1gt
map <M-2> 2gt
map <M-3> 3gt
map <M-4> 4gt
map <M-5> 5gt
map <M-6> 6gt
map <M-7> 7gt
map <M-8> 8gt
map <M-9> 9gt
"map <M-t> :tabnew<CR>
"map <M-w> :tabclose<CR>
map! <M-1> <esc>1gt
map! <M-2> <esc>2gt
map! <M-3> <esc>3gt
map! <M-4> <esc>4gt
map! <M-5> <esc>5gt
map! <M-6> <esc>6gt
map! <M-7> <esc>7gt
map! <M-8> <esc>8gt
map! <M-9> <esc>9gt
"map! <M-t> <esc>:tabnew<CR>
"map! <M-w> <esc>:tabclose<CR>
 " =============
"nmap <C-t>   :tabnew<cr>
"nmap <C-p>   :tabprevious<cr>
"nmap <C-n>   :tabnext<cr>
"nmap <C-k>   :tabclose<cr>
"nmap <C-Tab> :tabnext<cr> 

" Tab navigation
nnoremap tp :tabprevious<CR>
nnoremap tn :tabnext<CR>
nnoremap to :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap gf <C-W>gf

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

"打开文件时自动回到上次编辑位置。
if has("autocmd")
   autocmd BufRead *.txt set tw=78
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal g'\"" |
      \ endif
endif


" DoxygenToolkit.vim
" http://www.vim.org/scripts/script.php?script_id=987
" 下载后放入vimplugin中
let g:DoxygenToolkit_briefTag_pre="@synopsis  "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@returns   "
let g:DoxygenToolkit_authorName="SheYi, sheyee@163.com"
let s:licenseTag = "Copyright(C) Higrid.net All right reserved\<enter>"
let s:licenseTag = s:licenseTag . "购买商业注册版本请访问http://higrid.net 获得更多信息\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
map <F5>a :DoxAuthor
map <F5>f :Dox
map <F5>b :DoxBlock
map <F5>l :DoxLic
map <F5>c O/** */<Left><Left> "添加多行注释

"导出到html m,nTOhtml
let html_number_lines = 0  "don’t show line numbers
let html_no_pre = 1  "don’t wrap lines in
let g:html_use_css=0 "不使用固定CSS
let html_ignore_folding=1 "不生成代码折叠

"缩写
:ab hw hello world
:ab c3c4 C-3/C-4项目部


"autocmd BufNewFile,BufRead *.quicktask setf quicktask

":let g:notes_directory = 'E:/github/notes'
":let g:notes_suffix = '.md'

" Ctrl + K 插入模式下光标向上移动
imap <c-k> <Up>
" Ctrl + J 插入模式下光标向下移动
imap <c-j> <Down>
" Ctrl + H 插入模式下光标向左移动
imap <c-h> <Left>
" Ctrl + L 插入模式下光标向右移动
imap <c-l> <Right>
"""nnoremap <silent> <F5> :YRShow<CR>
imap ssj <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr>
imap srq <c-r>=strftime("20%y-%m-%d")<cr>
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
:map <F12> :!tex2ppt.bat
"进行NerdTree的设置
map <F4> :silent! NERDTree<CR>

"todo 搜索
:map <F5> :set ft=todo<CR>
:map <c-F5> :Filter 
"快速config
"map sconfig :e \$vim\/_vimrc
"---------------------------------------- 
" 使更新 _vimrc 更容易  # 译释：nmap 是绑定一个在normal模式下的快捷键
":nmap ,s :source $VIM/_vimrc
:nmap ,v :e $VIM/_vimrc
"译释：在normal模式下，先后按下 ,s 两个键执行_vimrc，而 ,v 则是编辑_vimrc
"切换到当前目录
nmap <leader>q :execute "cd" expand("%:h")<CR>
"搜索替换
nmap <leader>t :%s///gc<left><left><left><left>
nmap <leader>s /\<\><left><left>

"用于删除win32下难看的蓝色^M（其实是换行符\r） 
nmap dm :%s/\r//g<cr> 




"@@@@@@@@@@@@以下请不要修改@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"txtbrowser 默认是xbeta设置
"let tlist_txt_settings = 'txt;c:content;f:figures;t:tables'
"au BufRead,BufNewFile *.txt setlocal ft=txt
syntax on
filetype plugin on 
au BufEnter *.txt setlocal ft=txt
