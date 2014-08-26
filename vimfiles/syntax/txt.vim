"http://yuanjingping.wordpress.com/2010/03/18/vim-%E8%87%AA%E5%AE%9A%E4%B9%89%E8%AF%AD%E6%B3%95%E9%AB%98%E4%BA%AE%EF%BC%88%E8%BD%AC%EF%BC%89/
if exists("b:current_syntax")
finish
endif

"================================================================================
syntax keyword SheyiKey shey hxl info 佘义
syn match       SheyiKey /黄总/
"syn match       todoDate        /\w\?{[^}]\+}[+=-]\?/
syn match       todoDate        /\d\{4\}-\d\{2\}-\d\{2\}/
syn match       todoProject     /+\S\+/
syn match       todoContext     /\s@\S\+/
hi link SheyiKey txtUrl
hi link todoProject  txtReference
hi link todoContext  txtTitle
hi link todoDate  txtApostrophe

" ================================================================================
" hi link txtUrl      Underlined"ModeMsg"Tabline"PmenuSbar
" hi link txtTitle      Title"ModeMsg"Tabline"PmenuSbar
" hi link txtList         SignColumn"Pmenu"DiffText"Statement
" hi link txtComment      Special "Comment
" hi link txtReference    DiffAdd "Comment
" hi link txtQuotes       MoreMsg"String
" hi link txtApostrophe    MoreMsg"Special
" hi link txtParentesis   Special "Comment
" hi link txtBrackets  Special
" hi link txtError  ErrorMsg
" hi link txtTodo  Todo
" hi link txtEmailMsg     Structure
