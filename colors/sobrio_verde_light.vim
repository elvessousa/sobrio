" Vim color file
" Author: Elves Sousa
" Website: elvessousa.com.br
" Colorscheme Name: elf_sobrio_verde_light
" Inspired by https://www.monokai.pro/

set background=dark
highlight clear

if exists('syntax_on')
  syntax reset
endif

set t_Co=256
let g:colors_name = 'sobrio_verde_light'

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
let s:word = '#2ec27e'

" Text format
let s:b = 'bold'
let s:i = 'italic'
let s:u = 'underline'
let s:uc = 'undercurl'

" Set highlight colors function
function s:create(scope, ...)
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

" Link highlights 
function s:link(scope, target)
  execute 'highlight link ' . a:scope . ' ' . a:target
endfunction

" Apply colors
call s:create('Boolean', 141, 'NONE', 'NONE', 'NONE', s:int)
call s:create('Character', 141, 'NONE', 'NONE', 'NONE', s:int)
call s:create('ColorColumn' , 'NONE', 237, 'NONE', s:accent, 'NONE')
call s:create('Comment', 242, 'NONE', s:i, 'NONE', s:muted)
call s:create('Conceal', 204, 'NONE', s:uc, 'NONE', s:other)
call s:create('Conditional', 204, 'NONE', s:i, 'NONE', s:word)
call s:create('Constant', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:create('Cursor' , 231, 231, 'NONE', s:lightest, s:lightest)
call s:create('CursorColumn' , 'NONE', 237, 'NONE', s:accent, 'NONE')
call s:create('CursorLine' , 'NONE', 237, 'NONE', s:darker, 'NONE')
call s:create('CursorLineNr' , 'NONE', 237, 'NONE', 'NONE', s:prop)
call s:create('Define', 204, 'NONE', s:i, 'NONE', s:word)
call s:create('Directory', 141, 'NONE', s:b, 'NONE', s:dir)
call s:create('EndOfBuffer', 231, 235, 'NONE', s:bg, s:accent)
call s:create('ErrorMsg', 231, 204, 'NONE', s:warn, s:lightest)
call s:create('Float', 141, 'NONE', 'NONE', 'NONE', s:int)
call s:create('Folded', 242, 235, 'NONE', s:fold, s:muted)
call s:create('Function', 81, 'NONE', s:b, 'NONE', s:id)
call s:create('Identifier', 81, 'NONE', s:i, 'NONE', s:id)
call s:create('IncSearch', 16, 11, 'NONE', s:str, s:darkest)
call s:create('Keyword', 204, 'NONE', s:i, 'NONE', s:word)
call s:create('Label', 204, 'NONE', 'NONE', 'NONE', s:var)
call s:create('LineNr' , 102, 235, 'NONE', s:bg, s:lineNumber)
call s:create('MatchParen' , 11, 'NONE', s:u, 'NONE', s:str)
call s:create('MsgArea', 231, 235, 'NONE', s:bg, s:other)
call s:create('NonText', 59, 235, 'NONE', s:fold, s:other)
call s:create('Normal', 231, 235, 'NONE', s:bg, s:lightest)
call s:create('Number', 141, 'NONE', 'NONE', 'NONE', s:int)
call s:create('Operator', 204, 'NONE', 'NONE', 'NONE', s:word)
call s:create('Pmenu', 'NONE', 236, 'NONE', s:menu, 'NONE')
call s:create('PmenuSel', 'NONE', 59, 'NONE', s:hover, 'NONE')
call s:create('PreProc', 155, 'NONE', 'NONE', 'NONE', s:arg)
call s:create('Search', 16, 11, 'NONE', s:str, s:darkest)
call s:create('SignColumn', 'NONE', 237, 'NONE', s:bg, 'NONE')
call s:create('Special', 81, 'NONE', 'NONE', 'NONE', s:other)
call s:create('SpecialKey', 59, 237, 'NONE', s:accent, s:other)
call s:create('SpellBad', 59, 237, s:uc, 'NONE', s:warn)
call s:create('SpellCap', 59, 237, s:uc, 'NONE', s:warn)
call s:create('Statement', 204, 'NONE', s:i, 'NONE', s:word)
call s:create('StatusLine' , 231, 241, s:b, s:splits, s:lightest)
call s:create('StatusLineNC' , 231, 241, 'NONE', s:splits, s:lightest)
call s:create('StorageClass', 81, 'NONE', s:i, 'NONE', s:id2)
call s:create('String', 221, 'NONE', 'NONE', 'NONE', s:str)
call s:create('StringDelimiter', 221, 'NONE', 'NONE', 'NONE', s:str)
call s:create('TabLine', 231, 204, 'NONE', s:menu, s:other)
call s:create('TabLineFill', 231, 204, 'NONE', s:menu, s:other)
call s:create('TabLineSel', 231, 204, s:b, s:bg, s:arg)
call s:create('Tag', 204, 'NONE', s:b, 'NONE', s:word)
call s:create('Title', 255, 'NONE', s:b, 'NONE', s:other)
call s:create('Todo', 11, 'NONE', 'NONE', s:other, 'NONE')
call s:create('Type', 81, 'NONE', s:i, 'NONE', s:type)
call s:create('Underlined', 'NONE', 'NONE', s:u, 'NONE', 'NONE')
call s:create('VertSplit' , 241, 241, 'NONE', s:bg, s:splits)
call s:create('Visual' , 'NONE', 239, 'NONE', s:visual, 'NONE')
call s:create('WarningMsg', 231, 204, 'NONE', s:warn, s:lightest)

" TreeSitter
call s:create('TSContructor', 204, 'NONE', s:b, 'NONE', s:id2)
call s:create('TSFuncBuiltin', 204, 'NONE', s:b, 'NONE', s:arg)
call s:create('TSSymbol', 204, 'NONE', s:i, 'NONE', s:arg)
call s:link('TSConstBuiltin', 'Identifier')
call s:link('TSInclude', 'Tag')
call s:link('TSNamespace', 'PreProc')
call s:link('TSParameter', 'TSSymbol')
call s:link('TSTag', 'Tag')
call s:link('TSTagAttribute', 'TSSymbol')
call s:link('TSTagDelimiter', 'Operator')
call s:link('TSTitle', 'Tag')
call s:link('TSVariableBuiltin', 'Type')

"  Netrw File Browser
call s:create('netrwClassify', 231, 204, 'NONE', 'NONE', s:lineNumber)
call s:create('netrwLink', 231, 204, 'NONE', 'NONE', s:muted)
call s:create('netrwPlain', 242, 'NONE', 'NONE', 'NONE', s:file)
call s:create('netrwSlash', 231, 204, 'NONE', s:bg, s:bg)
call s:create('netrwTreeBar', 231, 204, 'NONE', 'NONE', s:bg)
call s:link('netrwExe', 'Define')
call s:link('netrwSymLink', 'StorageClass')

" NERDTree File Browser
call s:create('NERDTreeExecFile', 231, 155, s:b, 'NONE', s:exec)
call s:link('NERDTreeCWD', 'Comment')
call s:link('NERDTreeDirSlash', 'Comment')
call s:link('NERDTreeFile', 'netrwPlain')
call s:link('NERDTreeFlags', 'PreProc')

" Diffs
call s:create('DiffAdd', 231, 155, s:b, 'NONE', s:exec)
call s:create('DiffChange', 'NONE', 'NONE', 'NONE', 'NONE', s:str2)
call s:create('DiffDelete', 204, 'NONE', 'NONE', 'NONE', s:warn)
call s:create('DiffText', 231, 24, s:b, s:id, s:lightest)

" HTML 
call s:create('htmlArg', 'NONE', 'NONE', s:i, 'NONE', s:arg)
call s:create('htmlBold', 'NONE', 'NONE', s:b, 'NONE', s:type)
call s:link('htmlEndTag', 'Operator')
call s:link('htmlH1', 'Tag')
call s:link('htmlH2', 'Tag')
call s:link('htmlH3', 'Tag')
call s:link('htmlH4', 'Tag')
call s:link('htmlH5', 'Tag')
call s:link('htmlH6', 'Tag')
call s:link('htmlItalic', 'Type')
call s:link('htmlSpecialChar', 'Character')
call s:link('htmlTSConstant', 'Comment')
call s:link('htmlTag', 'Operator')
call s:link('htmlTagName', 'Tag')

" XML
call s:create('xmlDecl', 'NONE', 'NONE', 'NONE', 'NONE', s:id2)
call s:link('svgAttr', 'htmlArg')
call s:link('svgElement', 'Tag')
call s:link('xmlAttrib', 'htmlArg')
call s:link('xmlEqual', 'Operator')
call s:link('xmlNamespace', 'Keyword')
call s:link('xmlProcessingDelim', 'Label')
call s:link('xmlTag', 'Operator')
call s:link('xmlTagName', 'Tag')

" Markdown
call s:create('mkdBold', 'NONE', 'NONE', s:b, 'NONE', s:muted)
call s:create('mkdHeading', 'NONE', 'NONE', 'NONE', 'NONE', s:type)
call s:create('mkdLink', 'NONE', 'NONE', s:u, 'NONE', s:str2)
call s:create('mkdRule', 'NONE', 'NONE', 'NONE', 'NONE', s:muted)
call s:link('mkdBlockquote', 'Function')
call s:link('mkdItalic', 'mkdBold')

" JavaScript
call s:link('javascriptTSConstructor', 'Identifier')
call s:link('javascriptTSKeyword', 'StorageClass')
call s:link('javascriptTSVariable', 'Label')
call s:link('jsArrowFunction', 'Operator')
call s:link('jsBrackets', 'Special')
call s:link('jsDestructuringAssignment', 'Special')
call s:link('jsExport', 'Define')
call s:link('jsFrom', 'Define')
call s:link('jsFuncBraces', 'Special')
call s:link('jsFuncParens', 'Special')
call s:link('jsFunction', 'Keyword')
call s:link('jsIfElseBraces', 'Special')
call s:link('jsImport', 'Define')
call s:link('jsModuleBraces', 'Special')
call s:link('jsNoise', 'Special')
call s:link('jsObjectBraces', 'Special')
call s:link('jsObjectProp', 'Label')
call s:link('jsParens', 'Special')
call s:link('jsStorageClass', 'StorageClass')
call s:link('jsTemplateExpression', 'Label')
call s:link('jsVariableDef', 'Label')

" JSX
call s:create('jsxComponentName', 'NONE', 'NONE', s:b, 'NONE', s:id2)
call s:create('jsxTag', 'NONE', 'NONE', 'NONE', 'NONE', s:id)
call s:create('jsxTagName', 'NONE', 'NONE', s:b, 'NONE', s:arg)
call s:link('javascriptTSTag', 'jsxTagName')
call s:link('javascriptTSTagAttribute', 'Type')
call s:link('javascriptTSTagDelimiter', 'PreProc')
call s:link('jsxBraces', 'Normal')
call s:link('jsxClosePunct', 'PreProc')
call s:link('jsxCloseString', 'PreProc')
call s:link('jsxExpressionBlock', 'Normal')
call s:link('jsxOpenPunct', 'PreProc')

" TypeScript
call s:link('tsxTSConstructor', 'Identifier')
call s:link('tsxTSKeyword', 'StorageClass')
call s:link('tsxTSTag', 'jsxTagName')
call s:link('tsxTSTagAttribute', 'Type')
call s:link('tsxTSTagDelimiter', 'PreProc')
call s:link('typescriptAmbientDeclaration', 'Keyword')
call s:link('typescriptArray', 'Label')
call s:link('typescriptArrowFunc', 'Operator')
call s:link('typescriptAssign', 'Keyword')
call s:link('typescriptBinaryOp', 'Operator')
call s:link('typescriptBlock', 'Normal')  
call s:link('typescriptBraces', 'Special') 
call s:link('typescriptCastKeyword', 'Keyword')
call s:link('typescriptDecorator', 'Label')
call s:link('typescriptDefault', 'StorageClass')
call s:link('typescriptDestructureVariable', 'Label')
call s:link('typescriptEndColons', 'Special')
call s:link('typescriptExceptions', 'Keyword')
call s:link('typescriptExport', 'Operator')
call s:link('typescriptFuncCallArg', 'PreProc')
call s:link('typescriptFuncComma', 'Special')
call s:link('typescriptIdentifierName', 'Identifier')
call s:link('typescriptImport', 'Operator') 
call s:link('typescriptKeywordOp', 'Keyword')
call s:link('typescriptModule', 'StorageClass')
call s:link('typescriptObjectLabel', 'Label')
call s:link('typescriptObjectSpread', 'Operator')
call s:link('typescriptOperator', 'Operator')
call s:link('typescriptParens', 'Special')
call s:link('typescriptProp', 'Label')
call s:link('typescriptTSConstructor', 'Identifier')
call s:link('typescriptTSKeyword', 'StorageClass')
call s:link('typescriptTSVariable', 'Label')
call s:link('typescriptTry', 'Keyword') 
call s:link('typescriptTypeReference', 'Type')
call s:link('typescriptUnaryOp', 'Operator')
call s:link('typescriptVariable', 'StorageClass')
call s:link('typescriptVariableDeclaration', 'Label')

" JSON
call s:link('jsonKeyword', 'PreProc')
call s:link('jsonQuote', 'Comment')
call s:link('jsonString', 'Normal')
call s:link('jsonTSLabel', 'PreProc')
call s:link('jsonTSString', 'Normal')

" GraphQL
call s:link('graphqlName', 'PreProc')
call s:link('graphqlTaggedTemplate', 'String')
call s:link('graphqlTSProperty', 'TSSymbol')

" YAML
call s:link('yamlAlias', 'Normal')
call s:link('yamlAnchor', 'Normal')
call s:link('yamlBlockMappingKey', 'TSSymbol')
call s:link('yamlDocumentHeader', 'String')
call s:link('yamlKey', 'Keyword')
call s:link('yamlTSField', 'yamlBlockMappingKey')
call s:link('yamlTSString', 'Normal')

" TOML
call s:link('tomlKey', 'Type')
call s:link('tomlTSOperator', 'Normal')
call s:link('tomlTSProperty', 'Type')
call s:link('tomlTSPunctBracket', 'Normal')
call s:link('tomlTable', 'Directory')

" Cascading Style Sheets
call s:create('cssClassName', 155, 'NONE', s:i, 'NONE', s:arg)
call s:create('cssFunctionName', 81, 'NONE', s:b, 'NONE', s:id2)
call s:create('cssURL', 208, 'NONE', 'NONE', 'NONE', s:str2)
call s:link('cssAtKeyword', 'Keyword')
call s:link('cssAtRule', 'Keyword')
call s:link('cssBraceError', 'Special')
call s:link('cssBraces', 'Special')
call s:link('cssClassNameDot', 'PreProc')
call s:link('cssColor', 'Number')
call s:link('cssCommonAttr', 'PreProc')
call s:link('cssCustomProp', 'PreProc')
call s:link('cssDefinition', 'Keyword')
call s:link('cssIdentifier', 'StorageClass')
call s:link('cssMediaProp', 'Label')
call s:link('cssProp', 'Label')
call s:link('cssPseudoClassId', 'Type')
call s:link('cssTSType', 'Tag')
call s:link('cssTagName', 'Tag')
call s:link('cssUnitDecorators', 'Operator')
call s:link('cssValueLength', 'Number')

" Sass (SCSS)
call s:link('scssDefinition', 'Define')
call s:link('scssImport', 'Keyword')
call s:link('scssSelectorName', 'cssClassName')
call s:link('scssTSType', 'Tag')
call s:link('scssVariable', 'Identifier')

" Less
call s:link('lessClass', 'cssClassName')
call s:link('lessId', 'cssIdentifier')
call s:link('lessIdChar', 'cssIdentifier')
call s:link('lessInclude', 'Keyword')

" Indented Sass
call s:link('sassClass', 'cssClassName')
call s:link('sassId', 'cssIdentifier')
call s:link('sassIdChar', 'cssIdentifier')
call s:link('sassMedia', 'Keyword')

" PHP
call s:create('phpClass', 81, 'NONE', s:b, 'NONE', s:title)
call s:create('phpFunctions', 81, 'NONE', s:b, 'NONE', s:arg)
call s:link('phpClassImplements', 'PreProc')
call s:link('phpFunction', 'Function')
call s:link('phpIdentifier', 'Normal')
call s:link('phpInclude', 'Keyword')
call s:link('phpMethod', 'Function')
call s:link('phpMethodsVar', 'Label')
call s:link('phpStaticClasses', 'PreProc')
call s:link('phpTSConstructor', 'TSContructor')

" Python
call s:create('pythonBuiltinFunc', 155, 'NONE', s:b, 'NONE', s:id2)
call s:create('pythonBuiltinObj', 155, 'NONE', s:i, 'NONE', s:arg)
call s:link('pythonBuiltinType', 'pythonBuiltinObj')
call s:link('pythonClassVar', 'Type')
call s:link('pythonImport', 'Operator')
call s:link('pythonTSConstructor', 'TSContructor')

"Django
call s:link('djangoStatement', 'Type')
call s:link('djangoTagBlock', 'Special')
call s:link('djangoVarBlock', 'Label')

" C++
call s:link('cBlock', 'Type')
call s:link('cInclude', 'Tag')
call s:link('cParen', 'Special')
call s:link('cStructure', 'Keyword')
call s:link('cType', 'StorageClass')
call s:link('cTypeDef', 'Keyword')
call s:link('cppSTLvariable', 'PreProc')
call s:link('cppStructure', 'cType')

" Rust
call s:create('rustAttribute', 81, 'NONE', 'NONE', 'NONE', s:type)
call s:link('rustEnumVariant', 'Identifier')
call s:link('rustFoldBraces', 'Special')
call s:link('rustIdentifier', 'Function')
call s:link('rustSelf', 'Type')
call s:link('rustSigil', 'Operator')
call s:link('rustTSType', 'Type')
call s:link('rustType', 'Type')

" Elixir
call s:create('elixirVariable', 155, 'NONE', s:i, 'NONE', s:var)
call s:link('elixirAtom', 'PreProc')
call s:link('elixirID', 'Normal')
call s:link('elixirListDelimiter', 'Special')
call s:link('elixirMapDelimiter', 'Special')
call s:link('elixirPseudoVariable', 'elixirVariable')
call s:link('elixirSelf', 'Type')
call s:link('elixirStringDelimiter', 'String')
call s:link('elixirTupleDelimiter', 'Special')

" Ruby
call s:create('rubyAccess', 155, 'NONE', s:b, 'NONE', s:arg)
call s:link('rubyBlockParameterList', 'Label')
call s:link('rubyClassName', 'Function')
call s:link('rubyConstant', 'Define')
call s:link('rubyCurlyBlockDelimiter', 'Special')
call s:link('rubyInstanceVariable', 'Label')
call s:link('rubySymbol', 'PreProc')

" Shell Script
call s:link('bashStatement', 'StorageClass')
call s:link('bashTSFuncBuiltin', 'StorageClass')
call s:link('bashTSVariable', 'Identifier')
call s:link('shLoop', 'Keyword')
call s:link('shStatement', 'bashStatement')

" Fish
call s:link('fishTSFuncBuiltin', 'Keyword')

" SQL
call s:link('sqlKeyword', 'Keyword')
call s:link('sqlOperator', 'StorageClass')

" Vim Script
call s:create('vimContinue', 81, 'NONE', 'NONE', 'NONE', s:muted)
call s:create('vimIsCommand', 81, 'NONE', s:i, 'NONE', s:arg)
call s:create('vimVar', 81, 'NONE', s:i, 'NONE', s:var)
call s:link('vimFunc', 'vimIsCommand')
call s:link('vimUserFunc', 'vimIsCommand')

" Help
call s:create('helpExample', 81, 'NONE', s:i, 'NONE', s:arg)
call s:link('helpCommand', 'Keyword')

" CoC
call s:link('CocHintSign', 'Comment')
call s:link('FgCocHintFloatBgCocFloating', 'Type')
