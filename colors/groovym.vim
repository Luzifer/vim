" local syntax file
" Maintainer: groover <groover@streik.no-ip.org>
" Last Change: Sat Jan 16 14:59:23 CET 2010
" see: so $VIMRUNTIME/syntax/hitest.vim

" Remove existing highlighting first
highlight clear
set background=dark

if exists("syntax_on")
    syntax reset
endif

let colors_name = "groovym"

if(&t_Co == 256)
    hi SpecialKey       cterm=none      ctermfg=45          ctermbg=none
    hi NonText          cterm=none      ctermfg=233         ctermbg=none
    hi Directory        cterm=bold      ctermfg=21          ctermbg=none
    hi ErrorMsg         cterm=bold      ctermfg=196         ctermbg=none
    hi IncSearch        cterm=underline ctermfg=40          ctermbg=none
    hi Search           cterm=none      ctermfg=232         ctermbg=40
    hi MoreMsg          cterm=bold      ctermfg=245         ctermbg=none
    hi ModeMsg          cterm=bold      ctermfg=255         ctermbg=none
    hi LineNr           cterm=none      ctermfg=234         ctermbg=none
    hi Question         cterm=bold      ctermfg=40          ctermbg=none
    hi StatusLine       cterm=bold      ctermfg=255         ctermbg=239
    hi StatusLineNC     cterm=none      ctermfg=232         ctermbg=239
    hi VertSplit        cterm=none      ctermfg=239         ctermbg=239
    hi Title            cterm=bold      ctermfg=45          ctermbg=none
    hi Visual           cterm=reverse   ctermfg=none        ctermbg=none
    "hi VisualNOS
    hi WarningMsg       cterm=bold      ctermfg=202         ctermbg=none
    hi WildMenu         cterm=underline ctermfg=40          ctermbg=none
    hi Folded           cterm=none      ctermfg=250         ctermbg=none
    hi FoldColumn       cterm=none      ctermfg=250         ctermbg=none
    "hi DiffAdd
    "hi DiffChange
    "hi DiffDelete
    "hi DiffText
    "hi SignColumn
    "hi SpellBad
    "hi SpellCap
    "hi SpellRare
    "hi SpellLocal
    hi Pmenu            cterm=none      ctermfg=239         ctermbg=none
    hi PmenuSel         cterm=bold      ctermfg=45          ctermbg=none
    hi PmenuSbar        cterm=none      ctermfg=239         ctermbg=239
    hi PmenuThumb       cterm=none      ctermfg=232         ctermbg=239
    hi TabLine          cterm=underline ctermfg=239         ctermbg=none
    hi TabLineSel       cterm=bold      ctermfg=255         ctermbg=none
    hi TabLineFill      cterm=underline ctermfg=239         ctermbg=none
    hi CursorColumn     cterm=none      ctermfg=255         ctermbg=234
    hi CursorLine       cterm=none      ctermfg=none        ctermbg=234

    " syntax highlighting
    hi MatchParen       cterm=none      ctermfg=255         ctermbg=242
    hi Comment          cterm=none      ctermfg=240         ctermbg=none
    hi Constant         cterm=bold      ctermfg=24          ctermbg=none
    hi Special          cterm=bold      ctermfg=172         ctermbg=none
    hi Identifier       cterm=bold      ctermfg=252         ctermbg=none
    hi Statement        cterm=bold      ctermfg=178         ctermbg=none
    hi PreProc          cterm=bold      ctermfg=24          ctermbg=none
    hi Type             cterm=bold      ctermfg=255         ctermbg=none
    hi Underlined       cterm=underline ctermfg=none        ctermbg=none
    hi Ignore           cterm=none      ctermfg=232         ctermbg=none
    hi Error            cterm=bold      ctermfg=255         ctermbg=196
    hi Todo             cterm=bold      ctermfg=232         ctermbg=226
    hi String           cterm=none      ctermfg=125         ctermbg=none
    hi Number           cterm=bold      ctermfg=255         ctermbg=none
    hi Function         cterm=bold      ctermfg=255         ctermbg=none
    hi Conditional      cterm=bold      ctermfg=214         ctermbg=none
    hi Operator         cterm=bold      ctermfg=214         ctermbg=none
    hi Keyword          cterm=bold      ctermfg=214         ctermbg=none
    hi Delimiter        cterm=bold      ctermfg=255         ctermbg=none
    hi Normal           cterm=none      ctermfg=none        ctermbg=none
    hi Cursor           cterm=reverse   ctermfg=none        ctermbg=none

