command! Tex call Tex()
function! Tex()
    w
    !latex %
    silent !evince %:r.pdf
endfunction