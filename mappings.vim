let mapleader=','

" -----
" Saves
" -----

map ; :

" quick changes saves 
map <C-s> <Esc>:w<CR>
imap <C-s> <Esc>:w<CR>
map <C-w> <Esc>:x<CR>
imap <C-w> <Esc>:x<CR>
map <C-q> <Esc>:q<CR>
imap <C-q> <Esc>:q<CR>

" -----------
" Navigation 
" -----------

map <C-Left> <Esc>:tabprev<CR>
map <C-Right> <Esc>:tabnext<CR>
map <C-n> <Esc>:tabnew<CR>

" Easier shortcut for end of line and begenning of line
noremap H 0
noremap L $

" Easier esc
imap jj <ESC>

" ----
" COPY
" ----

nnoremap tt y$$
nnoremap yy 0y$$

" ------
" DELETE
" ------

nnoremap ss d$

" ---
" CUT
" ---

nnoremap cc Vx
nnoremap xx v$bex

" -----
" PASTE
" -----

nnoremap p p$
nnoremap P <Esc>o<Esc>p$ 

" ---------
" SELECTION
" ---------

nnoremap vv ggVG

"----------
" Formating
"----------

vmap Q gq
nmap Q gqap

" Format the entire file
nnoremap <leader>fef mx=ggG='x

" -------------------
" Change of behaviors
" -------------------

" Create newlines without entering insert mode
nnoremap <CR> o<Esc>
        
" Create a space without entering insert mode
nnoremap <Space> i<Space><Esc>l
  
" Make back space delete caracters.
nnoremap <BS> dh

" REDO
nnoremap U <C-r>

" -------
" Search 
" -------

" Highlight search word under cursor without jumping to next
nnoremap <leader>h *<C-O>

" search mode
noremap <silent><leader>/ :nohls<CR>

" Clears highlight
nmap <silent><leader>j :silent noh<CR>

" --------
" Spelling
" --------

" Toggle spelling mode with 
nnoremap <silent> <leader>s :set spell!<CR>

" ------------
" New features
" ------------

"Surround the commented line with lines.
nnoremap <silent> <leader>m :normal V"+ywv$r-"+ppHwv$r-<Esc>o<Esc>

" Opens the todo file
nnoremap <Leader>; :tabe ~/.vim/TODO<CR>
inoremap <Leader>; <Esc>:tabe ~/.vim/TODO<CR>

" -----
" dates
" -----
iabbrev echo_date <C-R>=strftime("%d-%m-%Y")<CR>
map <F2> :echo 'Current time is ' . strftime('%c')<CR>

" --------------------------
" Unmap bothersome shortcuts
" --------------------------

noremap <F1> <Esc> 
inoremap <F1> <Esc> 

