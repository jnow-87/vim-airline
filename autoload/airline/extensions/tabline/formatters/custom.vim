" MIT License. Copyright (c) 2013-2016 Bailey Ling.
" vim: et ts=2 sts=2 sw=2


let s:ntruncat = get(g:, "airline#extensions#tabline#formatter#custom#truncat_len", 3)
let s:truncat = get(g:, "airline#extensions#tabline#formatter#custom#truncat_sym", "‥")
let s:unnamed = get(g:, "airline#extensions#tabline#formatter#cutomst#unnamed", "⁇")


function! airline#extensions#tabline#formatters#custom#format(bufnr, buffers)
  let _ = ''

  let name = substitute(bufname(a:bufnr), '\\', '/', 'g')

  if !empty(name)
    let _ .= substitute(name, '\(\w\{' . s:ntruncat . '}\)[^/]\+/', '\1' . s:truncat . '/', 'g')
  else
    let _ .= "[" . s:unnamed . "]"
  endif

  if getbufvar(a:bufnr, '&modified') == 1
    let _ .= g:airline_symbols.modified
  endif

  return _
endfunction

