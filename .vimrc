"============================================================
" Custom vimrc ----------------------------------------------
"------------------------------------------------------------
" Author(s): Brendan Regnery --------------------------------
"------------------------------------------------------------
" Commands were taken from this useful resource -------------
" https://vim.fandom.com/wiki/Example_vimrc -----------------
"------------------------------------------------------------

"============================================================
" Usability Options -----------------------------------------
"============================================================

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Enable syntax highlighting
syntax on

" Display line numbers on the left
" set number

" Enable use of the mouse for all modes
set mouse=a

"============================================================
" Comment Style Commands ------------------------------------
"============================================================

" Insert the === heading until column 90
command! Heading s/$/\=repeat("=",90 - strlen(getline(".") ) )
" Insert the --- subheading until column 90
command! SubHeading s/$/\=repeat("-",90 - strlen(getline(".") ) )

"============================================================
" Indentation Style ==---------------------------------------
"============================================================

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

"============================================================
" Special Options -------------------------------------------
"============================================================

" Enable Spell Check in tex and markdown files
command! Spell setlocal spell spelllang=en_us
autocmd BufRead *.tex :Spell
autocmd BufRead *.bib :Spell
autocmd BufRead,BufNewFile *.md setlocal spell

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
command! PdfLatex !mkdir -p build; rubber --pdf --into build %; cp build/*.pdf .
map <F4> :PdfLatex<CR>

"============================================================
" Custom Commands -------------------------------------------
"============================================================

"Automatically remove trailing whitespace for c,py files
autocmd FileType c,cpp,py,C autocmd BufWritePre * %s/\s\+$//e
