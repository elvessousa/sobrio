" Treesitter
call s:link('@constant', 'Constant')
call s:link('@constant.builtin', 'Constant')
call s:link('@constructor', 'TSContructor')
call s:link('@function.builtin', 'TSFuncBuiltin')
call s:link('@function.call', 'Function')
call s:link('@include', 'Tag')
call s:link('@namespace', 'TSSymbol')
call s:link('@parameter', 'TSSymbol')
call s:link('@symbol', 'TSSymbol')
call s:link('@type.builtin', 'StorageClass')
call s:link('@variable', 'Label')

" HTML
call s:link('@tag.attribute', 'htmlArg')

" Markdown
call s:link('@text.strong', 'Function')
call s:link('@text.literal', 'String')
call s:link('@text.uri', 'String')
call s:link('@text.title', 'Tag')
call s:link('@text.emphasis', 'Type')
call s:link('@text.reference', 'mdLink')

" JSX
call s:link('@tag.attribute.jsx', 'Type')
call s:link('@tag.delimiter.jsx', 'PreProc')
call s:link('@tag.jsx', 'jsxTagName')

" TypeScript
call s:link('@tag.attribute.tsx', 'Type')
call s:link('@tag.delimiter.tsx', 'PreProc')
call s:link('@tag.tsx', 'jsxTagName')

" JSON
call s:link('@label.json', 'PreProc')
call s:link('@string.json', 'Normal')

" YAML
call s:link('@field.yaml', 'TSSymbol')
call s:link('@string.yaml', 'Normal')

" TOML
call s:link('@type.toml', 'TSSymbol')

" PHP
call s:link('@constructor.php', 'TSContructor')
call s:link('@parameter.@variable.php', 'TSSymbol')

" Shell Script
call s:link('@function.builtin.bash', 'TSConstructor')
