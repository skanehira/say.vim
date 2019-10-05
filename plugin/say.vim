" say
" Author: skanehira
" License: MIT

if exists('g:loaded_say')
  finish
endif
let g:loaded_say = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=? -range Say call say#say(<line1>, <line2>, <f-args>)

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
