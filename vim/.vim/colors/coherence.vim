" coherence.vim - a coherent 16-color scheme for Vim and GVim
" --------------------------------------------------------------
" Author:   celery (no website)
" Version:  0.1.0
" --------------------------------------------------------------
" 	    NR-16 NR-8       COLOR         NAME     ~
" 	        0    0       Black
" 	        1    4    DarkBlue
" 	        2    2   DarkGreen
" 	        3    6    DarkCyan
" 	        4    1     DarkRed
" 	        5    5 DarkMagenta
" 	        6    3      Brown,   DarkYellow
" 	        7    7  LightGray,   LightGrey, Gray, Grey
" 	        8   0*   DarkGray,     DarkGrey
" 	        9   4*       Blue,    LightBlue
" 	       10   2*      Green,   LightGreen
" 	       11   6*       Cyan,    LightCyan
" 	       12   1*        Red,     LightRed
" 	       13   5*    Magenta, LightMagenta
" 	       14   3*     Yellow,  LightYellow
" 	       15   7*       White
"

" Scheme setup {{{
set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="coherence"

"}}}
" Vim UI {{{
hi Normal       ctermfg=7    ctermbg=NONE cterm=NONE      guifg=gray        guibg=black       gui=NONE
hi Cursor       ctermfg=7    ctermbg=7    cterm=NONE      guifg=gray        guibg=gray        gui=NONE
hi CursorLine   ctermfg=NONE ctermbg=0    cterm=BOLD      guifg=NONE        guibg=black       gui=BOLD
hi MatchParen   ctermfg=7    ctermbg=NONE cterm=UNDERLINE guifg=gray        guibg=NONE        gui=UNDERLINE
hi Pmenu        ctermfg=7    ctermbg=0    cterm=NONE      guifg=gray        guibg=black       gui=NONE
hi PmenuThumb   ctermfg=NONE ctermbg=7    cterm=NONE      guifg=NONE        guibg=gray        gui=NONE
hi PmenuSBar    ctermfg=NONE ctermbg=7    cterm=NONE      guifg=NONE        guibg=gray        gui=NONE
hi PmenuSel     ctermfg=0    ctermbg=5    cterm=NONE      guifg=black       guibg=darkmagenta gui=NONE
hi ColorColumn  ctermfg=NONE ctermbg=8    cterm=NONE      guifg=NONE        guibg=darkgray     gui=NONE
hi SpellBad     ctermfg=1    ctermbg=NONE cterm=UNDERLINE guifg=darkred     guibg=NONE        gui=UNDERLINE
hi SpellCap     ctermfg=1    ctermbg=NONE cterm=UNDERLINE guifg=darkred     guibg=NONE        gui=UNDERLINE
hi SpellRare    ctermfg=3    ctermbg=NONE cterm=UNDERLINE guifg=darkyellow  guibg=NONE        gui=UNDERLINE
hi SpellLocal   ctermfg=5    ctermbg=NONE cterm=UNDERLINE guifg=darkmagenta guibg=NONE        gui=UNDERLINE
hi NonText      ctermfg=7    ctermbg=NONE cterm=NONE      guifg=gray        guibg=NONE        gui=NONE
hi LineNr       ctermfg=8    ctermbg=NONE cterm=NONE      guifg=darkgray    guibg=NONE        gui=NONE
hi CursorLineNr ctermfg=3    ctermbg=NONE cterm=BOLD      guifg=darkyellow  guibg=NONE        gui=BOLD
hi Visual       ctermfg=0    ctermbg=8    cterm=NONE      guifg=black       guibg=darkgray    gui=NONE
hi IncSearch    ctermfg=0    ctermbg=2    cterm=NONE      guifg=black       guibg=darkgreen   gui=NONE
hi Search       ctermfg=0    ctermbg=7    cterm=NONE      guifg=black       guibg=gray        gui=NONE
hi StatusLine   ctermfg=7    ctermbg=0    cterm=NONE      guifg=gray        guibg=black       gui=UNDERLINE term=BOLD
hi StatusLineNC ctermfg=8    ctermbg=0    cterm=NONE      guifg=darkgray    guibg=black       gui=UNDERLINE term=BOLD
hi VertSplit    ctermfg=8    ctermbg=0    cterm=NONE      guifg=darkgray    guibg=black       gui=NONE
hi Split        ctermfg=8    ctermbg=0    cterm=NONE      guifg=darkgray    guibg=gray        gui=NONE
hi TabLine      ctermfg=7    ctermbg=0    cterm=NONE      guifg=gray        guibg=black       gui=NONE
hi TabLineSel   ctermfg=7    ctermbg=0    cterm=NONE      guifg=gray        guibg=black       gui=NONE
hi Folded       ctermfg=3    ctermbg=0    cterm=NONE      guifg=darkyellow  guibg=black       gui=NONE
hi Directory    ctermfg=blue ctermbg=NONE cterm=NONE      guifg=darkblue    guibg=NONE        gui=NONE
hi Title        ctermfg=3    ctermbg=NONE cterm=NONE      guifg=darkyellow  guibg=NONE        gui=NONE
hi ErrorMsg     ctermfg=7    ctermbg=1    cterm=NONE      guifg=gray        guibg=darkred     gui=NONE
hi DiffAdd      ctermfg=0    ctermbg=2    cterm=NONE      guifg=black       guibg=darkgreen   gui=NONE
hi DiffChange   ctermfg=0    ctermbg=3    cterm=NONE      guifg=black       guibg=darkyellow  gui=NONE
hi DiffDelete   ctermfg=0    ctermbg=1    cterm=NONE      guifg=black       guibg=darkred     gui=NONE
hi DiffText     ctermfg=0    ctermbg=3    cterm=BOLD      guifg=black       guibg=darkyellow  gui=BOLD
hi User1        ctermfg=7    ctermbg=5    cterm=NONE      guifg=gray        guibg=darkmagenta gui=NONE
hi User2        ctermfg=7    ctermbg=7    cterm=NONE      guifg=gray        guibg=gray        gui=NONE
hi User3        ctermfg=7    ctermbg=3    cterm=NONE      guifg=gray        guibg=darkyellow  gui=NONE
hi User4        ctermfg=7    ctermbg=0    cterm=NONE      guifg=gray        guibg=black       gui=NONE
hi User5        ctermfg=7    ctermbg=5    cterm=NONE      guifg=gray        guibg=darkmagenta gui=NONE
hi User6        ctermfg=7    ctermbg=6    cterm=NONE      guifg=gray        guibg=darkcyan    gui=NONE
hi User7        ctermfg=7    ctermbg=4    cterm=NONE      guifg=gray        guibg=darkblue    gui=NONE
hi User8        ctermfg=7    ctermbg=3    cterm=NONE      guifg=gray        guibg=darkyellow  gui=NONE
hi User9        ctermfg=7    ctermbg=7    cterm=NONE      guifg=gray        guibg=gray        gui=NONE

