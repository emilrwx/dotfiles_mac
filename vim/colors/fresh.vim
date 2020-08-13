:set background=dark

:highlight clear

if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif

let colors_name = "fresh"

:hi VertSplit gui=none cterm=reverse
:hi Folded ctermfg=grey ctermbg=darkgrey
:hi FoldColumn ctermfg=4 ctermbg=7
:hi IncSearch cterm=none ctermfg=yellow ctermbg=green
:hi ModeMsg cterm=none ctermfg=brown
:hi MoreMsg ctermfg=darkgreen
:hi NonText cterm=bold ctermfg=blue
:hi Question ctermfg=green
:hi Search cterm=none ctermfg=grey ctermbg=blue
:hi SpecialKey ctermfg=darkgreen
:hi StatusLine gui=none cterm=bold,reverse
:hi StatusLineNC gui=none cterm=reverse
:hi Title cterm=bold ctermfg=yellow
:hi Statement ctermfg=red
:hi Visual cterm=reverse
:hi WarningMsg ctermfg=1
:hi String ctermfg=green
:hi Comment ctermfg=grey
:hi Constant ctermfg=green
:hi Special ctermfg=red
:hi markdownLinkDelimiter ctermfg=red
:hi markdownLinkTextDelimiter ctermfg=red
:hi mkdHeading ctermfg=red
:hi Identifier ctermfg=red
:hi Include ctermfg=red
:hi PreProc ctermfg=red
:hi Operator ctermfg=Red
:hi Define ctermfg=yellow
:hi Type ctermfg=2
:hi Function ctermfg=brown
:hi Structure ctermfg=green
:hi LineNr ctermfg=3
:hi Ignore cterm=bold ctermfg=7
:hi Directory ctermfg=darkcyan
:hi ErrorMsg cterm=bold cterm=bold ctermfg=7 ctermbg=1
:hi VisualNOS cterm=bold,underline
:hi WildMenu ctermfg=0 ctermbg=3
:hi DiffAdd ctermbg=4
:hi DiffChange ctermbg=5
:hi DiffDelete cterm=bold ctermfg=4 ctermbg=6
:hi DiffText cterm=bold ctermbg=1
:hi Underlined cterm=none ctermfg=magenta
:hi Error cterm=bold ctermfg=7 ctermbg=1
:hi SpellErrors cterm=bold ctermfg=7 ctermbg=1
