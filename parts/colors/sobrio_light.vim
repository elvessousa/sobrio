" Vim color file
" Author: Elves Sousa
" Website: https://elvessousa.com.br
" Colorscheme Name: sobrio_light

set background=dark
highlight clear

if exists('syntax_on')
  syntax reset
endif

set t_Co=256
let g:colors_name = 'sobrio_light'

" Color palette
" Interface
let s:accent = '#afafaf'
let s:bg = '#ffffff'
let s:darker = '#f0f0f0'
let s:darkest = '#ffffff'
let s:fold = '#eeeeee'
let s:hover = '#eeeeee'
let s:lightest = '#202020'
let s:lineNumber = '#dddddd'
let s:menu = '#dddddd'
let s:splits = '#eeeeee'
let s:visual = '#dddddd'

" Syntax highlight colors
let s:arg = '#af875f'
let s:dir = '#af875f'
let s:exec = '#2ec27e'
let s:file = '#4e4e4e'
let s:id = '#303030'
let s:id2 = '#5fafaf'
let s:int = '#9787af'
let s:muted = '#afafaf'
let s:other = '#8f8f8f'
let s:prop = '#3a3b3f'
let s:str = '#6787af'
let s:str2 = '#5fafaf'
let s:title = '#121212'
let s:type = '#5f5f5f'
let s:var = '#4e4e4e'
let s:warn = '#dd4c4f'
let s:word = '#dd4c4f'

" Text format
let s:b = 'bold'
let s:i = 'italic'
let s:u = 'underline'
let s:uc = 'undercurl'
