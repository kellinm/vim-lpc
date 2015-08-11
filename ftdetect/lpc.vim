au BufNewFile,BufRead *.c			call s:FTlpc()

func! s:FTlpc()
  let lnum = 1
  while lnum <= 500
    if getline(lnum) =~# '^\(//\|inherit\|private\|protected\|nosave\|string\|object\|mapping\|mixed\)'
      set filetype=lpc
      return
    endif
    let lnum = lnum + 1
  endwhile
  setf c
endfunc
