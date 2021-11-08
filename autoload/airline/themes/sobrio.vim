" Vim Airline Theme: Sobrio
" Author: Elves Sousa
" Website: https://elvessousa.com.br
" Copyright (c) 2013-2021 Elves Sousa.
" MIT License

scriptencoding utf-8

let g:airline#themes#sobrio#palette = {}
      
" Status bar accents colors
let s:Accents = ['#fd6989', '', 160, '']
let s:Command = ['#000000', '#7cdce7', 17, 40]
let s:Inactive = ['#4e4e4e', '#1c1c1c', 239, 234, '']
let s:Insert = ['#000000', '#fd6389', 17, 45]
let s:InsertPaste = [s:Insert[0], '#d78700', s:Insert[2], 172, '']
let s:Normal = ['#000000', '#d7af87', 17, 190]
let s:Replace = [s:Insert[0], '#fd6388', s:Insert[2] , 124, '']
let s:Visual = ['#000000', '#87afd7', 232, 214]

" Modified file status test
let s:ModifiedI = ['#fd6389', '#202020', 255, 53, ''] 
let s:ModifiedIn = ['#cccccc' , '' , 97 , '' , '']
let s:ModifiedN = ['#d7af87', '#202020', 255, 53, ''] 
let s:ModifiedV = ['#87afd7', '#202020', 255, 53, ''] 

" Other status bar colors
let s:FileInactive = ['#3a3b3f', '#202020', 85, 234]
let s:FileInfo = ['#afafaf', '#202020', 85, 234]
let s:InfoArea = ['#ffffff', '#333333', 255, 238]
let s:InfoInactive = ['#5f5f5f', '#333333', 255, 238]
let s:Warning = ['#cccccc', '#202020', 85, 234]

" ------------------------------------------
" Normal
" ------------------------------------------
let g:airline#themes#sobrio#palette.normal = 
      \ airline#themes#generate_color_map(s:Normal, s:InfoArea, s:FileInfo)

" Modified 
let g:airline#themes#sobrio#palette.normal_modified = {
      \ 'airline_c': s:ModifiedN 
      \ }

" ------------------------------------------
" Insert mode
" ------------------------------------------
let g:airline#themes#sobrio#palette.insert = 
      \ airline#themes#generate_color_map(s:Insert, s:InfoArea, s:FileInfo)

let g:airline#themes#sobrio#palette.insert_modified = {
      \ 'airline_c': s:ModifiedI 
      \ }
let g:airline#themes#sobrio#palette.insert_paste = {
      \ 'airline_a': s:InsertPaste
      \ }

let g:airline#themes#sobrio#palette.terminal = 
      \ airline#themes#generate_color_map(s:Insert, s:InfoArea, s:FileInfo)

let g:airline#themes#sobrio#palette.replace = copy(g:airline#themes#sobrio#palette.insert)
let g:airline#themes#sobrio#palette.replace.airline_a = s:Replace 
let g:airline#themes#sobrio#palette.replace_modified = g:airline#themes#sobrio#palette.insert_modified

" ------------------------------------------
" Visual mode
" ------------------------------------------
let g:airline#themes#sobrio#palette.visual = 
      \ airline#themes#generate_color_map(s:Visual, s:InfoArea, s:FileInfo)

let g:airline#themes#sobrio#palette.visual_modified = {
      \ 'airline_c': s:ModifiedV
      \ }

" ------------------------------------------
" Inactive mode
" ------------------------------------------
let g:airline#themes#sobrio#palette.inactive = 
      \ airline#themes#generate_color_map(s:Inactive, s:InfoInactive, s:FileInactive)

let g:airline#themes#sobrio#palette.inactive_modified = {'airline_c': s:ModifiedIn }

" ------------------------------------------
" Command mode
" ------------------------------------------
let g:airline#themes#sobrio#palette.commandline = 
      \ airline#themes#generate_color_map(s:Command, s:InfoArea, s:FileInfo)

" Accents
let g:airline#themes#sobrio#palette.accents = {
      \ 'red': s:Accents 
      \ }

" ------------------------------------------
" CTRL+P
" ------------------------------------------
if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#sobrio#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ ['#eeeeee', '#181818', 189, 55, ''],
        \ ['#ffffff', '#2ec27e', 231, 98, ''],
        \ ['#2ec27e', '#ffffff', 55, 231, 'bold'])
endif

" ------------------------------------------
" Warnings
" ------------------------------------------
let g:airline#themes#sobrio#palette.normal.airline_warning = s:Warning 
let g:airline#themes#sobrio#palette.normal_modified.airline_warning = s:Warning 
let g:airline#themes#sobrio#palette.insert.airline_warning = s:Warning
let g:airline#themes#sobrio#palette.insert_modified.airline_warning = s:Warning
let g:airline#themes#sobrio#palette.visual.airline_warning = s:Warning
let g:airline#themes#sobrio#palette.commandline.airline_warning = s:Warning
let g:airline#themes#sobrio#palette.replace.airline_warning = s:Warning

