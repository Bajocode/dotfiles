" Vim
:syntax enable
:set tabstop=2
:set shiftwidth=2
:set number
:set noshowmode
:set termguicolors 
colorscheme gruvbox 
let g:lightline = { 'colorscheme': 'gruvbox' }

" Window navigation
map [D <C-W>h
map [C <C-W>l
map [A <C-W>k
map [B <C-W>j

" Quitting
map <leader>q :q!<cr>

" Linting
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_fixers = { 'javascript': ['eslint'] }
let g:ale_lint_on_enter = 1 
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'always'

" Autocomplete
let g:ycm_autoclose_preview_window_after_completion = 1

" Searching
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = 'node_modules\|dist\|dist'

" Markdown
let g:livedown_autorun = 1
let g:livedown_open = 1
