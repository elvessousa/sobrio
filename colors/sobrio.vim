" Vim color file
" Author: Elves Sousa
" Website: https://elvessousa.com.br
" Colorscheme Name: sobrio

set background=dark
highlight clear

if exists('syntax_on')
  syntax reset
endif

set t_Co=256
let g:colors_name = 'sobrio'

" Color palette
" Interface
let s:accent = '#121212'
let s:bg = '#202020'
let s:darker = '#121212'
let s:darkest = '#000000'
let s:fold = '#262626'
let s:hover = '#5f5f5f'
let s:lightest = '#ffffff'
let s:lineNumber = '#333333'
let s:menu = '#303030'
let s:splits = '#303030'
let s:visual = '#4e4e4e'

" Syntax highlight colors
let s:arg = '#d7af87'
let s:dir = '#d7af87'
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

function s:link(scope, target)
  execute 'highlight link ' . a:scope . ' ' . a:target
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
call s:HL('Label', 204, 'NONE', 'NONE', 'NONE', s:prop)
call s:HL('LineNr' , 102, 235, 'NONE', s:bg, s:lineNumber)
call s:HL('MatchParen' , 11, 'NONE', s:u, 'NONE', s:str)
call s:HL('MsgArea', 231, 235, 'NONE', s:bg, s:other)
call s:HL('NonText', 59, 235, 'NONE', s:fold, s:other)
call s:HL('Normal', 231, 235, 'NONE', s:bg, s:lightest)
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
call s:HL('SpellCap', 59, 237, s:uc, 'NONE', s:warn)
call s:HL('Statement', 204, 'NONE', s:i, 'NONE', s:word)
call s:HL('StatusLine' , 231, 241, s:b, s:splits, s:lightest)
call s:HL('StatusLineNC' , 231, 241, 'NONE', s:splits, s:lightest)
call s:HL('StorageClass', 81, 'NONE', 'NONE', 'NONE', s:word)
call s:HL('String', 221, 'NONE', 'NONE', 'NONE', s:str)
call s:HL('Tag', 204, 'NONE', s:b, 'NONE', s:word)
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
call s:link('netrwExe', 'Define')
call s:HL('netrwLink', 231, 204, 'NONE', 'NONE', s:muted)
call s:HL('netrwPlain', 242, 'NONE', 'NONE', 'NONE', s:file)
call s:HL('netrwSlash', 231, 204, 'NONE', s:bg, s:bg)
call s:HL('netrwSymLink', 231, 204, s:i, 'NONE', s:id2)
call s:HL('netrwTreeBar', 231, 204, 'NONE', 'NONE', s:bg)

