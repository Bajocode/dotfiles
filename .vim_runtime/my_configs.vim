" Plugins
call plug#begin('~/.vim_runtime/my_plugins')

Plug 'twerth/ir_black'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
Plug 'b4b4r07/vim-hcl'

call plug#end()

" Vim
:syntax enable
:set tabstop=2
:set shiftwidth=2
:set number
:set noshowmode
:set termguicolors 
colorscheme ir_black 
let g:lightline = { 'colorscheme': 'powerline' }

" Window navigation
map [D <C-W>h
map [C <C-W>l
map [A <C-W>k
map [B <C-W>j

" Window resizing
map <C-S-Left> :vertical resize -2<cr>
map <C-S-Right> :vertical resize +2<cr>
map <C-S-Up> :resize +2<cr>
map <C-S-Down> :resize -2<cr>

" Tab navigation
map <leader>tt :tabnext<cr>
map <leader>tT :tabprevious<cr>

" Quitting
map <leader>q :q!<cr>

" Linting
let g:ale_linters = { 'javascript': ['eslint'], 'typescript': ['tslint'] }
let g:ale_fixers = { 'javascript': ['eslint'], 'typescript': ['tslint'] }
let g:ale_lint_on_enter = 1 
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'always'

" Autocomplete
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
map <leader>yg :YcmCompleter GoTo<cr>
map <leader>yd :YcmCompleter GoToDefinition<cr>
map <leader>yr :YcmCompleter GoToReferences<cr>

" Searching
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = 'node_modules\|dist\|dist'

" Asyncrun
let g:asyncrun_open = 8
:noremap <leader>r :AsyncRun 

" MarkdownPreview
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 0 
let g:mkdp_refresh_slow = 0 "0: auto refresh markdown at cursor move
autocmd FileType markdown set nofoldenable 
