" until i figure it out
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = "!"
augroup mySyntastic
au!
au FileType tex let b:syntastic_mode = "passive"
augroup END

