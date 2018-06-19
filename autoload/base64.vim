
function! base64#strip(value)
  return substitute(a:value, '\n$', '', 'g')
endfunction

function! base64#encode(input)
  return base64#strip(system('base64', a:input))
endfunction

function! base64#decode(input)
  return system('base64 -D', a:input)
endfunction

function! base64#n(fn)
  let l:paste = &paste
  set paste
  execute "normal! ciW\<c-r>=base64#" . a:fn . "(@\")\<cr>"
  let &paste = l:paste
endfunction

function! base64#v(fn)
  let l:paste = &paste
  set paste
  execute "normal! `<v`>c\<c-r>=base64#" . a:fn . "(@\")\<cr>"
  let &paste = l:paste
endfunction