elseif(&t_Co == 88)
    hi SpecialKey       cterm=none      ctermfg=22          ctermbg=none
    hi NonText          cterm=none      ctermfg=16          ctermbg=none
    hi Directory        cterm=bold      ctermfg=19          ctermbg=none
    hi ErrorMsg         cterm=bold      ctermfg=64          ctermbg=none
    hi IncSearch        cterm=underline ctermfg=28          ctermbg=none
    hi Search           cterm=none      ctermfg=16          ctermbg=28
    hi MoreMsg          cterm=bold      ctermfg=84          ctermbg=none
    hi ModeMsg          cterm=bold      ctermfg=88          ctermbg=none
    hi LineNr           cterm=none      ctermfg=80          ctermbg=none
    hi Question         cterm=bold      ctermfg=28          ctermbg=none
    hi StatusLine       cterm=bold      ctermfg=88          ctermbg=81
    hi StatusLineNC     cterm=none      ctermfg=16          ctermbg=81
    hi VertSplit        cterm=none      ctermfg=81          ctermbg=81
    hi Title            cterm=bold      ctermfg=22          ctermbg=none
    hi Visual           cterm=reverse   ctermfg=none        ctermbg=none
    "hi VisualNOS
    hi WarningMsg       cterm=bold      ctermfg=68          ctermbg=none
    hi WildMenu         cterm=underline ctermfg=28          ctermbg=none
    hi Folded           cterm=none      ctermfg=85          ctermbg=none
    hi FoldColumn       cterm=none      ctermfg=85          ctermbg=none
    "hi DiffAdd
    "hi DiffChange
    "hi DiffDelete
    "hi DiffText
    "hi SignColumn
    "hi SpellBad
    "hi SpellCap
    "hi SpellRare
    "hi SpellLocal
    hi Pmenu            cterm=none      ctermfg=81          ctermbg=none
    hi PmenuSel         cterm=bold      ctermfg=22          ctermbg=none
    hi PmenuSbar        cterm=none      ctermfg=81          ctermbg=81
    hi PmenuThumb       cterm=none      ctermfg=162         ctermbg=81
    hi TabLine          cterm=underline ctermfg=81          ctermbg=none
    hi TabLineSel       cterm=bold      ctermfg=88          ctermbg=none
    hi TabLineFill      cterm=underline ctermfg=81          ctermbg=none
    hi CursorColumn     cterm=none      ctermfg=88          ctermbg=82
    hi CursorLine       cterm=none      ctermfg=88          ctermbg=82

    " syntax highlighting
    hi MatchParen       cterm=none      ctermfg=88          ctermbg=82
    hi Comment          cterm=none      ctermfg=80          ctermbg=none
    hi Constant         cterm=bold      ctermfg=22          ctermbg=none
    hi Special          cterm=bold      ctermfg=68          ctermbg=none
    hi Identifier       cterm=bold      ctermfg=88          ctermbg=none
    hi Statement        cterm=bold      ctermfg=76          ctermbg=none
    hi PreProc          cterm=bold      ctermfg=22          ctermbg=none
    hi Type             cterm=bold      ctermfg=88          ctermbg=none
    hi Underlined       cterm=underline ctermfg=none        ctermbg=none
    hi Ignore           cterm=none      ctermfg=16          ctermbg=none
    hi Error            cterm=bold      ctermfg=88          ctermbg=64
    hi Todo             cterm=bold      ctermfg=16          ctermbg=72
    hi String           cterm=none      ctermfg=22          ctermbg=none
    hi Number           cterm=bold      ctermfg=88          ctermbg=none
    hi Function         cterm=bold      ctermfg=88          ctermbg=none
    hi Conditional      cterm=bold      ctermfg=72          ctermbg=none
    hi Operator         cterm=bold      ctermfg=72          ctermbg=none
    hi Keyword          cterm=bold      ctermfg=72          ctermbg=none
    hi Delimiter        cterm=bold      ctermfg=88          ctermbg=none
    hi Normal           cterm=none      ctermfg=none        ctermbg=none
    hi Cursor           cterm=reverse   ctermfg=none        ctermbg=none

