" Last Change: 2014-08-26 15:45:13 巴基斯坦标准时间

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++插件
if filereadable("C:/notepad.txt")
    let g:notepad = 1
else
    let g:notepad = 0
endif


"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++插件
set noerrorbells            " 关闭错误信息响铃
set novisualbell            " 关闭使用可视响铃代替呼叫
behave mswin

if g:notepad
    " set guifont=YaHei_Consolas_Hybrid:h11  
    set guifont=MONACO:h11:cANSI
    set guifontwide=YouYuan:h12
else
    " set guifont=YaHei_Consolas_Hybrid:h13  
    " set gfw=YouYuan:h14
    set guifont=MONACO:h11:cANSI
    set guifontwide=YouYuan:h14
endif

"set guifont=Courier_New:h10:cANSI	"设定字体
colorscheme solarized
" colo morning		    " 设定配色方案
" colorscheme molokai
" colorscheme tango2
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

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++插件
map Y y$
nnoremap S s$



map <leader>sa ggVG"
map <C-c> "+y 
map <C-v> "+p 

vnoremap <F3> "+y
map <F4>		<Esc><Esc>"+gP


imap jk <Esc><Right>
" :map <F12> :!tex2ppt.bat
"进行NerdTree的设置

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++插件
"todo 搜索
:map <F5> :set ft=todo<CR>
:map <c-F5> :Filter 

:map <F6> :SearchNotes //<left>
:map <c-F6> :Note 

:map <F7> :Fsgrep //<left>

" Key mappings for the quickfix commands
nmap <F11> :cn<CR>
nmap <F12> :bp<CR>
" :set pastetoggle=<F11>

noremap  <Down>      gj
noremap  <Up>        gk

"用于删除win32下难看的蓝色^M（其实是换行符\r） 
nmap dm :%s/\r//g<cr> 


"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++插件
" 方便进入命令模式
"nnoremap sj :
"vnoremap sj :

nnoremap ,q :q!
nnoremap ,w :wq

nnoremap ,j gj
nnoremap ,h gh
nnoremap ,k gk

nnoremap ,f g$
nnoremap ,a g^
vnoremap ,f g$
vnoremap ,a g^

"去掉每行行首的空格 :%s/^\s+//gc
" nnoremap ,x :%s/^ *//gc	
nnoremap ,x :s/^\s\+//g

" 删除行尾空格，输入命令:%s/\s\+$//
" 删除行头空格，输入命令:%s/^\s\+//
" 删除空行，    输入命令:%g/^$/d
" 将多行空行替换为一行，输入命令:%s/\n\{3,\}/\r\r/e

nmap ,v :e $VIM/sheyi.vim
nmap ,c :execute "cd" expand("%:h")<CR>
nmap ,t :%s///gc<left><left><left><left>
nmap ,s /\<\><left><left>
nmap ,g :g//t$<left><left><left>
nmap ,z :vimgrep // **/*.*<left><left><left><left><left><left><left><left>
" 查找的结果可以用":copen"命令查看 :cc  :cn  :cp
"http://www.nerdlinux.com/post/43/

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

nnoremap ` @a
"第二步，让 ` 在visual模式下可用
vnoremap ` :normal @a

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++插件
"@@@@@@@@@@@@以下请不要修改@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"http://sjyf.org/2014/01/06/%E6%94%B9%E5%8F%98vim%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6/#more-629
"透明度
"au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 250)

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
" ================================================================================
" markdown
let g:vim_markdown_no_default_key_mappings=1


" ================================================================================
" last change
" Automatically update change time
let g:update_time_time_stamp_leader = 'Last Change: '
let g:update_time_time_format = '%Y-%m-%d %H:%M:%S %Z'
let g:update_time_begin_line = 0
let g:update_time_end_line = 10
let g:update_time_enable = 1

" ================================================================================
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" ================================================================================
" 这是告诉vim在当前目录找不到tags文件时请到上层目录查找。
set tags=tags;/

" ================================================================================
"cscope定位函数就靠这个文件了  现在载入他  也可以在vim中用命令载入  运行:cs help 查看相关介绍 
cs a e:\w\cscope.out 
cs a e:\r\docs_b\cscope.out 

"搜索函数定义的位置 
" map <C-g> :cs find g <C-R>=expand("<cword>")<CR> 
nnoremap,p :cs find g <C-R>=expand("<cword>")<CR> 
nnoremap,m :cs find t 

" ================================================================================
nmap <leader>to <Esc>GoTODO <C-R>=strftime("%Y-%m-%d")  <CR>

nmap <leader>t :NERDTreeToggle<CR> 