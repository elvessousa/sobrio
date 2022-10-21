" Vim color file
" Author: Elves Sousa
" Website: https://elvessousa.com.br
" Colorscheme Name: sobrio_ghost

set background=dark
highlight clear

if exists('syntax_on')
  syntax reset
endif

set t_Co=256
let g:colors_name = 'sobrio'

" Color palette
" Interface
let s:accent = '#080808'
let s:bg = 'NONE'
let s:darker = '#121212'
let s:darkest = '#000000'
let s:fold = '#262626'
let s:hover = '#5f5f5f'
let s:lightest = '#ffffff'
let s:lineNumber = '#181818'
let s:menu = '#121212'
let s:splits = '#121212'
let s:visual = '#4e4e4e'

" Syntax highlight colors
let s:arg = '#d7af87'
let s:dir = '#d7af87'
let s:exec = '#2ec27e'
let s:file = '#cccccc'
let s:id = '#ffffff'
let s:id2 = '#7cdce7'
let s:int = '#d7d7ff'
let s:muted = '#3a3b3f'
let s:other = '#5f5f5f'
let s:prop = '#afafaf'
let s:str = '#87afd7'
let s:str2 = '#7cdce7'
let s:title = '#eeeeee'
let s:type = '#afafaf'
let s:var = '#cccccc'
let s:warn = '#fd6389'
let s:word = '#fd6389'

" Text format
let s:b = 'bold'
let s:i = 'italic'
let s:u = 'underline'
let s:uc = 'undercurl'
