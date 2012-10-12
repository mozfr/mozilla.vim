" Vim syntax file
" Language:    HTML5
" Maintainer:  Arno Renevier
" Contributor: Fabien Cazenave
" Last Change: 2012-04-07

" Put this file in ~/.vim/after/syntax/

" HTML 5 tag names
syn keyword htmlTagName contained article aside audio canvas command datalist
syn keyword htmlTagName contained details figcaption figure footer header
syn keyword htmlTagName contained hgroup keygen mark meter nav output progress
syn keyword htmlTagName contained rp rt ruby section source summary time track
syn keyword htmlTagName contained video wbr

" HTML 5 arg names
syn keyword htmlArg contained async autocomplete autofocus autoplay challenge
syn keyword htmlArg contained command controls crossorigin default dirname
syn keyword htmlArg contained formaction formenctype formmethod formnovalidate
syn keyword htmlArg contained formtarget high icon keytype kind list loop max
syn keyword htmlArg contained maxlength mediagroup min muted novalidate open
syn keyword htmlArg contained optimum pattern placeholder poster preload
syn keyword htmlArg contained radiogroup required reversed sandbox scoped
syn keyword htmlArg contained seamless sizes srcdoc srclang step translate
syn keyword htmlArg contained typemustmatch


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
"| WAI-ARIA States and Properties
"|----------------------------------------------------------------------------
"| http://www.w3.org/TR/rdfa-syntax/#a_xhtmlrdfa_dtd
"| http://github.com/othree/html5-syntax.vim
"|

syn keyword htmlArg contained about typeof property resource content datatype rel rev

