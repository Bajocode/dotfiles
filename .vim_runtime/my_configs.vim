" Vim
:syntax enable
:set tabstop=2
:set shiftwidth=2
:set number
:set noshowmode

" Window navigation
" [D[C[A[B
map [D <C-W>h
map [C <C-W>l
map [A <C-W>k
map [B <C-W>j

" Linting
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_fixers = { 'javascript': ['eslint'] }
let g:ale_lint_on_enter = 1 
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'always'

" Autocomplete
let g:ycm_autoclose_preview_window_after_completion = 1

" Markdown
let g:livedown_autorun = 1
let g:livedown_open = 1
