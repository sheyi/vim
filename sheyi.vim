" Last Change: 2014-09-16 19:46:49

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++插件
" ================================================================================电脑选择
if filereadable("C:/notepad.txt")
    let g:notepad = 1
else
    let g:notepad = 0
endif


"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++插件
" ================================================================================一般设置

set noerrorbells           "  关闭错误信息响铃
set novisualbell           "  关闭使用可视响铃代替呼叫
set ic                     "  忽略大小写
set ambiwidth=double       "  utf-8时vim显示半个字符的解决办法 某种字体中文引号问题
set nojoinspaces           "  no space add when join two lines.(用j命令合并两行时, 不在之间加空格.)
set whichwrap=b,s,<,>,[,]  "  对某一个或几个按键开启到头后自动折向下一行的功能
set formatoptions+=m       "  如遇Unicode值大于255的文本，不必等到空格再折行。
set formatoptions+=B       "  合并两行中文时，不在中间加空格：
set mat=4                  "  How many tenths of a second to blink

behave mswin

if g:notepad
    set guifont=MONACO:h10:cANSI
    set guifontwide=YaHei_Consolas_Hybrid:h11
    " 感觉这个在笔记本上最好
    colorscheme molokai
else
    " set guifont=YaHei_Consolas_Hybrid:h13  
    " set guifont=YaHei\ Mono:h13
    "
    set guifont=MONACO:h12:cANSI
    set guifontwide=YaHei_Consolas_Hybrid:h13
    " set guifontwide=YouYuan:h14

	" set background=light
	" set background=dark
    colorscheme solarized
endif

"set guifont=Courier_New:h10:cANSI	"设定字体
" colorscheme solarized
" colo morning		    " 设定配色方案
" colorscheme tango2
" set t_Co=256                 "设置终端256色显示
"cd E:\r\docs_b  "默认工作目录

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++插件
"==============================================================================
"缩写
:ab hw hello world
:ab smore <!-- more -->
iab teh the
iab fro for
iab adn and
iab scc C-3/C-4项目部
imap sdate date: <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr>

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++插件
" ================================================================================
map Y y$
nnoremap S s$

map <leader>sa ggVG"
map <C-c> "+y 
" map <C-v> "+p 
map <C-V>		"+gP
cmap <C-V>		<C-R>+
exe 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']
exe 'vnoremap <script> <C-V> ' . paste#paste_cmd['v']
noremap <C-Q>		<C-V>
" vnoremap <F3> "+y
" map <F4>		<Esc><Esc>"+gP


" imap jk <Esc><Right>
" :map <F12> :!tex2ppt.bat
"进行NerdTree的设置
map j gj
map k gk
noremap zh 10h
noremap zj 10j
noremap zk 10k
noremap zl 10l
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++插件
" ================================================================================功能键设置
nnoremap <silent> <F3> :Grep<CR>
" "todo 搜索
" :map <F5> :set ft=todo<CR>
" :map <c-F5> :Filter 
" :map <F6> :SearchNotes //<left>
" :map <c-F6> :Note 
" :map <F7> :Fsgrep //<left>

" Key mappings for the quickfix commands
" :map <F9> :e E:/r/docs_b/pc/vim_functions.txt
:map <F8> :<C-r>y
" nmap <F10> :tabnext<CR>
nmap <F9> :cp<CR>
nmap <F10> :cn<CR>
nmap <F11> :bp<CR>
nmap <F12> :bn<CR>
" :set pastetoggle=<F11>

" noremap  <Down>      gj
" noremap  <Up>        gk



"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++插件
" ================================================================================-键
" 删除无内容的行，但保留换行
nmap -ab :%s/^\(\s\+\)$//g<CR>:echo <CR>

"去掉每行行首的空格 :%s/^\s+//gc
nnoremap -aa :s/^\s\+//g    "行首空格

"用于删除win32下难看的蓝色^M（其实是换行符\r） 
" nmap -am :%s/\r//g<cr> 
nmap -am :%s/\r//g<cr>  "用于删除^M

nmap -al :g/^/s//\=line(".")/    " 等价于:g/^/s/^/\=line(".")/
nmap -ar :g/^\(.*\)\n\1$/d  "要消除连续的重复行可以这样： 
nmap -as :g/{/ .+1,/}/-1 sort  "大括号内排序
nmap -ak vi{:sort             "先选左括号大括号内排序
nmap -av vgp `[v`]
nmap -az :%s/\(为.\)./\1\r/gc