hi! link         CursorColumn CursorLine
hi! link         SignColumn   LineNr
hi! link         WildMenu     Visual
hi! link         FoldColumn   SignColumn
hi! link         WarningMsg   ErrorMsg
hi! link         MoreMsg      Title
hi! link         Question     MoreMsg
hi! link         ModeMsg      MoreMsg
hi! link         TabLineFill  StatusLineNC
hi! link         SpecialKey   NonText

"}}}
" Generic syntax {{{
hi Delimiter  ctermfg=7 ctermbg=NONE cterm=NONE           guifg=gray        guibg=NONE gui=NONE
hi Comment    ctermfg=8 ctermbg=NONE cterm=NONE           guifg=darkgray    guibg=NONE gui=NONE
hi underlined ctermfg=4 ctermbg=NONE cterm=UNDERLINE      guifg=darkblue    guibg=NONE gui=UNDERLINE
hi Type       ctermfg=4 ctermbg=NONE cterm=NONE           guifg=darkblue    guibg=NONE gui=NONE
hi String     ctermfg=1 ctermbg=NONE cterm=NONE           guifg=darkred     guibg=NONE gui=NONE
hi Keyword    ctermfg=2 ctermbg=NONE cterm=NONE           guifg=darkgreen   guibg=NONE gui=NONE
hi Todo       ctermfg=7 ctermbg=NONE cterm=BOLD,UNDERLINE guifg=gray        guibg=NONE gui=BOLD,UNDERLINE
hi Function   ctermfg=4 ctermbg=NONE cterm=NONE           guifg=darkblue    guibg=NONE gui=NONE
hi Identifier ctermfg=4 ctermbg=NONE cterm=NONE           guifg=darkblue    guibg=NONE gui=NONE
hi Statement  ctermfg=2 ctermbg=NONE cterm=BOLD           guifg=darkgreen   guibg=NONE gui=BOLD
hi Constant   ctermfg=5 ctermbg=NONE cterm=NONE           guifg=darkmagenta guibg=NONE gui=NONE
hi Number     ctermfg=6 ctermbg=NONE cterm=NONE           guifg=darkcyan    guibg=NONE gui=NONE
hi Boolean    ctermfg=4 ctermbg=NONE cterm=NONE           guifg=darkblue    guibg=NONE gui=NONE
hi Special    ctermfg=5 ctermbg=NONE cterm=NONE           guifg=darkmagenta guibg=NONE gui=NONE
hi Ignore     ctermfg=0 ctermbg=NONE cterm=NONE           guifg=black       guibg=NONE gui=NONE

