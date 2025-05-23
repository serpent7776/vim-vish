" Vim color file
" Name:    vish.vim
" Author:  Serpent7776
" Version: 0.6.5
" based on tshell.vim
" Main color in Gvim:DarkGolden(#ddaa66),you can change it to your favourite color.

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name="vish"

if has('gui_running')
	hi Normal         gui=NONE   guifg=#e0e0e0   guibg=#090909

	hi IncSearch      gui=NONE   guifg=#000000   guibg=#ddaa66
	hi Search         gui=NONE   guifg=#000000   guibg=#ddaa66
	hi ErrorMsg       gui=NONE   guifg=#000000   guibg=#ddaa66
	hi WarningMsg     gui=NONE   guifg=#000000   guibg=#ddaa66
	hi ModeMsg        gui=NONE   guifg=#e1e1e1   guibg=NONE
	hi MoreMsg        gui=NONE   guifg=#e1e1e1   guibg=NONE
	hi Question       gui=NONE   guifg=#e1e1e1   guibg=NONE

	hi StatusLine     gui=BOLD   guifg=#e1e1e1   guibg=#333333
	hi User1          gui=BOLD   guifg=#999999   guibg=#333333
	hi User2          gui=BOLD   guifg=#FFFF60   guibg=#333333
	hi StatusLineNC   gui=NONE   guifg=#999999   guibg=#333333
	hi VertSplit      gui=NONE   guifg=#e1e1e1   guibg=#333333

	hi WildMenu       gui=BOLD   guifg=#000000   guibg=#ddaa66

	hi DiffText       gui=REVERSE   guifg=NONE   guibg=#20592d
	hi DiffChange     gui=NONE   guifg=NONE      guibg=#3b0f66
	hi DiffDelete     gui=NONE   guifg=#e1e1e1   guibg=#802b00
	hi DiffAdd        gui=NONE   guifg=#e1e1e1   guibg=#306d30

	hi Cursor         gui=NONE   guifg=#000000   guibg=#827d7d

	hi Folded         gui=NONE   guifg=#ddaa66   guibg=#000000
	hi FoldColumn     gui=NONE   guifg=#e1e1e1   guibg=#191919

	hi Directory      gui=NONE   guifg=#8bff95   guibg=NONE
	hi LineNr         gui=NONE   guifg=#666666   guibg=#000000
	hi CursorLineNr   gui=NONE   guifg=#ffff00   guibg=#000000
	hi NonText        gui=NONE   guifg=#bbbbbb   guibg=NONE
	hi SpecialKey     gui=NONE   guifg=#7f7f7f   guibg=NONE
	hi Whitespace     gui=NONE   guifg=#7f7f7f   guibg=NONE
	hi Title          gui=NONE   guifg=#E1462D   guibg=NONE
	hi Visual         gui=NONE   guifg=NONE      guibg=#404040

	hi Comment        gui=NONE   guifg=#777777   guibg=NONE
	hi Constant       gui=NONE   guifg=#FA9D9D   guibg=NONE
	hi Boolean        gui=NONE   guifg=#00ff00   guibg=NONE
	hi String         gui=NONE   guifg=#F050C8   guibg=NONE
	hi Error          gui=NONE   guifg=#FFFFFF   guibg=#990000
	hi Identifier     gui=NONE   guifg=#4cbbd1   guibg=NONE
	hi Ignore         gui=NONE   guifg=#555555
	hi Number         gui=NONE   guifg=#ddaa66   guibg=NONE
	hi PreProc        gui=NONE   guifg=#E1462D   guibg=NONE

	hi Special        gui=NONE   guifg=#ffcd8b   guibg=NONE

	hi Statement      gui=bold   guifg=#FFFF60   guibg=NONE
	hi Todo           gui=NONE   guifg=#e1e1e1   guibg=#863132
	hi Type           gui=NONE   guifg=#c476f1   guibg=NONE
	hi Underlined     gui=UNDERLINE   guifg=#e1e1e1   guibg=NONE

	hi VisualNOS      gui=NONE   guifg=#e1e1e1   guibg=#000000

	hi CursorLine     gui=NONE   guifg=NONE      guibg=#333333
	hi CursorColumn   gui=NONE   guifg=NONE      guibg=#333333

	hi lispList       gui=NONE   guifg=#555555

	if v:version >= 700
		hi Pmenu        gui=NONE   guifg=#e1e1e1   guibg=#333333
		hi PMenuSel     gui=BOLD   guifg=#000000   guibg=#aa66ff
		hi PmenuSbar    gui=NONE   guifg=#e1e1e1   guibg=#666666
		hi PmenuThumb   gui=NONE   guifg=#e1e1e1   guibg=#cc33ff

		hi SpellBad     gui=undercurl guisp=#cc6666
		hi SpellRare    gui=undercurl guisp=#cc66cc
		hi SpellLocal   gui=undercurl guisp=#cccc66
		hi SpellCap     gui=undercurl guisp=#66cccc

		hi MatchParen   gui=NONE      guifg=#ffffff   guibg=#005500
	endif

	" ft=diff
	hi diffAdded gui=bold guifg=Green
	hi diffRemoved gui=bold guifg=Red
	hi diffFile guifg=Cyan

	" git-gutter:
	hi SignColumn     gui=NONE   guifg=#bbbbbb   guibg=#333333

	" ale:
	hi ALEError       gui=NONE   guifg=#FFFFFF   guibg=#990000
	hi ALEWarning     gui=NONE   guifg=#FFFFFF   guibg=#000099

	" logcat:
	hi LogF_color ctermfg=black guifg=#FFFFFF ctermbg=red guibg=#CC0000
	hi LogE_color ctermfg=red guifg=#ff0000
	hi LogW_color ctermfg=brown guifg=#ff8800
	hi LogI_color ctermfg=grey guifg=#aaaaaa
	hi LogD_color ctermfg=darkcyan guifg=#00aaaa
	hi LogV_color ctermfg=gray guifg=#777777
