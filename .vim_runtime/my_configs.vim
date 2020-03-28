" Plugins
call plug#begin('~/.vim_runtime/my_plugins')

Plug 'twerth/ir_black'
Plug 'lifepillar/vim-solarized8'
Plug 'heavenshell/vim-jsdoc'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
Plug 'alvan/vim-closetag'
Plug 'lilyball/vim-swift'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
:set bg=dark
colorscheme solarized8
hi EndOfBuffer guifg=bg
let g:lightline = { 'colorscheme': 'solarized' }

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

" Goyo
autocmd VimEnter * Goyo
let g:goyo_linenr = 1
let g:goyo_height = "100%"
let g:goyo_width = "100%"

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

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()
