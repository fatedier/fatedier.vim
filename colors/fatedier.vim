" Vim color file
" Name:         fatedier
" Maintainer:   fatedier <fatedier@gmail.com>
" Last Change:  2025 Mar 30
" Version:      1.0
" Description:  Simulates the classic 8-color Vim default theme (light background).

" Set the background type (light or dark)
" Change to 'dark' if your terminal has a dark background and you want
" Vim to potentially adjust some colors accordingly (though this theme is simple).
set background=light

" Clear all previous highlight settings
highlight clear

" Reset syntax highlighting if it was enabled
if exists("syntax_on")
    syntax reset
endif

" Set the name of the colorscheme
let g:colors_name = "fatedier"

" Define the highlighting groups using only 8 terminal colors (0-7) and attributes
" Note: The actual appearance depends HEAVILY on your terminal's color settings for
"       Black, DarkRed, DarkGreen, Brown, DarkBlue, DarkMagenta, DarkCyan, LightGray.
"       We use color names for clarity; Vim maps them to numbers 0-7.
"       'cterm=bold' might display as a brighter color on many terminals.

" === Basic Text ===
" Normal text: Black text on LightGray background (typical default)
" highlight Normal ctermfg=Black ctermbg=Black cterm=NONE

" === Syntax Highlighting ===
" Comments: Often Blue or Cyan
highlight Comment cterm=NONE ctermfg=DarkBlue ctermbg=NONE

" Constants (Strings, Numbers, Booleans): Often Red or Magenta
highlight Constant cterm=NONE ctermfg=DarkRed cterm=NONE

" Identifiers (Variables, Function names): Usually Normal text color
highlight Identifier cterm=NONE ctermfg=DarkCyan ctermbg=NONE

" Function names: Sometimes bold or a different color, but often just Normal
highlight Function cterm=NONE ctermfg=DarkCyan ctermbg=NONE

" Statements (Keywords like if, else, for, while, return): Often Brown/Yellow or Magenta, sometimes bold
highlight Statement	cterm=NONE ctermfg=DarkYellow ctermbg=NONE

" Preprocessor directives (#include, #define): Often Magenta
highlight PreProc cterm=NONE ctermfg=DarkMagenta cterm=NONE

" Types (int, char, void, struct): Often Green
highlight Type cterm=NONE ctermfg=DarkGreen cterm=NONE

" Special characters (e.g., escape sequences in strings): Often Cyan or Magenta
highlight Special cterm=NONE ctermfg=DarkMagenta ctermbg=NONE

" Underlined text (not commonly used by default syntax)
highlight Underlined cterm=underline ctermfg=DarkMagenta

" Ignore (used for hidden characters like end-of-line spaces if listchars is set)
highlight Ignore cterm=NONE ctermfg=White ctermbg=NONE

" Errors: Often standout, like White text on Red background
highlight Error	cterm=NONE ctermfg=White ctermbg=Red

" TODO items within comments: Often standout, maybe Yellow/Brown text, bold
highlight Todo cterm=NONE ctermfg=Black ctermbg=Yellow

" === Vim Interface ===
" Line numbers: Often a less prominent color like Brown or Cyan
highlight LineNr cterm=NONE ctermfg=DarkYellow ctermbg=NONE

" Search results: Often highlighted with a color like Yellow/Brown background
highlight Search ctermfg=Black ctermbg=DarkYellow

highlight PmenuSel ctermbg=Yellow ctermfg=black
highlight Pmenu ctermfg=Black ctermbg=Magenta

highlight Folded cterm=Bold ctermfg=Blue ctermbg=White
if &diff
    highlight DiffAdd cterm=bold ctermfg=Red ctermbg=Black
    highlight DiffDelete cterm=bold ctermfg=Black ctermbg=Black
    highlight DiffChange cterm=bold ctermfg=Green ctermbg=Black
    highlight DiffText cterm=bold ctermfg=Yellow ctermbg=Black
endif
