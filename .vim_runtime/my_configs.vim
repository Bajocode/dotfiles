" Plugins
call plug#begin('$HOME/.vim_runtime/my_plugins')

Plug 'twerth/ir_black'
Plug 'lifepillar/vim-solarized8'
Plug 'heavenshell/vim-jsdoc'
Plug 'mxw/vim-jsx'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
Plug 'alvan/vim-closetag'
Plug 'lilyball/vim-swift'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Vim
filetype on
filetype plugin indent on
:syntax enable
:set tabstop=2
:set shiftwidth=2
:set expandtab
" :set number
:set noshowmode
:set termguicolors 
:set foldcolumn=0
:set colorcolumn=80
if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
   set background=dark
else
  set background=light
endif
colorscheme solarized8_flat
let g:lightline = { 'colorscheme': 'solarized' }
hi EndOfBuffer guifg=bg
hi VertSplit guibg=bg guifg=bg
autocmd FileType * set showtabline=0
autocmd FileType go,c,cpp setlocal tabstop=8 shiftwidth=8 noexpandtab 
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType java,swift setlocal tabstop=4 shiftwidth=4 noexpandtab 
autocmd FileType markdown,javascript set nofoldenable
autocmd BufRead,BufNewFile Dockerfile* set ft=Dockerfile
autocmd BufRead,BufNewFile *.tpl set ft=go
autocmd BufRead,BufNewFile *.m set ft=objc

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
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Coc
let g:coc_global_extensions = ['coc-tsserver', 'coc-java', 'coc-python', 'coc-yaml', 'coc-sourcekit']

" Ale
let g:ale_lint_delay = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_linters = {'javascript': ['eslint'], 'typescript': ['eslint'], 'python': ['flake8'], 'shell': ['shellcheck']}
let g:ale_fixers = {'javascript': ['eslint'], 'typescript': ['eslint'], 'python': ['autopep8']}
let g:ale_fix_on_save = 1
" While learning c
autocmd BufEnter *.c ALEDisable

" jsx return indentation issue fix
let g:jsx_ext_required = 1

" vim-closetag
let g:closetag_filenames = '*.html,*.tsx,*.jsx'

" Searching
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = 'node_modules\|dist\|dist'

" MarkdownPreview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 0 
let g:mkdp_refresh_slow = 0 "0: auto refresh markdown at cursor move
map <leader>m :MarkdownPreview<cr>

" Goyo
let g:goyo_width = '80'
let g:goyo_height = '75%'
autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()
function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction
function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction
