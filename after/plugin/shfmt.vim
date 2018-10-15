if exists('g:loaded_shfmt_wrapper')
  finish
endif
let g:loaded_shfmt_wrapper = 1

function! SHFmt()
  let save_pos = getpos(".")
  execute "%!shfmt -s"
  call setpos(".", save_pos)
endfunction