hi! link       Operator        Delimiter
hi! link       PreProc         Delimiter
hi! link       Error           ErrorMsg

"}}}
" HTML {{{
hi htmlTagName              ctermfg=2
hi htmlTag                  ctermfg=2
hi htmlArg                  ctermfg=10
hi htmlH1                   cterm=BOLD
hi htmlBOLD                 cterm=BOLD
hi htmlItalic               cterm=UNDERLINE
hi htmlUNDERLINE            cterm=UNDERLINE
hi htmlBOLDItalic           cterm=BOLD,UNDERLINE
hi htmlBOLDUNDERLINE        cterm=BOLD,UNDERLINE
hi htmlUNDERLINEItalic      cterm=UNDERLINE
hi htmlBOLDUNDERLINEItalic  cterm=BOLD,UNDERLINE
hi! link htmlLink           UNDERLINEd
hi! link htmlEndTag         htmlTag

"}}}
" XML {{{
hi xmlTagName       ctermfg=4
hi xmlTag           ctermfg=12
hi! link xmlString  xmlTagName
hi! link xmlAttrib  xmlTag
hi! link xmlEndTag  xmlTag
hi! link xmlEqual   xmlTag

"}}}
" JavaScript {{{
hi! link javaScript        Normal
hi! link javaScriptBraces  Delimiter

"}}}
" Markdown {{{
hi! link markdownHeadingRule        NonText
hi! link markdownHeadingDelimiter   markdownHeadingRule
hi! link markdownLinkDelimiter      Delimiter
hi! link markdownURLDelimiter       Delimiter
hi! link markdownCodeDelimiter      NonText
hi! link markdownLinkTextDelimiter  markdownLinkDelimiter
hi! link markdownUrl                markdownLinkText
hi! link markdownAutomaticLink      markdownLinkText
hi! link markdownCodeBlock          String
hi markdownCode                     cterm=BOLD
hi markdownBOLD                     cterm=BOLD
hi markdownItalic                   cterm=UNDERLINE

"}}}
" Git {{{
hi gitCommitBranch               ctermfg=3
hi gitCommitSelectedType         ctermfg=10
hi gitCommitSelectedFile         ctermfg=2
hi gitCommitUnmergedType         ctermfg=lightred
hi gitCommitUnmergedFile         ctermfg=1
hi! link gitCommitFile           Directory
hi! link gitCommitUntrackedFile  gitCommitUnmergedFile
hi! link gitCommitDiscardedType  gitCommitUnmergedType
hi! link gitCommitDiscardedFile  gitCommitUnmergedFile

"}}}
" Vim {{{
hi! link vimSetSep    Delimiter
hi! link vimContinue  Delimiter
hi! link vimHiAttrib  Constant

"}}}
" NERDTree {{{
hi! link NERDTreeHelp      Comment
hi! link NERDTreeExecFile  String

"}}}
" Vimwiki {{{
hi! link VimwikiHeaderChar  markdownHeadingDelimiter
hi! link VimwikiList        markdownListMarker
hi! link VimwikiCode        markdownCode
hi! link VimwikiCodeChar    markdownCodeDelimiter

"}}}
" Help {{{
hi! link helpExample         String
hi! link helpHeadline        Title
hi! link helpSectionDelim    Comment
hi! link helpHyperTextEntry  Statement
hi! link helpHyperTextJump   UNDERLINEd
hi! link helpURL             UNDERLINEd

"}}}
" Shell {{{
hi shDerefSimple     ctermfg=11
hi! link shDerefVar  shDerefSimple

"}}}
" Syntastic {{{
hi SyntasticWarningSign  ctermfg=3   ctermbg=NONE
hi SyntasticErrorSign    ctermfg=1   ctermbg=NONE

"}}}
" Netrw {{{
hi netrwExe       ctermfg=lightred
hi netrwClassify  ctermfg=8  cterm=BOLD

"}}}

" vim: fdm=marker:sw=2:sts=2:et