" NERDTree File Browser
call s:link('NERDTreeDirSlash', 'Comment')
call s:link('NERDTreeFlags', 'PreProc')

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
call s:link('htmlTagName', 'Tag')

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
call s:HL('jsBrackets', 'NONE', 'NONE', 'NONE', 'NONE', s:other)
call s:HL('jsExport', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('jsFrom', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('jsFuncBraces', 'NONE', 'NONE', 'NONE', 'NONE', s:other)
call s:HL('jsFuncParens', 'NONE', 'NONE', 'NONE', 'NONE', s:other)
call s:HL('jsFunction', 81, 'NONE', s:i, 'NONE', s:word)
call s:HL('jsImport', 'NONE', 'NONE', 'NONE', 'NONE', s:word)
call s:HL('jsModuleBraces', 'NONE', 'NONE', 'NONE', 'NONE', s:other)
call s:HL('jsObjectBraces', 'NONE', 'NONE', 'NONE', 'NONE', s:other)
call s:HL('jsParens', 'NONE', 'NONE', 'NONE', 'NONE', s:other)
call s:HL('jsStorageClass', 'NONE', 'NONE', s:i, 'NONE', s:id2)
call s:HL('jsTemplateExpression', 'NONE', 'NONE', 'NONE', 'NONE', s:var)
call s:HL('jsVariableDef', 'NONE', 'NONE', 'NONE', 'NONE', s:var)

" JSX
call s:HL('jsxBraces', 'NONE', 'NONE', 'NONE', 'NONE', s:id)
call s:HL('jsxClosePunct', 'NONE', 'NONE', 'NONE', 'NONE', s:arg)
call s:HL('jsxCloseString', 'NONE', 'NONE', 'NONE', 'NONE', s:arg)
call s:HL('jsxComponentName', 'NONE', 'NONE', s:b, 'NONE', s:id2)
call s:HL('jsxExpressionBlock', 'NONE', 'NONE', 'NONE', 'NONE', s:id)
call s:HL('jsxOpenPunct', 'NONE', 'NONE', 'NONE', 'NONE', s:arg)
call s:HL('jsxTag', 'NONE', 'NONE', 'NONE', 'NONE', s:id)
call s:HL('jsxTagName', 'NONE', 'NONE', s:b, 'NONE', s:arg)

" TypeScript
call s:link('typescriptArray', 'Label')
call s:link('typescriptArrowFunc', 'Keyword')
call s:link('typescriptAssign', 'Keyword')
call s:link('typescriptBinaryOp', 'Keyword')
call s:link('typescriptBlock', 'Normal')  
call s:link('typescriptBraces', 'Special') 
call s:link('typescriptCastKeyword', 'Keyword')
call s:link('typescriptDestructureVariable', 'Label')
call s:link('typescriptEndColons', 'Special')
call s:link('typescriptExceptions', 'Keyword')
call s:link('typescriptExport', 'Operator')
call s:link('typescriptFuncCallArg', 'PreProc')
call s:link('typescriptIdentifierName', 'Identifier')
call s:link('typescriptImport', 'Operator') 
call s:link('typescriptObjectLabel', 'Label')
call s:link('typescriptObjectSpread', 'Operator')
call s:link('typescriptOperator', 'Operator')
call s:link('typescriptParens', 'Special')
call s:link('typescriptProp', 'Label')
call s:link('typescriptTypeReference', 'Type')
call s:link('typescriptTry', 'Keyword') 
call s:link('typescriptUnaryOp', 'Operator')
call s:HL('typescriptVariable', 'NONE', 'NONE', s:i, 'NONE', s:id2)
call s:link('typescriptVariableDeclaration', 'PreProc')

" JSON
call s:link('jsonKeyword', 'PreProc')
call s:link('jsonQuote', 'Special')
call s:link('jsonString', 'Normal')

" GraphQL
call s:link('graphqlName', 'PreProc')

" YAML
call s:link('yamlAlias', 'Normal')
call s:link('yamlAnchor', 'Normal')
call s:HL('yamlBlockMappingKey', 204, 'NONE', s:i, 'NONE', s:arg)
call s:link('yamlDocumentHeader', 'String')
call s:link('yamlKey', 'Keyword')

" Cascading Style Sheets
call s:link('cssAtKeyword', 'Keyword')
call s:link('cssAtRule', 'Keyword')
call s:link('cssBraces', 'Special')
call s:HL('cssClassName', 155, 'NONE', s:i, 'NONE', s:arg)
call s:link('cssClassNameDot', 'PreProc')
call s:link('cssColor', 'Number')
call s:link('cssCommonAttr', 'PreProc')
call s:link('cssCustomProp', 'PreProc')
call s:link('cssDefinition', 'Keyword')
call s:HL('cssFunctionName', 81, 'NONE', 'NONE', 'NONE', s:id2)
call s:HL('cssIdentifier', 81, 'NONE', s:i, 'NONE', s:id2)
call s:HL('cssMediaProp', 81, 'NONE', 'NONE', 'NONE', s:prop)
call s:HL('cssProp', 81, 'NONE', 'NONE', 'NONE', s:prop)
call s:link('cssPseudoClassId', 'Type')
call s:link('cssTagName', 'Operator')
call s:HL('cssURL', 208, 'NONE', 'NONE', 'NONE', s:str2)
call s:link('cssUnitDecorators', 'Operator')
call s:link('cssValueLength', 'Number')

" Sass (SCSS)
call s:link('scssDefinition', 'Statement')
call s:link('scssImport', 'Keyword')
call s:HL('scssSelectorName', 155, 'NONE', s:i, 'NONE', s:arg)
call s:HL('scssVariable', 155, 'NONE', s:i, 'NONE', s:id)

" Indented Sass
call s:HL('sassClass', 155, 'NONE', s:i, 'NONE', s:arg)
call s:HL('sassId', 81, 'NONE', s:i, 'NONE', s:id2)
call s:HL('sassIdChar', 81, 'NONE', s:i, 'NONE', s:id2)
call s:link('sassMedia', 'Keyword')

" PHP
call s:HL('phpClass', 81, 'NONE', s:b, 'NONE', s:title)
call s:link('phpClassImplements', 'PreProc')
call s:link('phpFunction', 'Function')
call s:HL('phpFunctions', 81, 'NONE', s:b, 'NONE', s:arg)
call s:link('phpInclude', 'Keyword')
call s:HL('phpMethodsVar', 81, 'NONE', 'NONE', 'NONE', s:prop)
call s:link('phpStaticClasses', 'PreProc')

" Python
call s:HL('pythonBuiltinObj', 155, 'NONE', s:i, 'NONE', s:arg)
call s:link('pythonBuiltinType', 'pythonBuiltinObj')
call s:HL('pythonBuiltinFunc', 155, 'NONE', s:b, 'NONE', s:id2)
call s:link('pythonClassVar', 'Type')
call s:link('pythonImport', 'Operator')

"Django
call s:HL('djangoTagBlock', 155, 'NONE', 'NONE', 'NONE', s:type)
call s:link('djangoVarBlock', 'djangoTagBlock')

" C++
call s:link('cBlock', 'Type')
call s:link('cInclude', 'Operator')
call s:link('cParen', 'Special')
call s:link('cStructure', 'Keyword')
call s:HL('cType', 81, 'NONE', s:i, 'NONE', s:id2)
call s:link('cppSTLvariable', 'PreProc')
call s:link('cppStructure', 'cType')

" Rust
call s:HL('rustAttribute', 81, 'NONE', 'NONE', 'NONE', s:type)
call s:link('rustIdentifier', 'Function')
call s:link('rustType', 'Type')

" Elixir
call s:link('elixirAtom', 'PreProc')
call s:HL('elixirPseudoVariable', 155, 'NONE', s:i, 'NONE', s:var)
call s:link('elixirStringDelimiter', 'String')
call s:link('elixirTupleDelimiter', 'Special')
call s:HL('elixirVariable', 155, 'NONE', s:i, 'NONE', s:var)

" Ruby
call s:HL('rubyBlockParameterList', 155, 'NONE', 'NONE', 'NONE', s:var)
call s:HL('rubyInstanceVariable', 155, 'NONE', 'NONE', 'NONE', s:id2)
call s:link('rubySymbol', 'PreProc')
call s:link('rubyCurlyBlockDelimiter', 'Special')

" Shell Script
call s:HL('bashStatement', 81, 'NONE', s:i, 'NONE', s:id2)
call s:link('shStatement', 'bashStatement')

" Vim Script
call s:HL('vimIsCommand', 81, 'NONE', s:i, 'NONE', s:arg)
call s:HL('vimContinue', 81, 'NONE', 'NONE', 'NONE', s:muted)
call s:link('vimUserFunc', 'vimIsCommand')
call s:HL('vimVar', 81, 'NONE', s:i, 'NONE', s:var)

" Help
call s:link('helpCommand', 'Keyword')
call s:HL('helpExample', 81, 'NONE', s:i, 'NONE', s:arg)
