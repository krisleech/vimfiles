" railscasts color scheme


" ********************************************************************************
" The following are the preferred 16 colors for your terminal
"           Colors      Bright Colors
" Black     #202020     #292929
" Red       #C72D2D     #B86329
" Green     #87B047     #519F50
" Yellow    #FFBE53     #BC9458
" Blue      #5883A0     #2C313F
" Magenta   #CC59B2     #606060
" Cyan      #ABA8E2     #D5D4FF
" White     #DAD4D2     #FFFFFF
" ********************************************************************************
"
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "railscasts-term"

" General colors
hi Normal               ctermfg=7           ctermbg=0           cterm=NONE
hi NonText              ctermfg=0           ctermbg=NONE        cterm=NONE

"hi Cursor               ctermfg=0           ctermbg=7           cterm=reverse
hi LineNr               ctermfg=13          ctermbg=8           cterm=NONE
hi VertSplit            ctermfg=13          ctermbg=NONE        cterm=NONE
hi StatusLine           ctermfg=7           ctermbg=8           cterm=NONE
hi StatusLineNC         ctermfg=13          ctermbg=8           cterm=NONE

hi Folded               ctermfg=13          ctermbg=NONE        cterm=NONE
hi Title                ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Visual               ctermfg=NONE        ctermbg=12          cterm=NONE
hi VisualNOS            ctermfg=16          ctermbg=12          cterm=NONE

hi SpecialKey           ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi WildMenu             ctermfg=black       ctermbg=yellow      cterm=NONE
hi PmenuSbar            ctermfg=black       ctermbg=white       cterm=NONE
"hi Ignore              ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi Error                ctermfg=NONE        ctermbg=1           cterm=NONE
hi ErrorMsg             ctermfg=NONE        ctermbg=1           cterm=NONE
hi WarningMsg           ctermfg=NONE        ctermbg=9          cterm=NONE

" Message displayed in lower left, such as --INSERT--
hi ModeMsg              ctermfg=4           ctermbg=NONE        cterm=NONE

if version >= 700 " Vim 7.x specific colors
  hi CursorLine         ctermfg=NONE        ctermbg=8           cterm=NONE
  hi CursorColumn       ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi ColorColumn        ctermfg=NONE        ctermbg=1           cterm=NONE
  hi TabLine            ctermfg=13          ctermbg=NONE        cterm=NONE
  hi TabLineFill        ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi TabLineSel         ctermfg=NONE        ctermbg=NONE        cterm=BOLD
  hi MatchParen         ctermfg=0           ctermbg=6           cterm=NONE
  hi Pmenu              ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi PmenuSel           ctermfg=black       ctermbg=yellow      cterm=NONE
  hi Search             ctermfg=NONE        ctermbg=NONE        cterm=underline
endif

" Syntax highlighting
hi Comment              ctermfg=13          ctermbg=NONE        cterm=NONE
hi String               ctermfg=2           ctermbg=NONE        cterm=NONE
hi Number               ctermfg=2           ctermbg=NONE        cterm=NONE

hi Keyword              ctermfg=9           ctermbg=NONE        cterm=NONE
hi PreProc              ctermfg=4           ctermbg=NONE        cterm=NONE

hi Todo                 ctermfg=5           ctermbg=NONE        cterm=bold
hi Constant             ctermfg=4           ctermbg=NONE        cterm=NONE

hi Identifier           ctermfg=4           ctermbg=NONE        cterm=NONE
hi Function             ctermfg=3           ctermbg=NONE        cterm=NONE
hi Class                ctermfg=15          ctermbg=NONE        cterm=bold
hi Type                 ctermfg=4           ctermbg=NONE        cterm=NONE

hi Special              ctermfg=5         ctermbg=NONE        cterm=NONE
hi Delimiter            ctermfg=7         ctermbg=NONE        cterm=NONE
hi Operator             ctermfg=9         ctermbg=NONE        cterm=NONE

hi Blue    ctermfg=4  cterm=none
hi Green   ctermfg=2  cterm=none
hi DarkGreen ctermfg=10 cterm=none
hi Grey    ctermfg=13 cterm=none
hi Orange  ctermfg=9  cterm=none
hi Red     ctermfg=1  cterm=none
hi White   ctermfg=15 cterm=none
hi Gold    ctermfg=3  cterm=none
hi Purple  ctermfg=6  cterm=none

