function! g:fileheader#ToggleFileheader()
    if exists(g:fileheader#comment_string)
        echomsg "Plugin doesn't support current file type: " . &ft
        return 
    endif
    if getline(1) == g:fileheader#comment_string . '#########################################################################'
        execute "normal gg6dd"
    else
        call append(0, g:fileheader#comment_string . '#########################################################################')
        call append(1, g:fileheader#comment_string . ' File Name: ' . expand('%:t'))
        call append(2, g:fileheader#comment_string . ' Author: ' . $USERNAME)
        call append(3, g:fileheader#comment_string . ' Date: ' . strftime("%y/%m/%d"))
        call append(4, g:fileheader#comment_string . '#########################################################################')
        call append(5, '')
    endif    
endfunction