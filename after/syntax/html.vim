" Vim syntax file
" Language:    HTML5
" Maintainer:  Arno Renevier
" Contributor: Fabien Cazenave
" Last Change: 2012-10-15
" Extends:     /usr/share/vim/vimcurrent/syntax/html.vim
"              http://www.fleiner.com/vim/syntax/html.vim


" we have to reset `htmlArg' in order to support data-* properly
syn clear htmlArg


"|
"| HTML4 Attributes
"|------------------------------------------------------------------------------
"| http://www.w3.org/TR/html4/index/attributes
"|

" HTML4 Attributes
syn keyword htmlArg contained abbr accesskey action align alt archive axis
syn keyword htmlArg contained border cellpadding cellspacing char charoff
syn keyword htmlArg contained charset checked cite class classid codebase
syn keyword htmlArg contained codetype cols colspan content coords data datetime
syn keyword htmlArg contained declare defer dir disabled enctype for frame
syn keyword htmlArg contained frameborder headers height href hreflang id ismap
syn keyword htmlArg contained label lang longdesc marginheight marginwidth
syn keyword htmlArg contained maxlength media method multiple name nohref
syn keyword htmlArg contained noresize profile readonly rel rev rows rowspan
syn keyword htmlArg contained rules scheme scope scrolling selected shape size
syn keyword htmlArg contained span src standby style summary tabindex target
syn keyword htmlArg contained title type usemap valign value valuetype width
syn match   htmlArg contained "<\accept-charset\|accept\>"
syn match   htmlArg contained "<\http-equiv\>"

" HTML4 Attributes -- events
syn keyword htmlArg contained onblur onchange onclick ondblclick onfocus
syn keyword htmlArg contained onkeydown onkeypress onkeyup onload onmousedown
syn keyword htmlArg contained onmousemove onmouseout onmouseover onmouseup
syn keyword htmlArg contained onreset onselect onsubmit onunload

" HTML4 Attributes -- deprecated
syn keyword htmlArg contained alink background bgcolor clear code color compact
syn keyword htmlArg contained face hspace language link noshade nowrap object
syn keyword htmlArg contained prompt start text version vlink vspace


"|
"| HTML5 Attributes
"|------------------------------------------------------------------------------
"| http://www.w3.org/TR/html5-diff/#new-attributes
"|

syn keyword htmlArg contained async autocomplete autofocus autoplay challenge
syn keyword htmlArg contained command contenteditable contextmenu controls
syn keyword htmlArg contained crossorigin default dirname draggable dropzone
syn keyword htmlArg contained form formaction formenctype formmethod
syn keyword htmlArg contained formnovalidate formtarget hidden high icon keytype
syn keyword htmlArg contained kind list loop manifest max maxlength mediagroup
syn keyword htmlArg contained min muted novalidate open optimum pattern
syn keyword htmlArg contained placeholder poster preload radiogroup required
syn keyword htmlArg contained reversed reversed sandbox scoped seamless sizes
syn keyword htmlArg contained spellcheck srcdoc srclang step translate
syn keyword htmlArg contained typemustmatch wrap
syn match   htmlArg contained "\<data-[a-z][a-z\-0-9]*\>"


"|
"| Microdata and RDFa Properties
"|------------------------------------------------------------------------------
"| http://www.w3.org/TR/microdata
"| http://www.w3.org/TR/rdfa-syntax/#a_xhtmlrdfa_dtd
"|

syn keyword htmlArg contained itemid itemprop itemref itemscope itemtype
syn keyword htmlArg contained about content datatype property rel resource rev
syn keyword htmlArg contained typeof


"|
"| WAI-ARIA States and Properties
"|------------------------------------------------------------------------------
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
"| HTML5 Tags
"|------------------------------------------------------------------------------
"| http://www.w3.org/TR/html5-diff/#new-elements
"|

syn keyword htmlTagName contained article aside audio canvas command datalist
syn keyword htmlTagName contained details embed figcaption figure footer header
syn keyword htmlTagName contained hgroup keygen mark meter nav output progress
syn keyword htmlTagName contained rp rt ruby section source summary time track
syn keyword htmlTagName contained video wbr

