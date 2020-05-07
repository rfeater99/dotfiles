" .vmirc.logl
" サンプル
"
" let g:ale_fix_on_save = 0
" let g:lsp_diagnostics_enabled = 0
" let g:lsp_diagnostics_echo_cursor = 0
"
" Load settings for each location.
augroup vimrc-local
  autocmd!
  autocmd BufNewFile,BufReadPost * call s:vimrc_local(expand('<afile>:p:h'))
augroup END

function! s:vimrc_local(loc)
  let files = findfile('.vimrc.local', escape(a:loc, ' ') . ';', -1)
  for i in reverse(filter(files, 'filereadable(v:val)'))
    source `=i`
  endfor
endfunction