else
"use the same color of evening in term
	hi Normal  term=standout ctermfg=grey guifg=grey75 ctermbg=black guibg=black
	hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
	hi IncSearch term=reverse cterm=reverse guifg=black guibg=orange
	hi ModeMsg term=bold cterm=bold gui=bold
	hi StatusLine term=reverse,bold cterm=reverse,bold gui=reverse,bold
	hi StatusLineNC term=reverse cterm=reverse gui=reverse
	hi TabLine term=reverse cterm=bold,underline ctermfg=grey ctermbg=black gui=bold,underline guifg=grey60 guibg=black
	hi TabLineSel term=bold,reverse cterm=bold ctermfg=white ctermbg=blue gui=bold guifg=white guibg=Blue
	hi TabLineFill term=bold,reverse cterm=bold,underline ctermfg=grey ctermbg=black gui=bold,underline guifg=grey60 guibg=black
	hi VertSplit term=reverse cterm=reverse gui=reverse
	hi Visual term=reverse
	hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
	hi Cursor guibg=Green guifg=Black
	hi lCursor guibg=Cyan guifg=Black
	hi Directory term=bold ctermfg=LightCyan guifg=Cyan
	hi LineNr ctermfg=darkgrey guifg=grey
	hi CursorLineNr term=underline ctermfg=yellow guifg=Yellow
	hi MoreMsg term=bold ctermfg=LightGreen gui=bold guifg=SeaGreen
	hi NonText term=bold ctermfg=LightBlue gui=bold guifg=LightBlue
	hi Question term=standout ctermfg=LightGreen gui=bold guifg=Green
	hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
	hi SpecialKey term=bold ctermfg=darkgrey guifg=grey
	hi Whitespace term=bold ctermfg=darkgrey guifg=grey
	hi Title term=bold ctermfg=LightMagenta gui=bold guifg=Magenta
	hi WarningMsg term=standout ctermfg=LightRed guifg=Red
	hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
	hi Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
	hi FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
	hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
	hi DiffChange term=bold ctermbg=DarkMagenta guibg=DarkMagenta
	hi DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=Blue guibg=DarkCyan
	hi DiffAdd term=bold ctermbg=DarkGreen guibg=DarkGreen
	hi CursorColumn ctermbg=DarkBlue
	hi CursorLine term=underline cterm=underline guibg=grey10
	hi ColorColumn ctermbg=blue guibg=DarkBlue
	hi MatchParen ctermbg=blue guibg=DarkBlue

	hi Pmenu cterm=none ctermfg=Grey ctermbg=DarkGrey  guifg=grey70  guibg=grey10
	hi PMenuSel cterm=bold ctermfg=LightMagenta ctermbg=DarkMagenta  guifg=black   guibg=Violet
	hi PmenuSbar cterm=none ctermbg=Grey  guibg=grey
	hi PmenuThumb cterm=none ctermbg=LightMagenta  guibg=DarkViolet

	" ft=diff
	hi diffAdded cterm=bold ctermfg=Green
	hi diffRemoved cterm=bold ctermfg=Red
	hi diffFile ctermfg=Cyan

	" Groups for syntax highlighting
	hi Constant term=underline ctermfg=Magenta guifg=#ffa0a0
	hi String   ctermfg=Magenta guifg=Magenta
	hi Error ctermbg=DarkRed
	hi Special term=bold ctermfg=LightRed guifg=Orange guibg=grey5
	if &t_Co > 8
		hi Statement term=bold cterm=bold ctermfg=Yellow guifg=#ffff60 gui=bold
	endif
	hi Ignore ctermfg=DarkGrey guifg=grey20

	hi ALEError ctermbg=DarkRed
	hi ALEWarning ctermbg=DarkBlue
endif
