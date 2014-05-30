"------
" Color
" -----

colorscheme codeschool " colorsheme 
set t_Co=256 " 256 color mode
"set background=light

" --
" UI
" --

set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 11 " Setting if the font.
set guioptions-=m " Removes top menu. 
set guioptions-=T " Removes top toolbar.
set guioptions-=r " Removes right scrollbar.
set noruler " Removes the position of the cursor.
set number " Displays the number of the line.
set nowrap " Even if a lines comes too long, it doesn't break in two.
set wildmenu " Completion help for vim command lines.
set wildmode=list:longest,full " Better presentation of the available commands.
set cmdheight=2 " Make the command area two lines high.
set encoding=utf-8 " Sets the encoding.
set noshowmode " Don't show the mode since Powerline shows it.
set title " Set the title of the window in the terminal to the file.
set hidden " Allows to have unwritten changes, no need of :q!
let g:NERDTreeWinPos = "right" "Moves NERDTree to the right side.
set cursorline " Adds a cursor line.
"set laststatus=2 " Always show the statusline.
set cmdheight=2 " Make the command area two lines high.

" ---------
" Behaviors
" ---------

set timeoutlen=2000 " Times before hitting <Esc> takes effect.
" set ttimeoutlen=1
set autoread " Autoreloads a file if changes are detected.
set nostartofline " Don't go to the start of the line after some commands.
set scrolloff=5 " Keep three lines below the last line when scrolling.
set history=500 " Number of commands and searchs to remember.
set clipboard+=unnamed " All yanks go to the clipboard.
set autowrite " Saves files when the buffers switches
set autowriteall " Saves files when the buffers switches
set cf

" --------------
"  File location
"  -------------

set noswapfile " Disables the .swp backup
set nohidden " Unloads the buffer when it is abandonned.

" ---------
" Searching
" ---------

set ignorecase " Case insensitive search.
set smartcase " Ignore case when the search pattern is all lowercase, is case sensitive otherwise.
set incsearch " Show search matches as I type.
set hlsearch " Highlight search results.
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
  \rake-pipeline-* " searches ignore this kind of files


" -----------
" Text Format
" -----------

set tabstop=2 " A tab equals 2 spaces.
set backspace=indent,eol,start " In insert mode, backspace can erase anyting.
set shiftwidth=2 " Number of space to use for autoindent.
set shiftround " Use multiple of shiftwidth when indenting with > <.
"set cindent
set autoindent " Autoindents when writing.
set copyindent " Conserves the indentation when copying.
set smarttab  " Inserts tabs on the start of a line according to shiftwidth instead of tabstop.
set expandtab

" ------
" Visual
" ------

set showmatch " Show matching brackets.

" -----
" Mouse
" -----

set mousehide " Hide mouse after chars typed.


