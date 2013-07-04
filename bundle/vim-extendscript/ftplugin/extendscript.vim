" setlocal textwidth=20

call tcomment#DefineType('extendscript',       '// %s'            )
call tcomment#DefineType('extendscript_inline', g:tcommentInlineC )
call tcomment#DefineType('extendscript_block', g:tcommentBlockC   )


" setlocal tags=/Users/marcel/.vim/tags/extendscript.tags
setlocal tags=/Users/marcel/.vim/tags/extendscript.tags