hi link Character       Constant
hi link Conditional     Keyword
hi link Statement       Keyword
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
"hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special


" Special for Ruby
hi link rubyClass                   Orange     " class
hi link rubyDefine                  Orange     " def
hi link rubyFunction                Gold       " function_name
hi link rubyInstanceVariable        Purple     " @var
hi link rubyConditional             Orange     " if
hi link rubyInclude                 Orange     " include
hi link rubyKeyword                 Orange     " super, return
hi link rubyConstant                Normal     " Mongoid::Document
hi link rubyInterpolationDelimiter  DarkGreen  " #{}
hi link rubyRailsUserClass          White      " SomethingsController
hi link rubyRailsFilterMethod       Red        " before_filter
hi link rubyRailsRenderMethod       Red        " respond_to
hi link rubyRailsARClassMethod      Red        " attr_accessible
hi link rubyRailsARValidationMethod Normal     " validates

"" Special for HTML
hi link htmlTagName        Gold
hi link htmlSpecialTagName Gold
hi link htmlTag            Gold
hi link htmlEndTag         Gold
hi link htmlArg            Gold
hi link htmlLink           Normal
hi link javaScript         Normal

"" Special for PHP
hi link phpVarSelector  Purple
hi link phpIdentifier   Purple
hi link phpType         Red
hi link phpRepeat       Orange

"" Special for Coffeescript
hi link coffeeAssignSymbols White
hi link coffeeSpecialVar    Purple
hi link coffeeObjAssign     Gold

"" Special for Javascript
"hi link javaScriptNumber         Number
"hi link javaScriptPrototype      Identifier " prototype
"hi link javaScriptSource         Keyword " import export
"hi link javaScriptType           Identifier " const this undefined var void yield 
"hi link javaScriptOperator       Keyword " delete new in instanceof let typeof
"hi link javaScriptBoolean        Keyword " true false
"hi link javaScriptNull           Keyword " null
"hi link javaScriptConditional    Keyword " if else
"hi link javaScriptRepeat         Keyword " do while for
"hi link javaScriptBranch         Keyword " break continue switch case default return
"hi link javaScriptStatement      Keyword " try catch throw with finally
"hi link javaScriptGlobalObjects  Keyword " Array Boolean Date Function Infinity JavaArray JavaClass JavaObject JavaPackage Math Number NaN Object Packages RegExp String Undefined java netscape sun
"hi shCommandSub		ctermfg=white

"" Sepcial for CSS
hi link cssType                 Green
hi link cssIdentifier           Gold
hi link cssClassName            Blue
hi link cssTagName              Orange
hi link cssBraces               Normal
hi link cssColor                DarkGreen
hi link cssCommonAttr           Green
hi link cssTextAttr             Green
hi link cssFontAttr             Green
hi link cssBoxAttr              Green
hi link cssRenderAttr           Green
hi link cssUIAttr               Green
hi link cssPseudoClass          Orange
hi link cssPseudoClassId        Orange
hi link cssSelectorOp           Normal
hi link cssSelectorOp2          Normal
hi link cssMedia                Orange
hi link cssMediaType            Green
hi link cssBraces               White
hi link cssFontProp             White
hi link cssColorProp            White
hi link cssTextProp             White
hi link cssBoxProp              White
hi link cssRenderProp           White
hi link cssAuralProp            White
hi link cssRenderProp           White
hi link cssGeneratedContentProp White
hi link cssPagingProp           White
hi link cssTableProp            White
hi link cssUIProp               White
hi link cssFontDescriptorProp   White

"" Special for SASS
hi link sassVariable                Purple
hi link sassFunction                Red
hi link sassMixing                  Red
hi link sassMixin                   Red
hi link sassExtend                  Red
hi link sassFor                     Red
hi link sassInterpolationDelimiter  DarkGreen
hi link sassAmpersand               Normal
hi link sassId                      cssIdentifier
hi link sassClass                   cssClassName
hi link sassIdChar                  sassId
hi link sassClassChar               sassClass
hi link sassInclude                 Orange
