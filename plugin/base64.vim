
nnoremap <leader>b :call base64#n('encode')<cr>
nnoremap <leader>B :call base64#n('decode')<cr>

vnoremap <leader>b :<c-u>call base64#v('encode')<cr>
vnoremap <leader>B :<c-u>call base64#v('decode')<cr>
