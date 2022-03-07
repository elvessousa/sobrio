
" Vim Airline Theme: Sobrio Light
" Author: Elves Sousa
" Website: https://elvessousa.com.br
" Copyright (c) 2013-2021 Elves Sousa.
" MIT License

scriptencoding utf-8

let g:airline#themes#sobrio_light#palette = {}
      
" Status bar accents colors
let s:Accents = ['#aa0029', '', 160, '']
let s:Command = ['#ffffff', '#5fafaf', 17, 40]
let s:Inactive = ['#afafaf', '#eeeeee', 239, 234]
let s:Insert = ['#ffffff', '#aa0029', 17, 45]
let s:InsertPaste = [s:Insert[0], '#d78700', s:Insert[2], 172]
let s:Normal = ['#000000', '#d7af87', 17, 190]
let s:Replace = [s:Insert[0], '#aa0029', s:Insert[2] , 124]
let s:Visual = ['#ffffff', '#87afd7', 232, 214]

" Modified file status test
let s:ModifiedI = ['#aa0029', '#ffffff', 255, 53] 
let s:ModifiedIn = ['#cccccc' , '' , 97 , '']
let s:ModifiedN = ['#d7af87', '#ffffff', 255, 53] 
let s:ModifiedV = ['#87afd7', '#ffffff', 255, 53] 

" Other status bar colors
let s:FileInactive = ['#cccccc', '#ffffff', 85, 234]
let s:FileInfo = ['#afafaf', '#ffffff', 85, 234]
let s:InfoArea = ['#afafaf', '#eeeeee', 255, 238]
let s:InfoInactive = ['#cccccc', '#ffffff', 255, 238]
let s:Warning = ['#cccccc', '#ffffff', 85, 234]

" ------------------------------------------
" Normal
" ------------------------------------------
let g:airline#themes#sobrio_light#palette.normal = 
      \ airline#themes#generate_color_map(s:Normal, s:InfoArea, s:FileInfo)

" Modified 
let g:airline#themes#sobrio_light#palette.normal_modified = {
      \ 'airline_c': s:ModifiedN 
      \ }

" ------------------------------------------
" Insert mode
" ------------------------------------------
let g:airline#themes#sobrio_light#palette.insert = 
      \ airline#themes#generate_color_map(s:Insert, s:InfoArea, s:FileInfo)

let g:airline#themes#sobrio_light#palette.insert_modified = {
      \ 'airline_c': s:ModifiedI 
      \ }
let g:airline#themes#sobrio_light#palette.insert_paste = {
      \ 'airline_a': s:InsertPaste
      \ }

let g:airline#themes#sobrio_light#palette.terminal = 
      \ airline#themes#generate_color_map(s:Insert, s:InfoArea, s:FileInfo)

let g:airline#themes#sobrio_light#palette.replace = copy(g:airline#themes#sobrio_light#palette.insert)
let g:airline#themes#sobrio_light#palette.replace.airline_a = s:Replace 
let g:airline#themes#sobrio_light#palette.replace_modified = g:airline#themes#sobrio_light#palette.insert_modified

" ------------------------------------------
" Visual mode
" ------------------------------------------
let g:airline#themes#sobrio_light#palette.visual = 
      \ airline#themes#generate_color_map(s:Visual, s:InfoArea, s:FileInfo)

let g:airline#themes#sobrio_light#palette.visual_modified = {
      \ 'airline_c': s:ModifiedV
      \ }

" ------------------------------------------
" Inactive mode
" ------------------------------------------
let g:airline#themes#sobrio_light#palette.inactive = 
      \ airline#themes#generate_color_map(s:Inactive, s:InfoInactive, s:FileInactive)

let g:airline#themes#sobrio_light#palette.inactive_modified = {'airline_c': s:ModifiedIn }

" ------------------------------------------
" Command mode
" ------------------------------------------
let g:airline#themes#sobrio_light#palette.commandline = 
      \ airline#themes#generate_color_map(s:Command, s:InfoArea, s:FileInfo)

" Accents
let g:airline#themes#sobrio_light#palette.accents = {
      \ 'red': s:Accents 
      \ }

" ------------------------------------------
" CTRL+P
" ------------------------------------------
if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#sobrio_light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ ['#666666', '#cccccc', 189, 55, ''],
        \ ['#ffffff', '#2ec27e', 231, 98, ''],
        \ ['#2ec27e', '#ffffff', 55, 231, 'bold'])

endif

" ------------------------------------------
" Warnings
" ------------------------------------------
let g:airline#themes#sobrio_light#palette.normal.airline_warning = s:Warning 
let g:airline#themes#sobrio_light#palette.normal_modified.airline_warning = s:Warning 
let g:airline#themes#sobrio_light#palette.insert.airline_warning = s:Warning
let g:airline#themes#sobrio_light#palette.insert_modified.airline_warning = s:Warning
let g:airline#themes#sobrio_light#palette.visual.airline_warning = s:Warning
let g:airline#themes#sobrio_light#palette.commandline.airline_warning = s:Warning
let g:airline#themes#sobrio_light#palette.replace.airline_warning = s:Warning

