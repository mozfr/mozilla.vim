" Vim syntax file
" Language:    CSS3
" Maintainer:  Arno Renevier
" Contributor: Fabien Cazenave
" Last Change: 2012-10-12

" HTML 5 tag names
syn keyword cssTagName article aside audio canvas command datalist
syn keyword cssTagName details figcaption figure footer header
syn keyword cssTagName hgroup keygen mark meter nav output progress
syn keyword cssTagName rp rt ruby section source summary time track
syn keyword cssTagName video wbr

syn match   cssSelectorOp  "[~]"
syn match   cssSelectorOp2 "[*$^]"

syn match   cssValueAngle      contained "[-+]\=\d\+\(\.\d*\)\=turn"
syn match   cssValueLength     contained "[-+]\=\d\+\(\.\d*\)\=\(gd\|rem\|vw\|vh\|vm\|ch\)" 

syn keyword cssColorProp       contained opacity
syn match   cssColorProp       contained "\<background\(-\(repeat\|clip\|image\|origin\|size\)\)\=\>"

syn match   cssColorAttr       contained "\<repeat\(-[xy]\)\=\>"
syn match   cssColorAttr       contained "\<\(linear\|radial\)-gradient\>"

syn match   cssTextProp        "\<text-\(justify\|overflow\)\>"
syn match   cssTextAttr        contained "\<\(inter-\(word\|ideograph\|cluster\)\|distribute\|kashida\)\>"
syn keyword cssTextAttr        contained start end ellipsis

syn match   cssBoxProp         contained "\<border-\(\(\(top\|right\|bottom\|left\)-\)\=radius\)\=\>"
syn match   cssBoxProp         contained "\<box-sizing\>"
syn match   cssBoxAttr         contained "\<\(border\|content\|padding\)-box\>"

syn match   cssColumnProp      contained "\<column-\(width\|gap\|rule\(-\(width\|style\|color\)\)\=\)\>"

syn match   cssTransitionProp  contained "\<transition\(-\(property\|duration\|timing-function\|delay\)\)\=\>"
syn match   cssTransitionAttr  contained "\<linear\|ease\|ease\(-\(in-out\|in\|out\)\)\|cubic-bezier\>"

syn keyword cssTransformProp   transform
syn keyword cssTransformAttr   translateX translateY translate scale

" XXX 'pointer-events' is not working, wtf?
"syn keyword cssUIProp          contained pointer-events
syn match   cssUIProp          contained "\<pointer-events\>"
syn keyword cssUIAttr          contained visiblePainted visibleFill visibleStroke visible painted fill stroke all

syn match   cssRenderProp      contained "\<\(white-space-collapse\|list-item\|run-in\|inline-table\|word-break\|\(text\|word\)-wrap\)\>"
syn match   cssRenderAttr      contained "\<table-row-group\>"
syn keyword cssRenderAttr      contained pre

syn match   cssPseudoClass     ":\S*" contains=cssPseudoClassId,cssUIPseudoClassId,cssUnicodeEscape
syn match   cssPseudoClass     ":[A-Za-z0-9_-]*" contains=cssPseudoClassId,cssUIPseudoClassId,cssUnicodeEscape
syn keyword cssPseudoClassId   contained target
syn match   cssPseudoClassId   contained "\<\(last\|only\)\(-\(child\|of-type\)\)\=\>"
syn region  cssPseudoClassId   start="\<nth-\(last-\)\=\(child\|of-type\)\>(" end=")" oneline
syn region  cssPseudoClassNot  matchgroup=cssPseudoClassId start=":not(" end=")" oneline

syn keyword cssUIPseudoClassId default valid invalid required optional read-only read-write \:value :choices :repeat-item :repeat-index
syn match   cssUIPseudoClassId "\<\(in\|out-of\)-range\>"
syn match   cssUIPseudoClassId "\<read-\(only\|write\)\>"
syn match   cssUIPseudoClassId "\:\(value\|choices\|repeat-\(item\|index\)\)\>"

syn region  cssFunction        contained matchgroup=cssFunctionName start="calc(" end=")" oneline keepend

if version >= 508
  command -nargs=+ HiLink hi def link <args>
  HiLink cssColumnProp      StorageClass
  HiLink cssTransformProp   StorageClass
  HiLink cssTransitionProp  StorageClass
  HiLink cssUIPseudoClassId PreProc
  HiLink cssTransformAttr   Type
  HiLink cssTransitionAttr  Type
  delcommand HiLink
endif

