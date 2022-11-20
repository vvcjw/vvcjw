set tabstop=4
set shiftwidth=4
set expandtab

" Syntax Highlighting
if has("syntax")
    syntax on
endif

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "norm g`\"" | endif
