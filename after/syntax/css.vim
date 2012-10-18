" Vim syntax file
" Language:    CSS3
" Maintainer:  Arno Renevier
" Contributor: Fabien Cazenave
" Last Change: 2012-10-18
" Extends:     $VIMRUNTIME/syntax/css.vim
"              http://www.fleiner.com/vim/syntax/css.vim


"|
"| HTML Tag Names
"|------------------------------------------------------------------------------
"| copied from ./html.vim
"|

syn clear cssTagName

" deprecated elements
"syn keyword cssTagName applet basefont center dir font isindex
"syn keyword cssTagName marquee s strike u

" these elements are valid in HTML4 but deprecated in HTML5
"syn keyword cssTagName acronym big frame frameset noframes tt

" HTML4: supported elements
syn keyword cssTagName a abbr address area base bdo blockquote br button caption
syn keyword cssTagName cite code col colgroup dd del dfn div dl dt fieldset form
syn keyword cssTagName hr html iframe img input ins kbd label legend li link map
syn keyword cssTagName meta noscript object ol optgroup option p param pre q
syn keyword cssTagName samp script select small span style sub sup table tbody
syn keyword cssTagName td textarea tfoot th thead tr ul var
syn match cssTagName "\<\(b\|i\|h[1-6]\|em\|strong\|head\|body\|title\)\>"

" HTML5: supported elements
syn keyword cssTagName article aside audio canvas command datalist details embed
syn keyword cssTagName figcaption figure footer header hgroup keygen mark menu
syn keyword cssTagName meter nav output progress rp rt ruby section source
syn keyword cssTagName summary time track video wbr


"|
"| CSS3 Selectors
"|------------------------------------------------------------------------------
"| TODO: use the list of HTML attributes for the attribute selector
"|

syn match cssSelectorOp "[~]"
syn match cssSelectorOp2 "[*$^]"


"|
"| CSS3 Properties and Attributes
"|------------------------------------------------------------------------------
"|

syn match cssValueAngle contained "[-+]\=\d\+\(\.\d*\)\=turn"
syn match cssValueLength contained "[-+]\=\d\+\(\.\d*\)\=\(gd\|rem\|vw\|vh\|vm\|ch\)" 

syn keyword cssColorProp contained opacity
syn match cssColorProp contained "\<background\(-\(repeat\|clip\|image\|origin\|size\)\)\=\>"

syn match cssColorAttr contained "\<repeat\(-[xy]\)\=\>"
syn match cssColorAttr contained "\<\(linear\|radial\)-gradient\>"

syn match cssTextProp "\<text-\(justify\|overflow\)\>"
syn match cssTextAttr contained "\<\(inter-\(word\|ideograph\|cluster\)\|distribute\|kashida\)\>"
syn keyword cssTextAttr contained start end ellipsis

syn match cssBoxProp contained "\<border-\(\(\(top\|right\|bottom\|left\)-\)\=radius\)\=\>"
syn match cssBoxProp contained "\<box-\(shadow\|sizing\)\>"
syn match cssBoxAttr contained "\<\(border\|content\|padding\)-box\>"
" FIXME: 'left'/'right' can't be both a property and a value...
syn keyword cssBoxAttr contained left right

syn match cssColumnProp contained "\<column-\(width\|gap\|rule\(-\(width\|style\|color\)\)\=\)\>"

syn match cssTransitionProp contained "\<transition\(-\(property\|duration\|timing-function\|delay\)\)\=\>"
syn match cssTransitionAttr contained "\<linear\|ease\(-\(in-out\|in\|out\)\)\|ease\|cubic-bezier\>"

" FIXME: 'transform' can't be both a property and a value...
syn keyword cssTransitionAttr transform
syn keyword cssTransformProp transform
"syn keyword cssTransformAttr translateX translateY translate scale

" XXX 'pointer-events' is not working because a 'pointer' rule is already defined in $VIMRUNTIME/syntax/css.vim
"syn keyword cssUIProp contained pointer-events
syn match cssUIProp contained "\<pointer-events\>"
syn keyword cssUIAttr contained visiblePainted visibleFill visibleStroke visible painted fill stroke all

syn match cssRenderProp contained "\<\(white-space-collapse\|list-item\|run-in\|inline-table\|word-break\|\(text\|word\)-wrap\)\>"
syn match cssRenderAttr contained "\<table-row-group\>"
" XXX 'pre-wrap' is not working because a 'pre' rule is already defined in $VIMRUNTIME/syntax/css.vim
syn match cssRenderAttr contained "\<pre-wrap\|pre\|break-word\>"

syn match cssPseudoClass ":\S*" contains=cssPseudoClassId,cssUIPseudoClassId,cssUnicodeEscape
syn match cssPseudoClass ":[A-Za-z0-9_-]*" contains=cssPseudoClassId,cssUIPseudoClassId,cssUnicodeEscape
syn keyword cssPseudoClassId contained target checked
syn match cssPseudoClassId contained "\<\(last\|only\)\(-\(child\|of-type\)\)\=\>"
syn region cssPseudoClassId start="\<nth-\(last-\)\=\(child\|of-type\)\>(" end=")" oneline
syn region cssPseudoClassNot matchgroup=cssPseudoClassId start=":not(" end=")" oneline contains=cssPseudoClass,cssClassName,cssIdentifier

syn keyword cssUIPseudoClassId default valid invalid required optional read-only read-write \:value :choices :repeat-item :repeat-index
syn match cssUIPseudoClassId "\<\(in\|out-of\)-range\>"
syn match cssUIPseudoClassId "\<read-\(only\|write\)\>"
syn match cssUIPseudoClassId "\:\(value\|choices\|repeat-\(item\|index\)\|empty\)\>"

" CSS Function: extend rgb|clip|attr|counter|rect
syn region cssFunction contained matchgroup=cssFunctionName start="\<\(calc\|rgba\|scale\|translate\([XY]\?\)\)\s*(" end=")" oneline keepend


"|
"| Media Queries
"|------------------------------------------------------------------------------
"| http://www.bookofzeus.com/articles/html5-and-css3-syntax-color-in-vim/
"|

syn region cssMediaType start='(' end=')' contains=css.*Attr,css.*Prop,cssComment,cssValue.*,cssColor,cssURL,cssImportant,cssError,cssStringQ,cssStringQQ,cssFunction,cssUnicodeEscape nextgroup=cssMediaComma,cssMediaAnd,cssMediaBlock skipwhite skipnl
syn match cssMediaAnd "and" nextgroup=cssMediaType skipwhite skipnl
syn clear cssMediaBlock
syn region cssMediaBlock contained transparent matchgroup=cssBraces start='{' end='}' contains=cssTagName,cssSelectorOp,cssAttributeSelector,cssIdentifier,cssError,cssDefinition,cssPseudoClass,cssComment,cssUnicodeEscape,cssClassName,cssURL


"|
"| Highlight Rules
"|------------------------------------------------------------------------------
"|

hi def link cssColumnProp      StorageClass
hi def link cssTransformProp   StorageClass
hi def link cssTransitionProp  StorageClass
hi def link cssUIPseudoClassId PreProc
hi def link cssMediaAnd        PreProc
hi def link cssTransformAttr   Type
hi def link cssTransitionAttr  Type

