" Vim syntax file
" Language:    HTML5
" Maintainer:  Arno Renevier
" Contributor: Fabien Cazenave
" Last Change: 2012-10-15
" Extends:     /usr/share/vim/vimcurrent/syntax/html.vim
"              http://www.fleiner.com/vim/syntax/html.vim

" HTML 5 Tag Names
syn keyword htmlTagName contained article aside audio canvas command datalist
syn keyword htmlTagName contained details figcaption figure footer header
syn keyword htmlTagName contained hgroup keygen mark meter nav output progress
syn keyword htmlTagName contained rp rt ruby section source summary time track
syn keyword htmlTagName contained video wbr

"|
"| HTML Attribute Names
"|----------------------------------------------------------------------------
"|

" we have to reset htmlArg in order to support data-* properly
syn clear htmlArg

" HTML 3 Attributes
syn keyword htmlArg contained action align alink alt archive background bgcolor
syn keyword htmlArg contained border bordercolor cellpadding cellspacing checked
syn keyword htmlArg contained class clear code codebase color cols colspan
syn keyword htmlArg contained content coords enctype face gutter height hspace
syn keyword htmlArg contained id link lowsrc marginheight marginwidth maxlength
syn keyword htmlArg contained method name prompt rel rev rows rowspan scrolling
syn keyword htmlArg contained selected shape size src start target text type url
syn keyword htmlArg contained usemap ismap valign value vlink vspace width wrap
syn match   htmlArg contained "\<\(http-equiv\|href\|title\)="me=e-1

" HTML 4 Attributes
syn match   htmlArg contained "\<\(accept-charset\|label\)\>"
syn keyword htmlArg contained abbr accept accesskey axis char charoff charset
syn keyword htmlArg contained cite classid codetype compact datetime declare
syn keyword htmlArg contained defer dir disabled for frame frameborder noresize
syn keyword htmlArg contained pagex pagey above below headers hreflang lang
syn keyword htmlArg contained language longdesc left top visibility clip id
syn keyword htmlArg contained noshade multiple nohref nowrap object profile
syn keyword htmlArg contained readonly rules scheme scope span standby style
syn keyword htmlArg contained summary tabindex valuetype version
syn match   htmlArg contained "\<z-index\>"

" HTML 5 Attributes
syn keyword htmlArg contained async autocomplete autofocus autoplay challenge
syn keyword htmlArg contained command controls crossorigin default dirname
syn keyword htmlArg contained formaction formenctype formmethod formnovalidate
syn keyword htmlArg contained formtarget high icon keytype kind list loop max
syn keyword htmlArg contained maxlength mediagroup min muted novalidate open
syn keyword htmlArg contained optimum pattern placeholder poster preload
syn keyword htmlArg contained radiogroup required reversed sandbox scoped
syn keyword htmlArg contained seamless sizes srcdoc srclang step translate
syn keyword htmlArg contained typemustmatch
syn match   htmlArg contained "\<data-[a-z][a-z\-0-9]*\>"

"|
"| WAI-ARIA States and Properties
"|----------------------------------------------------------------------------
"| http://www.w3.org/TR/wai-aria/states_and_properties
"| http://github.com/othree/html5-syntax.vim
"|

syn keyword htmlArg contained role

" Global States and Properties
syn match htmlArg contained "\<aria-\(atomic\|busy\|controls\|describedby\)\>"
syn match htmlArg contained "\<aria-\(disabled\|dropeffect\|flowto\|grabbed\)\>"
syn match htmlArg contained "\<aria-\(haspopup\|hidden\|invalid\|label\)\>"
syn match htmlArg contained "\<aria-\(labelledby\|live\|owns\|relevant\)\>"

" Widget Attributes
syn match htmlArg contained "\<aria-\(autocomplete\|checked\|expanded\)\>"
syn match htmlArg contained "\<aria-\(level\|multiline\|multiselectable\|orientation\)\>"
syn match htmlArg contained "\<aria-\(pressed\|readonly\|required\|selected\)\>"
syn match htmlArg contained "\<aria-\(sort\|valuemax\|valuemin\|valuenow\|valuetext\|\)\>"

" Relationship Attributes
syn match htmlArg contained "\<aria-\(activedescendant\|posinset\|setsize\|\)\>"


"|
"| RDFa Properties
"|----------------------------------------------------------------------------
"| http://www.w3.org/TR/rdfa-syntax/#a_xhtmlrdfa_dtd
"| http://github.com/othree/html5-syntax.vim
"|

syn keyword htmlArg contained about typeof property resource content datatype rel rev

