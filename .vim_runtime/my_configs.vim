" Plugins
call plug#begin('~/.vim_runtime/my_plugins')

Plug 'twerth/ir_black'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all --clangd-completer' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
Plug 'b4b4r07/vim-hcl'
Plug 'andrewstuart/vim-kubernetes'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'alvan/vim-closetag'
Plug 'peitalin/vim-jsx-typescript'
Plug 'lilyball/vim-swift'

call plug#end()

" Vim
:syntax enable
:set tabstop=2
:set shiftwidth=2
:set expandtab
autocmd FileType go,c,cpp setlocal tabstop=8 shiftwidth=8 noexpandtab 
autocmd FileType java,swift setlocal tabstop=4 shiftwidth=4 noexpandtab 
autocmd BufRead,BufNewFile Makefile setlocal tabstop=8 shiftwidth=8 noexpandtab

:set number
:set noshowmode
:set termguicolors 
:set foldcolumn=0
colorscheme ir_dark
:set bg=dark

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

" Vim
map <space> :%s/
map <leader>q :q!<cr>
map <c-m> :messages<cr>
map <leader>b :Bclose<cr>
map <leader>y "*y
map <leader>p "*p
map <leader>d "*d

" Linting
let g:ale_linter_aliases = {'typescriptreact': 'typescript'}
let g:ale_linters = { 'javascript': ['eslint'], 'typescript': ['tslint', 'eslint'] }
let g:ale_fixers = { 'javascript': ['eslint'], 'typescript': ['tslint'] }
let g:ale_lint_on_enter = 1 
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'always'
let g:tsuquyomi_disable_quickfix = 1

" Autocomplete
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_global_ycm_extra_conf = '~/.vim_runtime/my_plugins/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
map <leader>yg :YcmCompleter GoTo<cr>
map <leader>yd :YcmCompleter GoToDefinition<cr>
map <leader>yr :YcmCompleter GoToReferences<cr>

" vim-closetag
let g:closetag_filenames = '*.html,*.tsx,*.jsx'

" Searching
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = 'node_modules\|dist\|dist'

" Asyncrun
let g:asyncrun_open = 8
:noremap <leader>r :AsyncRun 

" MarkdownPreview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 0 
let g:mkdp_refresh_slow = 0 "0: auto refresh markdown at cursor move
map <leader>mo :MarkdownPreview<cr>
map <leader>ms :MarkdownPreviewStop<cr>
autocmd FileType markdown set nofoldenable 

" Kubernetes
map <leader>ka :KubeApply<cr>
map <leader>kd :KubeDelete<cr>

" Docker
autocmd BufRead,BufNewFile Dockerfile* set ft=Dockerfile
