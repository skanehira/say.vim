" say
" Author: skanehira
" License: MIT

let s:save_cpo = &cpo
set cpo&vim

function! s:err_cb(ch, msg) abort
	echoerr a:msg
endfunction

function! say#say(start, end, ...) abort
	let text = join(getline(a:start, a:end), "\n")
	if a:0 != 0
		let text = a:1
	endif

    let voice = get(g:, 'say_voice', 'Alex')
	let cmd = ['say', '-v', voice, text]

	call job_start(cmd, {
				\ 'err_cb': function('s:err_cb'),
				\ })
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
