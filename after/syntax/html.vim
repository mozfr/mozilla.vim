" Vim syntax file
" Language:    HTML5
" Contributor: Arno Renevier
" Contributor: Fabien Cazenave
" Last Change: 2012-10-16
" Extends:     /usr/share/vim/vimcurrent/syntax/html.vim
"              http://www.fleiner.com/vim/syntax/html.vim


"|
"| HTML Elements
"|------------------------------------------------------------------------------
"| http://www.w3.org/TR/html4/index/elements
"| http://www.w3.org/TR/html5-diff/#new-elements
"|

syn clear htmlTagName

" deprecated elements
"syn keyword htmlTagName contained applet basefont center dir font isindex
"syn keyword htmlTagName contained marquee s strike u

" HTML4: supported elements
syn keyword htmlTagName contained a abbr acronym address area base bdo big
syn keyword htmlTagName contained blockquote br button caption cite code col
syn keyword htmlTagName contained colgroup dd del dfn div dl dt fieldset form
syn keyword htmlTagName contained frame frameset hr html iframe img input ins
syn keyword htmlTagName contained kbd label legend li link map meta noframes
syn keyword htmlTagName contained noscript object ol optgroup option p param pre
syn keyword htmlTagName contained q samp script select small span style sub sup
syn keyword htmlTagName contained table tbody td textarea tfoot th thead tr tt
syn keyword htmlTagName contained ul var
syn match htmlTagName contained "\<\(b\|i\|h[1-6]\|em\|strong\|head\|body\|title\)\>"

" HTML5: supported elements
syn keyword htmlTagName contained article aside audio canvas command datalist
syn keyword htmlTagName contained details embed figcaption figure footer header
syn keyword htmlTagName contained hgroup keygen mark menu meter nav output
syn keyword htmlTagName contained progress rp rt ruby section source summary
syn keyword htmlTagName contained time track video wbr


"|
"| HTML Attributes
"|------------------------------------------------------------------------------
"| http://www.w3.org/TR/html4/index/attributes
"| http://www.w3.org/TR/html5-diff/#new-attributes
"|

syn clear htmlArg

" deprecated attributes
"syn keyword htmlArg contained alink background bgcolor clear code color compact
"syn keyword htmlArg contained face hspace language link noshade nowrap object
"syn keyword htmlArg contained prompt start text version vlink vspace

" HTML4: supported attributes
syn keyword htmlArg contained abbr accesskey action align alt archive axis
syn keyword htmlArg contained border cellpadding cellspacing char charoff
syn keyword htmlArg contained charset checked cite class classid codebase
syn keyword htmlArg contained codetype cols colspan content coords datetime
syn keyword htmlArg contained declare defer dir disabled enctype for frame
syn keyword htmlArg contained frameborder headers height href hreflang id ismap
syn keyword htmlArg contained label lang longdesc marginheight marginwidth
syn keyword htmlArg contained maxlength media method multiple name nohref
syn keyword htmlArg contained noresize profile readonly rel rev rows rowspan
syn keyword htmlArg contained rules scheme scope scrolling selected shape size
syn keyword htmlArg contained span src standby style summary tabindex target
syn keyword htmlArg contained title type usemap valign value valuetype width
syn match htmlArg contained "<\accept-charset\|accept\>"
syn match htmlArg contained "\<\(http-equiv\|href\|title\)="me=e-1

" HTML4: event handling
syn keyword htmlArg contained onblur onchange onclick ondblclick onfocus
syn keyword htmlArg contained onkeydown onkeypress onkeyup onload onmousedown
syn keyword htmlArg contained onmousemove onmouseout onmouseover onmouseup
syn keyword htmlArg contained onreset onselect onsubmit onunload

" HTML5: supported attributes
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

" note: `data' is an HTML4 attribute, `data-*' is an HTML5 attribute collection
syn match htmlArg contained "\<\(data-[a-z][a-z\-0-9]*\|data\)\>"


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