" nmap -ax :g/^pattern/s/$/mytext "Add text to the end of a line that begins with a certain string.
"
" nmap -ax :s/\n\n\@!/ / "【例5】把以回车排版、以空行分段的文本变成以回车分段的文本
" nmap -ax :g/./,/^$/j "同上

" :%s/以下是/\r&/gc "\r表示回车，&表示被替换的部分
" :%s/为../&\r/gc
" :%s/\(为.\)./\1\r/gc

" 删除行尾空格，输入命令:%s/\s\+$//
" 删除行头空格，输入命令:%s/^\s\+//
" 删除空行，    输入命令:%g/^$/d
" 将多行空行替换为一行，输入命令:%s/\n\{3,\}/\r\r/e

" ================================================================================逗号键
" 方便进入命令模式
"nnoremap sj :
"vnoremap sj :

nnoremap ,q :q!

nnoremap ,f g$
nnoremap ,a g^
vnoremap ,f g$
vnoremap ,a g^

nnoremap ,i <esc>O==分界线==8<=<esc>50i~<esc>a//<c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr> <esc>j
" nnoremap ,n <esc>GOsubject: <c-r>=strftime("20%y-%m-%d")<cr>
nnoremap ,ws <esc>GOsubject: 
nnoremap ,wp <esc>ophase: <c-r>=strftime("20%y-%m-%d")<cr>
nnoremap ,wd <esc>ophase: <c-r>=strftime("20%y-%m-%d")<cr> done
nnoremap ,wo <esc>A<space>done <c-r>=strftime("20%y-%m-%d")<cr>
" 复制函数到y寄存器
nnoremap ,y <esc>"yyy


nmap ,v :e $VIM/sheyi.vim <cr>
nmap <leader>c :execute "cd" expand("%:h")<CR>
nmap ,r :%s///gc<left><left><left><left>
nmap <leader>s /\<\><left><left>
nmap ,z :vimgrep //gj **/*.txt<left><left><left><left><left><left><left><left><left><left><left> 
nmap ,g :g//t$<left><left><left>
nmap ,s :vimgrep // **/*.*<left><left><left><left><left><left><left><left>
nmap ,c :copen
" 查找的结果可以用":copen"命令查看 :cc  :cn  :cp
"http://www.nerdlinux.com/post/43/


nmap ,tr :Tab //r2<left><left><left>
nmap ,tl :Tab //l2<left><left><left>
nmap ,tc :Tab //c2<left><left><left>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>` viw<esc>a`<esc>hbi`<esc>lel
nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel
nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel

vnoremap <leader>" <esc>a"<esc>gvo<esc>i"<esc>gvo<esc>ll
vnoremap <leader>' <esc>a'<esc>gvo<esc>i'<esc>gvo<esc>ll
vnoremap <leader>( <esc>a)<esc>gvo<esc>i(<esc>gvo<esc>ll
vnoremap <leader>[ <esc>a]<esc>gvo<esc>i[<esc>gvo<esc>ll

:map <space> viw
" "."重复上一个命令，"u"取消上一个命令,"^r"反取消
" ^n, ^p用buf里的关键词补全。
" 任何时候移到一个单词上按#的话可以高亮这个文档里所有一样的单词

" nnoremap ` @a
"第二步，让 ` 在visual模式下可用
" vnoremap ` :normal @a

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++插件
"@@@@@@@@@@@@以下请不要修改@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"http://sjyf.org/2014/01/06/%E6%94%B9%E5%8F%98vim%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6/#more-629
"透明度
"au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 250)

" ================================================================================自定义补全词典
"set dictionary-=$VIM/vimfiles/dic/sheyi.txt dictionary+=$VIM/vimfiles/dic/sheyi.txt
set dictionary-=E:/r/docs_b/pc/vim_dic.txt dictionary+=E:/r/docs_b/pc/vim_dic.txt
set complete-=k complete+=k



"这2个是可以的，采用ahk范围更广  2014-07-19 14:15:45 2014-07-19
"imap ssj <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr>
"imap srq <c-r>=strftime("20%y-%m-%d")<cr>
" map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>


"打开文件时自动回到上次编辑位置。
if has("autocmd")
    "autocmd BufRead *.txt set tw=178 "由78改为178，免得todo自动换行
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                \   exe "normal g'\"" |
                \ endif
endif
" nmap wm :WMToggle<cr>




"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++插件
" ================================================================================markdown
" markdown
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_folding_disabled=1

" ================================================================================last change
" last change
" Automatically update change time
let g:update_time_time_stamp_leader = 'Last Change: '
let g:update_time_time_format = '%Y-%m-%d %H:%M:%S'
let g:update_time_begin_line = 0
let g:update_time_end_line = 10
let g:update_time_enable = 1

" ================================================================================括号彩色显示
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" ================================================================================tags设置
" 这是告诉vim在当前目录找不到tags文件时请到上层目录查找。
set tags=tags;/

" ================================================================================cscope
" cscope
cs a e:\w\cscope.out 
cs a e:\r\docs_b\cscope.out 
" 这样vim就会在当前目录自动寻找cscope.out文件并引用了。 上面第一个配置是设置cscope可以使用quickfix窗口。当我们要查找函数的调用时，只会跳转到第一个结果，这时候，输入:cw打开quickfix窗口即可在新的quickfix窗口中查看其余的结果，用回车或双击跳转。 使用Cscope时，通常用下面这个命令：
" :cs f c|d|e|f|g|i|s|t name
" s         查找本c符号(可以跳过注释)
" g         查找本定义
" d         查找本函数调用的函数
" c         查找调用本函数的函数
" t         查找本字符串
" e         查找本egrep模式
" f         查找本文件
" i         查找包含本文件的文件
"cscope定位函数就靠这个文件了  现在载入他  也可以在vim中用命令载入  运行:cs help 查看相关介绍 

"搜索函数定义的位置 
" map <C-g> :cs find g <C-R>=expand("<cword>")<CR> 
" nnoremap,p :cs find g <C-R>=expand("<cword>")<CR> 
" nnoremap,m :cs find t 
" Cscope mappings
" nnoremap <C-w>\ :scs find c <C-R>=expand("<cword>")<CR><CR>
" nnoremap <C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
" nnoremap <C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
" nnoremap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>
" nnoremap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
" nnoremap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
" nnoremap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
" nnoremap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
" nnoremap <C-\>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>


nmap -s :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap -g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap -c :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap -t :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap -e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap -f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
nmap -i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>
nmap -d :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>
" cs find c|d|e|f|g|i|s|t name
" 0 或 s 查找本 C 符号(可以跳过注释)
" 1 或 g 查找本定义
" 2 或 d 查找本函数调用的函数
" 3 或 c 查找调用本函数的函数
" 4 或 t 查找本字符串
" 6 或 e 查找本 egrep 模式
" 7 或 f 查找本文件
" 8 或 i 查找包含本文件的文件
" 简单来说，主要功能就是同时搜索ctags和cscope的标签，并且cscope优先扫描。
if has("cscope")
    set cscopequickfix=s-,c-,d-,i-,t-,e-
    set csto=0
    set cst
    set csverb
endif
" ================================================================================todo.txt
nmap <leader>to <Esc>GoTODO <C-R>=strftime("%Y-%m-%d")  <CR>

" ================================================================================NerdTree
nmap <leader>t :NERDTreeToggle<CR> 

" ================================================================================显示与关闭buffers
" Enable the list of buffers
" let g:airline#extensions#tabline#enabled = 1
" Show just the filename
" let g:airline#extensions#tabline#fnamemod = ':t'

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" 搜索光标下的单词
nmap <leader>lv :lv /<c-r>=expand("<cword>")<cr>/ %<cr>:lw<cr> 
"
" 在 quickfix 窗口显示上次查找
nnoremap <leader>? :execute 'vimgrep /'.@/.'/g %'<cr>:copen<cr>

" Input method
" set iminsert=0
" set imsearch=0
" se imd
" au InsertEnter * se noimd
" au InsertLeave * se imd
" au FocusGained * se imd

" ================================================================================latex 设置
" 估计大家都打开了换行时自动对齐的功能，但是有没有发现这样一个问题，在用 itemize 的时候，每一个 item 都会自动缩进两个，非常麻烦。如果你懒得搞的话，最后就变成了这个样子：
let g:tex_indent_items=0
autocmd BufNewFile,BufRead *.tex set spell  "拼写检查
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
command! Tex call Tex()
function! Tex()
    w
    !latex %
    silent !dvipdfmx  %:r
    silent ! start %:r.pdf
    
endfunction


" ================================================================================dot 画图设置
" 这两种都可以
" autocmd BufRead *.dot nmap <F5> :w<CR>:!dot -Tpng -o %<.png % && start %<.png<CR><CR>
nmap <f5> :!dot -Tpng -o %<.png % && start %<.png<CR>

" ================================================================================dot 画图设置
