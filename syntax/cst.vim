" Vim syntax file
" Language:     cst
" Maintainer:   Thomas R. Kimpton <tkimpton@gooberdude.com>
" URL:          http://www.gooberdude.com/~tkimpton/vim/syntax/cst.vim
" Last Change:  5/14/2003
" Remark:       Used to test color schemes: edit your color scheme file, and
" to see what each color assignment does, set the color scheme to your color
" scheme then type the command ':setf cst'. As you continue to make changes
" save your changes, and switch to another color scheme and back to your own
" to see changes.

" Quit when a syntax file was already loaded
if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  " we define it here so that included files can test for it
  let main_syntax='cst'
endif

" don't use standard HiLink, it will not work with included syntax files
if version < 508
  command! -nargs=+ CSTHiLink hi link <args>
else
  command! -nargs=+ CSTHiLink hi def link <args>
endif

syntax case ignore

" match definitions
syn match CSTSpecialKey       /\<SpecialKey\>/
syn match CSTNonText          /\<NonText\>/
syn match CSTDirectory        /\<Directory\>/
syn match CSTErrorMsg         /\<ErrorMsg\>/
syn match CSTIncSearch        /\<IncSearch\>/
syn match CSTSearch           /\<Search\>/
syn match CSTMoreMsg          /\<MoreMsg\>/
syn match CSTModeMsg          /\<ModeMsg\>/
syn match CSTLineNr           /\<LineNr\>/
syn match CSTQuestion         /\<Question\>/
syn match CSTStatusLineNC     /\<StatusLineNC\>/
syn match CSTStatusLine       /\<StatusLine\>/
syn match CSTVertSplit        /\<VertSplit\>/
syn match CSTTitle            /\<Title\>/
syn match CSTVisualNOS        /\<VisualNOS\>/
syn match CSTVisual           /\<Visual\>/
syn match CSTWarningMsg       /\<WarningMsg\>/
syn match CSTWildMenu         /\<WildMenu\>/
syn match CSTFolded           /\<Folded\>/
syn match CSTFoldColumn       /\<FoldColumn\>/
syn match CSTDiffAdd          /\<DiffAdd\>/
syn match CSTDiffChange       /\<DiffChange\>/
syn match CSTDiffDelete       /\<DiffDelete\>/
syn match CSTDiffText         /\<DiffText\>/
syn match CSTCursor           /\<Cursor\>/
syn match CSTComment          /\<Comment\>/
syn match CSTConstant         /\<Constant\>/
syn match CSTString           /\<String\>/
syn match CSTCharacter        /\<Character\>/
syn match CSTNumber           /\<Number\>/
syn match CSTBoolean          /\<Boolean\>/
syn match CSTFloat            /\<Float\>/
syn match CSTIdentifier       /\<Identifier\>/
syn match CSTFunction         /\<Function\>/
syn match CSTStatement        /\<Statement\>/
syn match CSTConditional      /\<Conditional\>/
syn match CSTRepeat           /\<Repeat\>/
syn match CSTLabel            /\<Label\>/
syn match CSTOperator         /\<Operator\>/
syn match CSTKeyword          /\<Keyword\>/
syn match CSTException        /\<Exception\>/
syn match CSTPreProc          /\<PreProc\>/
syn match CSTInclude          /\<Include\>/
syn match CSTDefine           /\<Define\>/
syn match CSTMacro            /\<Macro\>/
syn match CSTPreCondit        /\<PreCondit\>/
syn match CSTType             /\<Type\>/
syn match CSTStorageClass     /\<StorageClass\>/
syn match CSTStructure        /\<Structure\>/
syn match CSTTypeDef          /\<TypeDef\>/
syn match CSTSpecial          /\<Special\>/
syn match CSTSpecialChar      /\<SpecialChar\>/
syn match CSTTag              /\<Tag\>/
syn match CSTDelimiter        /\<Delimiter\>/
syn match CSTSpecialComment   /\<SpecialComment\>/
syn match CSTDebug            /\<Debug\>/
syn match CSTUnderlined       /\<Underlined\>/
syn match CSTIgnore           /\<Ignore\>/
syn match CSTError            /\<Error\>/
syn match CSTTodo             /\<Todo\>/

" The default highlighting.
if version >= 508 || !exists("did_CST_syn_inits")
  if version < 508
    let did_CST_syn_inits = 1
  endif
  CSTHiLink CSTSpecialKey      SpecialKey
  CSTHiLink CSTNonText         NonText
  CSTHiLink CSTDirectory       Directory
  CSTHiLink CSTErrorMsg        ErrorMsg
  CSTHiLink CSTIncSearch       IncSearch
  CSTHiLink CSTSearch          Search
  CSTHiLink CSTMoreMsg         MoreMsg
  CSTHiLink CSTModeMsg         ModeMsg
  CSTHiLink CSTLineNr          LineNr
  CSTHiLink CSTQuestion        Question
  CSTHiLink CSTStatusLineNC    StatusLineNC
  CSTHiLink CSTStatusLine      StatusLine
  CSTHiLink CSTVertSplit       VertSplit
  CSTHiLink CSTTitle           Title
  CSTHiLink CSTVisualNOS       VisualNOS
  CSTHiLink CSTVisual          Visual
  CSTHiLink CSTWarningMsg      WarningMsg
  CSTHiLink CSTWildMenu        WildMenu
  CSTHiLink CSTFolded          Folded
  CSTHiLink CSTFoldColumn      FoldColumn
  CSTHiLink CSTDiffAdd         DiffAdd
  CSTHiLink CSTDiffChange      DiffChange
  CSTHiLink CSTDiffDelete      DiffDelete
  CSTHiLink CSTDiffText        DiffText
  CSTHiLink CSTCursor          Cursor
  CSTHiLink CSTComment         Comment
  CSTHiLink CSTConstant        Constant
  CSTHiLink CSTString          String
  CSTHiLink CSTCharacter       Character
  CSTHiLink CSTNumber          Number
  CSTHiLink CSTBoolean         Boolean
  CSTHiLink CSTFloat           Float
  CSTHiLink CSTIdentifier      Identifier
  CSTHiLink CSTFunction        Function
  CSTHiLink CSTStatement       Statement
  CSTHiLink CSTConditional     Conditional
  CSTHiLink CSTRepeat          Repeat
  CSTHiLink CSTLabel           Label
  CSTHiLink CSTOperator        Operator
  CSTHiLink CSTKeyword         Keyword
  CSTHiLink CSTException       Exception
  CSTHiLink CSTPreProc         PreProc
  CSTHiLink CSTInclude         Include
  CSTHiLink CSTDefine          Define
  CSTHiLink CSTMacro           Macro
  CSTHiLink CSTPreCondit       PreCondit
  CSTHiLink CSTType            Type
  CSTHiLink CSTStorageClass    StorageClass
  CSTHiLink CSTStructure       Structure
  CSTHiLink CSTTypedef         Typedef
  CSTHiLink CSTSpecial         Special
  CSTHiLink CSTSpecialChar     SpecialChar
  CSTHiLink CSTTag             Tag
  CSTHiLink CSTDelimiter       Delimiter
  CSTHiLink CSTSpecialComment  SpecialComment
  CSTHiLink CSTDebug           Debug
  CSTHiLink CSTUnderlined      Underlined
  CSTHiLink CSTIgnore          Ignore
  CSTHiLink CSTError           Error
  CSTHiLink CSTTodo            Todo
endif

delcommand CSTHiLink

let b:current_syntax = "cst"

if main_syntax == 'cst'
  unlet main_syntax
endif


