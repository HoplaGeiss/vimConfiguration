" ---------------
" vundle
" ---------------

command! ReloadVundle source ~/.vim/vundle.vim
function PluginReloadAndRun(command)
  :ReloadVundle
  execute a:command
endfunction

nnoremap <Leader>i :call PluginReloadAndRun("PluginInstall")<CR>
nnoremap <Leader>r :call PluginReloadAndRun("PluginClean")<CR>

" --------
" nerdTree
" --------

map \ :NERDTreeToggle<CR>
nnoremap <Leader>, <C-W><C-W>
inoremap <Leader>, <Esc><C-W><C-W>

" -----------------
" vim-nerdtree-tabs
" -----------------

let g:nerdtree_tabs_open_on_gui_startup=1

" ---------------
" tcomment_vim
" ---------------

nnoremap <silent><leader>v :TComment<CR>
vnoremap <silent><leader>v :TComment<CR>
nnoremap <silent><leader>c :TCommentBlock<CR>
vnoremap <silent><leader>c :TCommentBlock<CR>


" ---------------
" vim-markdown
" ---------------

let g:vim_markdown_folding_disabled = 1

" ---------------
" indenthtml
" ---------------

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" -----------
" vim-airline
" -----------

let g:airline_theme = 'jellybeans'
let g:airline_powerline_fonts = 0 " Allows symbol in the powerline
let g:airline_detect_modified = 0 " Change the color of the powerline when a modification is unsaved
let g:airline#extensions#whitespace#enabled = 0

" Changes the sections content
let g:airline_section_b = '%{substitute(getcwd(), ".*\/", "", "g")} '
let g:airline_section_c = '%t'
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = ''

" -------------
" YouCompleteMe
" -------------

let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" let g:ycm_filetype_specific_completion_to_disable = {
"     \ 'ruby' : 1,
"     \ 'javascript' : 1,
"     \}