else
    hi SpecialKey       cterm=none      ctermfg=cyan        ctermbg=none
    hi NonText          cterm=none      ctermfg=black       ctermbg=none
    hi Directory        cterm=bold      ctermfg=darkblue    ctermbg=none
    hi ErrorMsg         cterm=bold      ctermfg=darkred     ctermbg=none
    hi IncSearch        cterm=underline ctermfg=none        ctermbg=none
    hi Search           cterm=none      ctermfg=black       ctermbg=green
    hi MoreMsg          cterm=bold      ctermfg=grey        ctermbg=none
    hi ModeMsg          cterm=bold      ctermfg=white       ctermbg=none
    hi LineNr           cterm=none      ctermfg=darkgrey    ctermbg=none
    hi Question         cterm=bold      ctermfg=green       ctermbg=none
    hi StatusLine       cterm=bold      ctermfg=white       ctermbg=darkgrey
    hi StatusLineNC     cterm=none      ctermfg=grey        ctermbg=darkgrey
    hi VertSplit        cterm=none      ctermfg=darkgrey    ctermbg=darkgrey
    hi Title            cterm=bold      ctermfg=darkyellow  ctermbg=none
    hi Visual           cterm=reverse   ctermfg=none        ctermbg=none
    "hi VisualNOS
    hi WarningMsg       cterm=bold      ctermfg=darkyellow  ctermbg=none
    hi WildMenu         cterm=underline ctermfg=green       ctermbg=none
    hi Folded           cterm=none      ctermfg=grey        ctermbg=none
    "hi FoldColumn
    "hi DiffAdd
    "hi DiffChange
    "hi DiffDelete
    "hi DiffText
    "hi SignColumn
    "hi SpellBad
    "hi SpellCap
    "hi SpellRare
    "hi SpellLocal
    hi Pmenu            cterm=none      ctermfg=darkgrey    ctermbg=none
    hi PmenuSel         cterm=none      ctermfg=brown       ctermbg=none
    hi PmenuSbar        cterm=none      ctermfg=black       ctermbg=white
    hi PmenuThumb       cterm=none      ctermfg=grey        ctermbg=white
    hi TabLine          cterm=underline ctermfg=grey        ctermbg=none
    hi TabLineSel       cterm=bold      ctermfg=white       ctermbg=none
    hi TabLineFill      cterm=underline ctermfg=grey        ctermbg=none
    hi CursorColumn     cterm=none      ctermfg=white       ctermbg=grey
    hi CursorLine       cterm=none      ctermfg=white       ctermbg=grey

    " syntax highlighting
    hi MatchParen       cterm=none      ctermfg=white       ctermbg=darkgrey
    hi Comment          cterm=none      ctermfg=darkgrey    ctermbg=none
    hi Constant         cterm=bold      ctermfg=darkcyan    ctermbg=none
    hi Special          cterm=bold      ctermfg=darkgrey    ctermbg=none
    hi Identifier       cterm=bold      ctermfg=white       ctermbg=none
    hi Statement        cterm=bold      ctermfg=darkyellow  ctermbg=none
    hi PreProc          cterm=bold      ctermfg=darkcyan    ctermbg=none
    hi Type             cterm=bold      ctermfg=white       ctermbg=none
    hi Underlined       cterm=underline ctermfg=none        ctermbg=none
    hi Ignore           cterm=none      ctermfg=black       ctermbg=none
    hi Error            cterm=bold      ctermfg=white       ctermbg=red
    hi Todo             cterm=bold      ctermfg=black       ctermbg=yellow
    hi String           cterm=none      ctermfg=magenta     ctermbg=none
    hi Number           cterm=bold      ctermfg=white       ctermbg=none
    hi Function         cterm=bold      ctermfg=white       ctermbg=none
    hi Conditional      cterm=bold      ctermfg=yellow      ctermbg=none
    hi Operator         cterm=bold      ctermfg=darkyellow  ctermbg=none
    hi Keyword          cterm=bold      ctermfg=darkyellow  ctermbg=none
    hi Delimiter        cterm=bold      ctermfg=yellow      ctermbg=none
    hi Normal           cterm=none      ctermfg=none        ctermbg=none
    hi Cursor           cterm=reverse   ctermfg=none        ctermbg=none
endif

" Python
hi link pythonBuiltin Identifier
hi link pythonStatement Keyword
hi link pythonPreCondit Keyword
hi link pythonException Type
hi link pythonSync PreProc

" PHP
hi link phpKeyword Keyword
hi link phpStatement Keyword
hi link phpVarSelector Keyword

" :so $VIMRUNTIME/syntax/hitest.vim
" vim: tw=0 ts=4 sw=4

