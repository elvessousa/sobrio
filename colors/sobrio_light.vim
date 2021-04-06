" Vim color file
" Author: Elves Sousa
" Website: elvessousa.com.br
" Colorscheme Name: elf_sobrio_light
" Inspired by https://www.monokai.pro/

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
let s:darkest = '#202020'
let s:fold = '#eeeeee'
let s:hover = '#eeeeee'
let s:lightest = '#ffffff'
let s:lineNumber = '#dddddd'
let s:menu = '#dddddd'
let s:splits = '#eeeeee'
let s:visual = '#dddddd'

" Syntax highlight colors
let s:arg = '#bb3300'
let s:dir = '#bb3300'
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
let s:warn = '#aa0029'
let s:word = '#aa0029'

" Text format
let s:b = 'bold'
let s:i = 'italic'
let s:u = 'underline'
let s:uc = 'undercurl'

" Set highlight colors function
function s:HL(scope, ...)
  let l:cfont = a:1
  let l:cback = a:2
  let l:style = a:3
  let l:back = a:4
  let l:font = a:5

  let l:colorizeCommand = [
        \ 'highlight', a:scope,
        \ 'guibg=' . l:back, 'ctermbg=' . l:cback,
        \ 'guifg=' . l:font, 'ctermfg=' . l:cfont,
        \ 'gui=' . l:style, 'cterm=' . l:style,
        \ 'guisp=NONE'
        \]
  execute join(l:colorizeCommand, ' ')
endfunction

