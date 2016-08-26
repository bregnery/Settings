command Spell setlocal spell spelllang=en_us
autocmd BufRead *.tex :Spell
autocmd BufRead *.bib :Spell
command PdfLatex !mkdir -p build; rubber --pdf --into build %; cp build/*.pdf .
map <F4> :PdfLatex<CR>
