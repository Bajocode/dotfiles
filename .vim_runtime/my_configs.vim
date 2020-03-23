" Plugins
call plug#begin('~/.vim_runtime/my_plugins')

Plug 'twerth/ir_black'
Plug 'lifepillar/vim-solarized8'
Plug 'peitalin/vim-jsx-typescript'
Plug 'heavenshell/vim-jsdoc'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
Plug 'alvan/vim-closetag'
Plug 'lilyball/vim-swift'

call plug#end()

" Vim
:syntax enable
:set tabstop=2
:set shiftwidth=2
:set expandtab
filetype on
autocmd FileType go,c,cpp setlocal tabstop=8 shiftwidth=8 noexpandtab 
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType java,swift setlocal tabstop=4 shiftwidth=4 noexpandtab 
autocmd FileType markdown,javascript set nofoldenable 
autocmd BufRead,BufNewFile Dockerfile* set ft=Dockerfile
autocmd BufRead,BufNewFile *.tpl set ft=go

:set number
:set noshowmode
:set termguicolors 
:set foldcolumn=0
colorscheme solarized8
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
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

" Linting & completion
let g:ale_lint_on_enter = 1 
let g:ale_lint_on_text_changed = 'always'
let g:ale_completion_enabled = 1
let g:ale_completion_delay = 0
let g:ale_lint_delay = 0
:set completeopt-=preview

" vim-closetag
let g:closetag_filenames = '*.html,*.tsx,*.jsx'

" Searching
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = 'node_modules\|dist\|dist'

" MarkdownPreview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 0 
let g:mkdp_refresh_slow = 0 "0: auto refresh markdown at cursor move
map <leader>mo :MarkdownPreview<cr>
map <leader>ms :MarkdownPreviewStop<cr>
