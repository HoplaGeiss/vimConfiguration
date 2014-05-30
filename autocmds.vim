if has("autocmd")
  augroup MyAutoCommands
    " Clear the auto command group so we don't define it multiple times.
    autocmd! 
    autocmd VimEnter * set vb t_vb= "disables the visual and audio bell. 
    au FocusLost * silent! wa
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " When editing a file, always jump to the last cursor position.
    autocmd BufReadPost *
          \ if line("'\"") > 1 && line ("'\"") <= line("$") |
          \ exe "normal! g`\"" |
          \ endif

  augroup END
endif