" Apply colors
call s:HL('Boolean', 141, 'NONE', 'NONE', 'NONE', s:int)
call s:HL('Character', 141, 'NONE', 'NONE', 'NONE', s:int)
call s:HL('ColorColumn' , 'NONE', 237, 'NONE', s:accent, 'NONE')
call s:HL('Comment', 242, 'NONE', s:i, 'NONE', s:muted)
call s:HL('Conditional', 204, 'NONE', s:i, 'NONE', s:word)
call s:HL('Constant', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('Cursor' , 231, 231, 'NONE', s:lightest, s:lightest)
call s:HL('CursorColumn' , 'NONE', 237, 'NONE', s:accent, 'NONE')
call s:HL('CursorLine' , 'NONE', 237, 'NONE', s:darker, 'NONE')
call s:HL('CursorLineNr' , 'NONE', 237, 'NONE', 'NONE', s:prop)
call s:HL('Define', 204, 'NONE', 'NONE', 'NONE', s:word)
call s:HL('Directory', 141, 'NONE', 'NONE', 'NONE', s:dir)
call s:HL('EndOfBuffer', 231, 235, 'NONE', s:bg, s:bg)
call s:HL('ErrorMsg', 231, 204, 'NONE', s:warn, s:lightest)
call s:HL('Float', 141, 'NONE', 'NONE', 'NONE', s:int)
call s:HL('Folded', 242, 235, 'NONE', s:fold, s:muted)
call s:HL('Function', 81, 'NONE', s:b, 'NONE', s:id)
call s:HL('Identifier', 81, 'NONE', s:i, 'NONE', s:id)
call s:HL('IncSearch', 16, 11, 'NONE', s:str, s:darkest)
call s:HL('Keyword', 204, 'NONE', s:i, 'NONE', s:word)
call s:HL('Label', 204, 'NONE', 'NONE', 'NONE', s:word)
call s:HL('LineNr' , 102, 235, 'NONE', s:bg, s:lineNumber)
call s:HL('MatchParen' , 11, 'NONE', s:u, 'NONE', s:str)
call s:HL('MsgArea', 231, 235, 'NONE', s:bg, s:other)
call s:HL('NonText', 59, 235, 'NONE', s:fold, s:other)
call s:HL('Normal', 231, 235, 'NONE', s:bg, s:darkest)
call s:HL('Number', 141, 'NONE', 'NONE', 'NONE', s:int)
call s:HL('Operator', 204, 'NONE', 'NONE', 'NONE', s:word)
call s:HL('Pmenu', 'NONE', 236, 'NONE', s:menu, 'NONE')
call s:HL('PmenuSel', 'NONE', 59, 'NONE', s:hover, 'NONE')
call s:HL('PreProc', 155, 'NONE', 'NONE', 'NONE', s:arg)
call s:HL('Search', 16, 11, 'NONE', s:str, s:darkest)
call s:HL('SignColumn', 'NONE', 237, 'NONE', s:bg, 'NONE')
call s:HL('Special', 81, 'NONE', 'NONE', 'NONE', s:other)
call s:HL('SpecialKey', 59, 237, 'NONE', s:accent, s:other)
call s:HL('SpellBad', 59, 237, s:uc, 'NONE', s:warn)
call s:HL('SpellCap', 59, 237, s:uc, 'NONE', s:str2)
call s:HL('Statement', 204, 'NONE', s:i, 'NONE', s:word)
call s:HL('StatusLine' , 231, 241, s:b, s:splits, s:lightest)
call s:HL('StatusLineNC' , 231, 241, 'NONE', s:splits, s:lightest)
call s:HL('StorageClass', 81, 'NONE', 'NONE', 'NONE', s:word)
call s:HL('String', 221, 'NONE', 'NONE', 'NONE', s:str)
call s:HL('Tag', 204, 'NONE', 'NONE', 'NONE', s:word)
call s:HL('Title', 255, 'NONE', s:b, 'NONE', s:other)
call s:HL('Todo', 11, 'NONE', 'NONE', s:other, 'NONE')
call s:HL('Type', 81, 'NONE', s:i, 'NONE', s:type)
call s:HL('Underlined', 'NONE', 'NONE', s:u, 'NONE', 'NONE')
call s:HL('VertSplit' , 241, 241, 'NONE', s:bg, s:splits)
call s:HL('Visual' , 'NONE', 239, 'NONE', s:visual, 'NONE')
call s:HL('WarningMsg', 231, 204, 'NONE', s:warn, s:lightest)
call s:HL('TabLineFill', 231, 204, 'NONE', s:menu, s:other)
call s:HL('TabLine', 231, 204, 'NONE', s:menu, s:other)
call s:HL('TabLineSel', 231, 204, s:b, s:bg, s:arg)

"  Netrw File Browser
call s:HL('netrwClassify', 231, 204, 'NONE', 'NONE', s:lineNumber)
call s:HL('netrwExe', 242, 'NONE', 'NONE', 'NONE', s:word)
call s:HL('netrwLink', 231, 204, 'NONE', 'NONE', s:muted)
call s:HL('netrwPlain', 242, 'NONE', 'NONE', 'NONE', s:file)
call s:HL('netrwSlash', 231, 204, 'NONE', s:bg, s:bg)
call s:HL('netrwSymLink', 231, 204, s:i, 'NONE', s:id2)
call s:HL('netrwTreeBar', 231, 204, 'NONE', 'NONE', s:bg)

" Diffs
call s:HL('DiffAdd', 231, 155, s:b, 'NONE', s:arg)
call s:HL('DiffChange', 'NONE', 'NONE', 'NONE', 'NONE', s:str2)
call s:HL('DiffDelete', 204, 'NONE', 'NONE', 'NONE', s:warn)
call s:HL('DiffText', 231, 24, s:b, s:id, s:lightest)

" HTML 
call s:HL('htmlArg', 'NONE', 'NONE', s:i, 'NONE', s:arg)
call s:HL('htmlEndTag', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('htmlSpecialChar', 141, 'NONE', 'NONE', 'NONE', s:int)
call s:HL('htmlTag', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('htmlTagName', 204, 'NONE', s:b, 'NONE', s:word)

" XML
call s:HL('svgAttr', 'NONE', 'NONE', s:i, 'NONE', s:arg)
call s:HL('svgElement', 'NONE', 'NONE', s:b, 'NONE', s:word)
call s:HL('xmlAttrib', 'NONE', 'NONE', s:i, 'NONE', s:arg)
call s:HL('xmlDecl', 'NONE', 'NONE', 'NONE', 'NONE', s:id2)
call s:HL('xmlEqual', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('xmlNamespace', 'NONE', 'NONE', s:i, 'NONE', s:word)
call s:HL('xmlProcessingDelim', 'NONE', 'NONE', 'NONE', 'NONE', s:prop)
call s:HL('xmlTag', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('xmlTagName', 'NONE', 'NONE', s:b, 'NONE', s:word)

" Markdown
call s:HL('htmlBold', 'NONE', 'NONE', s:b, 'NONE', s:type)
call s:HL('htmlH1', 'NONE', 'NONE', s:b, 'NONE', s:word)
call s:HL('htmlH2', 'NONE', 'NONE', s:b, 'NONE', s:word)
call s:HL('htmlH3', 'NONE', 'NONE', s:b, 'NONE', s:word)
call s:HL('htmlH4', 'NONE', 'NONE', s:b, 'NONE', s:word)
call s:HL('htmlH5', 'NONE', 'NONE', s:b, 'NONE', s:word)
call s:HL('htmlH6', 'NONE', 'NONE', s:b, 'NONE', s:word)
call s:HL('htmlItalic', 'NONE', 'NONE', s:i, 'NONE', s:type)
call s:HL('mkdBold', 'NONE', 'NONE', s:b, 'NONE', s:muted)
call s:HL('mkdHeading', 'NONE', 'NONE', 'NONE', 'NONE', s:type)
call s:HL('mkdItalic', 'NONE', 'NONE', 'NONE', 'NONE', s:muted)
call s:HL('mkdLink', 'NONE', 'NONE', s:u, 'NONE', s:str2)
call s:HL('mkdRule', 'NONE', 'NONE', 'NONE', 'NONE', s:muted)

" JavaScript
call s:HL('jsArrowFunction', 81, 'NONE', 'NONE', 'NONE', s:word)
call s:HL('jsExport', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('jsFunction', 81, 'NONE', s:i, 'NONE', s:word)
call s:HL('jsImport', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('jsStorageClass', 'NONE', 'NONE', s:i, 'NONE', s:id2)
call s:HL('jsTemplateExpression', 'NONE', 'NONE', 'NONE', 'NONE', s:var)
call s:HL('jsVariableDef', 'NONE', 'NONE', 'NONE', 'NONE', s:var)

" JSX
call s:HL('jsxBraces', 'NONE', 'NONE', 'NONE', 'NONE', s:id)
call s:HL('jsParens', 'NONE', 'NONE', 'NONE', 'NONE', s:other)
call s:HL('jsFuncParens', 'NONE', 'NONE', 'NONE', 'NONE', s:other)
call s:HL('jsxClosePunct', 'NONE', 'NONE', 'NONE', 'NONE', s:arg)
call s:HL('jsxCloseString', 'NONE', 'NONE', 'NONE', 'NONE', s:arg)
call s:HL('jsxComponentName', 'NONE', 'NONE', s:b, 'NONE', s:id2)
call s:HL('jsxExpressionBlock', 'NONE', 'NONE', 'NONE', 'NONE', s:id)
call s:HL('jsxOpenPunct', 'NONE', 'NONE', 'NONE', 'NONE', s:arg)
call s:HL('jsxTag', 'NONE', 'NONE', 'NONE', 'NONE', s:id)
call s:HL('jsxTagName', 'NONE', 'NONE', s:b, 'NONE', s:arg)

" TypeScript
call s:HL('typescriptAssign', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('typescriptBinaryOp', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('typescriptBlock', 'NONE', 'NONE', 'NONE', 'NONE', s:title)
call s:HL('typescriptBraces', 'NONE', 'NONE', 'NONE', 'NONE', s:other)
call s:HL('typescriptCastKeyword', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('typescriptEndColons', 'NONE', 'NONE', 'NONE', 'NONE', s:other)
call s:HL('typescriptExceptions', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('typescriptExport', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('typescriptFuncCallArg', 'NONE', 'NONE', 'NONE', 'NONE', s:type)
call s:HL('typescriptIdentifierName', 'NONE', 'NONE', 'NONE', 'NONE', s:id)
call s:HL('typescriptImport', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('typescriptObjectLabel', 'NONE', 'NONE', 'NONE', 'NONE', s:var)
call s:HL('typescriptParens', 'NONE', 'NONE', 'NONE', 'NONE', s:other)
call s:HL('typescriptTypeReference', 'NONE', 'NONE', s:i, 'NONE', s:type)
call s:HL('typescriptVariable', 'NONE', 'NONE', s:i, 'NONE', s:id2)
call s:HL('typescriptVariableDeclaration', 'NONE', 'NONE', 'NONE', 'NONE', s:var)

" JSON
call s:HL('jsonKeyword', 155, 'NONE', 'NONE', 'NONE', s:arg)
call s:HL('jsonQuote', 155, 'NONE', 'NONE', 'NONE', s:other)
call s:HL('jsonString', 155, 'NONE', 'NONE', 'NONE', 'NONE')

" GraphQL
call s:HL('graphqlName', 'NONE', 'NONE', 'NONE', 'NONE', s:arg)

" YAML
call s:HL('yamlAlias', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('yamlAnchor', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('yamlBlockMappingKey', 204, 'NONE', s:i, 'NONE', s:arg)
call s:HL('yamlDocumentHeader', 11, 'NONE', 'NONE', 'NONE', s:str)
call s:HL('yamlKey', 204, 'NONE', 'NONE', 'NONE', s:word)

" Cascading Style Sheets
call s:HL('cssAtKeyword', 155, 'NONE', s:i, 'NONE', s:word)
call s:HL('cssAtRule', 155, 'NONE', s:i, 'NONE', s:word)
call s:HL('cssBraces', 'NONE', 'NONE', 'NONE', 'NONE', s:other)
call s:HL('cssClassName', 155, 'NONE', s:i, 'NONE', s:arg)
call s:HL('cssClassNameDot', 155, 'NONE', 'NONE', 'NONE', s:arg)
call s:HL('cssColor', 141, 'NONE', 'NONE', 'NONE', s:int)
call s:HL('cssCommonAttr', 81, 'NONE', 'NONE', 'NONE', s:arg)
call s:HL('cssCustomProp', 155, 'NONE', 'NONE', 'NONE', s:var)
call s:HL('cssDefinition', 155, 'NONE', s:i, 'NONE', s:word)
call s:HL('cssFunctionName', 81, 'NONE', 'NONE', 'NONE', s:id2)
call s:HL('cssIdentifier', 81, 'NONE', s:i, 'NONE', s:id2)
call s:HL('cssMediaProp', 81, 'NONE', 'NONE', 'NONE', s:prop)
call s:HL('cssProp', 81, 'NONE', 'NONE', 'NONE', s:prop)
call s:HL('cssPseudoClassId', 155, 'NONE', 'NONE', 'NONE', s:type)
call s:HL('cssTagName', 155, 'NONE', 'NONE', 'NONE', s:word)
call s:HL('cssURL', 208, 'NONE', 'NONE', 'NONE', s:str2)
call s:HL('cssUnitDecorators', 155, 'NONE', 'NONE', 'NONE', s:word)
call s:HL('cssValueLength', 141, 'NONE', 'NONE', 'NONE', s:int)

" Sass (SCSS)
call s:HL('scssDefinition', 81, 'NONE', s:i, 'NONE', s:word)
call s:HL('scssImport', 155, 'NONE', s:i, 'NONE', s:word)
call s:HL('scssSelectorName', 155, 'NONE', s:i, 'NONE', s:arg)
call s:HL('scssVariable', 155, 'NONE', s:i, 'NONE', s:id)

" Indented Sass
call s:HL('sassClass', 155, 'NONE', s:i, 'NONE', s:arg)
call s:HL('sassId', 81, 'NONE', s:i, 'NONE', s:id2)
call s:HL('sassIdChar', 81, 'NONE', s:i, 'NONE', s:id2)
call s:HL('sassMedia', 155, 'NONE', s:i, 'NONE', s:word)

" PHP
call s:HL('phpClass', 81, 'NONE', s:b, 'NONE', s:title)
call s:HL('phpClassImplements', 81, 'NONE', 'NONE', 'NONE', s:arg)
call s:HL('phpFunction', 81, 'NONE', s:b, 'NONE', s:id)
call s:HL('phpFunctions', 81, 'NONE', s:b, 'NONE', s:arg)
call s:HL('phpInclude', 81, 'NONE', s:i, 'NONE', s:word)
call s:HL('phpMethodsVar', 81, 'NONE', 'NONE', 'NONE', s:prop)
call s:HL('phpStaticClasses', 81, 'NONE', 'NONE', 'NONE', s:arg)

" Python
call s:HL('pythonBuiltinObj', 155, 'NONE', s:i, 'NONE', s:arg)
call s:HL('pythonBuiltinType', 155, 'NONE', s:i, 'NONE', s:arg)
call s:HL('pythonBuiltinFunc', 155, 'NONE', s:b, 'NONE', s:id2)
call s:HL('pythonClassVar', 155, 'NONE', s:i, 'NONE', s:type)
call s:HL('pythonImport', 'NONE', 'NONE', 'NONE', 'NONE', s:word)

"Django
call s:HL('djangoTagBlock', 155, 'NONE', 'NONE', 'NONE', s:type)
call s:HL('djangoVarBlock', 155, 'NONE', 'NONE', 'NONE', s:type)

" C++
call s:HL('cBlock', 81, 'NONE', s:i, 'NONE', s:type)
call s:HL('cInclude', 81, 'NONE', 'NONE', 'NONE', s:word)
call s:HL('cParen', 81, 'NONE', 'NONE', 'NONE', s:other)
call s:HL('cStructure', 81, 'NONE', s:i, 'NONE', s:word)
call s:HL('cType', 81, 'NONE', s:i, 'NONE', s:id2)
call s:HL('cppSTLvariable', 'NONE', 'NONE', 'NONE', 'NONE', s:arg)
call s:HL('cppStructure', 81, 'NONE', s:i, 'NONE', s:id2)

" Rust
call s:HL('rustIdentifier', 81, 'NONE', s:b, 'NONE', s:id)
call s:HL('rustType', 81, 'NONE', s:i, 'NONE', s:type)

" Elixir
call s:HL('elixirAtom', 155, 'NONE', 'NONE', 'NONE', s:arg)
call s:HL('elixirPseudoVariable', 155, 'NONE', s:i, 'NONE', s:var)
call s:HL('elixirStringDelimiter', 221, 'NONE', 'NONE', 'NONE', s:str)
call s:HL('elixirTupleDelimiter', 'NONE', 'NONE', 'NONE', 'NONE', s:other)
call s:HL('elixirVariable', 155, 'NONE', s:i, 'NONE', s:var)

" Shell Script
call s:HL('bashStatement', 81, 'NONE', s:i, 'NONE', s:id2)
call s:HL('shStatement', 81, 'NONE', s:i, 'NONE', s:id2)

" Vim Script
call s:HL('vimIsCommand', 81, 'NONE', s:i, 'NONE', s:arg)
call s:HL('vimContinue', 81, 'NONE', 'NONE', 'NONE', s:muted)
call s:HL('vimUserFunc', 81, 'NONE', s:i, 'NONE', s:arg)
call s:HL('vimVar', 81, 'NONE', s:i, 'NONE', s:var)

" Help
call s:HL('helpCommand', 81, 'NONE', s:i, 'NONE', s:word)
call s:HL('helpExample', 81, 'NONE', s:i, 'NONE', s:arg)
