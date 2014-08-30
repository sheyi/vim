" txtbrowser.vim:	Utilities to browser plain text file.
" Release:		1.3.5
" Maintainer:		ypguo<guoyoooping@163.com>
" Last modified:	2011.08.07
" License:		GPL

" Line continuation used here
let s:cpo_save = &cpo
set cpo&vim

" ****************** Options *******************************************
"How many title level to support, default is 3.
if !exists('TxtBrowser_Title_Level')
	let TxtBrowser_Title_Level = 3
endif

"When this file reload, only load TBrowser_Ctags_Cmd once.

if !exists('Tlist_Ctags_Cmd')
	echomsg 'TxtBrowser: Taglist(http://www.vim.org/scripts/script.php?script_id=273) ' .
				\ 'not found. Plugin is not loaded.'
	" Skip loading the plugin
	let loaded_taglist = 'no'
	let &cpo = s:cpo_save
	finish
endif

if !exists('TBrowser_Ctags_Cmd')
	let TBrowser_Ctags_Cmd = Tlist_Ctags_Cmd
endif

"Txt tag definition start.
let s:TBrowser_Config = ' --langdef=txt --langmap=txt:.txt '

"Title tag definition
let s:TBrowser_Config .= '--regex-txt="/^[ \t　]*(info[ \t　]*.*)$/\1/c,content/" '
let s:TBrowser_Config .= '--regex-txt="/^[ \t　]*(subject[ \t　]*.*)$/\1/c,content/" '



"Pass parameters to taglist
let tlist_txt_settings = 'txt;c:content;f:figures;t:tables'
let Tlist_Ctags_Cmd = TBrowser_Ctags_Cmd . s:TBrowser_Config

" restore 'cpo'
let &cpo = s:cpo_save
unlet s:cpo_save

