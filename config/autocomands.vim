if has("autocmd")
    augroup vim_files "{{{
        au!

        " Bind <F1> to show the keyword under cursor
        " general help can still be entered manually, with :h
        autocmd filetype vim noremap <buffer> <F1> <Esc>:help <C-r><C-w><CR>
        autocmd filetype vim noremap! <buffer> <F1> <Esc>:help <C-r><C-w><CR>
    augroup end "}}}

    augroup html_files "{{{
        au!

        " This function detects, based on HTML content, whether this is a
        " Django template, or a plain HTML file, and sets filetype accordingly
        fun! s:DetectHTMLVariant()
            let n = 1
            while n < 50 && n < line("$")
                " check for django
                if getline(n) =~ '{%\s*\(extends\|load\|block\|if\|for\|include\|trans\)\>'
                    set ft=htmldjango.html
                    return
                endif
                let n = n + 1
            endwhile
            " go with html
            set ft=html
        endfun

        autocmd BufNewFile,BufRead *.html,*.htm call s:DetectHTMLVariant()

        " Auto-closing of HTML/XML tags
        let g:closetag_default_xml=1
        autocmd filetype html,htmldjango let b:closetag_html_style=1
        autocmd filetype html,xhtml,xml source ~/.vim/scripts/closetag.vim
    augroup end " }}}

    augroup python_files "{{{
        au!

        " This function detects, based on Python content, whether this is a
        " Django file, which may enabling snippet completion for it
        fun! s:DetectPythonVariant()
            let n = 1
            while n < 50 && n < line("$")
                " check for django
                if getline(n) =~ 'import\s\+\<django\>' || getline(n) =~ 'from\s\+\<django\>\s\+import'
                    set ft=python.django
                    "set syntax=python
                    return
                endif
                let n = n + 1
            endwhile
            " go with html
            set ft=python
        endfun
        autocmd BufNewFile,BufRead *.py call s:DetectPythonVariant()

        " PEP8 compliance (set 1 tab = 4 chars explicitly, even if set
        " earlier, as it is important)
        autocmd filetype python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
        autocmd filetype python setlocal textwidth=80
        " autocmd filetype python match ErrorMsg '\%>80v.\+'

        " But disable autowrapping as it is super annoying
        autocmd filetype python setlocal formatoptions-=t

    augroup end " }}}

    augroup ruby_files "{{{
        au!

        autocmd filetype ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
    augroup end " }}}

    augroup rst_files "{{{
        au!

        " Auto-wrap text around 74 chars
        autocmd filetype rst setlocal textwidth=74
        autocmd filetype rst setlocal formatoptions+=nqt
        autocmd filetype rst match ErrorMsg '\%>74v.\+'
    augroup end " }}}

    augroup css_files "{{{
        au!

        autocmd filetype css,less setlocal foldmethod=marker foldmarker={,}
    augroup end "}}}

    augroup javascript_files "{{{
        au!

        autocmd filetype javascript setlocal expandtab
        autocmd filetype javascript setlocal listchars=trail:·,extends:#,nbsp:·
        autocmd filetype javascript setlocal foldmethod=marker foldmarker={,}
    augroup end "}}}

    augroup textile_files "{{{
        au!

        autocmd filetype textile set tw=78 wrap

        " Render YAML front matter inside Textile documents as comments
        autocmd filetype textile syntax region frontmatter start=/\%^---$/ end=/^---$/
        autocmd filetype textile highlight link frontmatter Comment
    augroup end "}}}
endif



" vim:foldmethod=marker
