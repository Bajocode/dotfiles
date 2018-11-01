execute pathogen#infect()

" Editor
syntax on
let python_highlight_all = 1
filetype plugin indent on
set nocompatible
set number
set backspace=indent,eol,start
set nowrap
set showcmd
set noshowmode
set incsearch
set tabstop=2
set shiftwidth=2
set expandtab
set completeopt-=preview
set laststatus=2
set splitright

" Autocomplete with Neocomplete
let g:neocomplete#enable_at_startup = 1
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" SuperTab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" Ultisnips
let g:UltiSnipsExpandTrigger="ß"

" Commenting
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1"
map <C-Bslash> <leader>ci
imap <C-Bslash> <Esc><leader>ci

" Markdown
let g:markdown_fenced_languages = ['html', 'python', 'swift', 'ruby', 'javascript']
let g:bullets_enabled_file_types = ['markdown', 'text', 'gitcommit']
autocmd BufRead,BufNewFile *.md setlocal wrap nonumber smartindent linebreak spell spelllang=en_us
autocmd BufRead,BufNewFile *.md inoremap <silent> <buffer> <script> <expr> <Tab>
      \ <SID>IsAnEmptyListItem() \|\| <SID>IsAnEmptyQuote() ? '<C-O>:call <SID>Indent(1)<CR>' : pumvisible() ? '<C-n>' : '<Tab>'

autocmd BufRead,BufNewFile *.md inoremap <silent> <buffer> <script> <expr> <S-Tab>
      \ <SID>IsAnEmptyListItem() \|\| <SID>IsAnEmptyQuote() ? '<C-O>:call <SID>Indent(0)<CR>' : '<Tab>'

nmap gm :LivedownToggle<CR>
let g:livedown_open = 1 
let g:livedown_autorun = 1

" Gherkin
autocmd BufRead,BufNewFile *.feature setlocal wrap linebreak textwidth=79 spell spelllang=en_us

" Language specific
let g:jsx_ext_required = 0
au BufNewFile,BufRead *.ejs set filetype=html
au BufReadPost Fastfile set syntax=ruby

" UI
colorscheme peaksea
set colorcolumn=80
set background=dark
set showmode

" Finding
set path+=**
set wildignore+=**/node_modules/**
set wildmenu

" ALE (Asynchronous Lint Engine)
nmap <silent> <F8> :ALEToggle<CR>
imap <silent> <F8> <C-o>:ALEToggle<CR>
nmap <silent> <F7> <Plug>(ale_previous_wrap)
imap <silent> <F7> <C-o><Plug>(ale_previous_wrap)
nmap <silent> <F9> <Plug>(ale_next_wrap)
imap <silent> <F9> <C-o><Plug>(ale_next_wrap)
let g:ale_lint_on_enter = 0
let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
let g:ale_sign_column_always = 1

" Netrw
let g:netrw_localrmdir='rm -r'

" Backups                                                   
set backupdir=~/.vim/backup//                                                   
set directory=~/.vim/swap//                                                     
set undodir=~/.vim/undo//

" Closings
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.ts,*.tsx,*.ejs'
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap ` ``<Left>
inoremap `` ```<CR>```<Up><Space>
inoremap <% <%  %><Left><Left><Left>
inoremap <! <!--  --><Left><Left><Left><left>
inoremap { {}<left>
inoremap {<CR>  {<CR>}<Esc>O

" Copy / cut into global
vmap Y "+y
nmap YY "+yy
vmap D "+d
nmap DD "+dd
nmap P "+p

" Save 
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

" Reload / refresh
nmap ® :e<CR>

" Quit
map WQ :wq<CR>
map WQA :wqa<CR>
map QQ :q<CR>
map Q! :q!<CR>
map QA! :qa!<CR>

" Close buffer
nnoremap <C-b> :bd<CR>

" Find command
map <F1> :find<space>
imap <F1> <Esc>:find<space>

" Vert split find command
map \\ :vert sf<space>
imap \\ <Esc>:vert sf<space>

" Background mode
map <silent> <F5> :set background=dark<CR>:source $MYVIMRC<CR>
imap <silent> <F5> <C-o>:set background=dark<CR>:source $MYVIMRC<CR>
map <silent> <F6> :set background=light<CR> 
imap <silent> <F6> <C-o>:set background=light<CR> 

" Windows / splits
nnoremap <Esc>[1;3D <C-w>h
nnoremap <Esc>[1;5B <C-w>j
nnoremap <Esc>[1;5A]  <C-w>k
nnoremap <Esc>[1;3C <C-w>l
inoremap <Esc>[1;3D <Esc><C-w>h
inoremap <Esc>[1;5B <Esc><C-w>j
inoremap <Esc>[1;5A] <Esc><C-w>k
inoremap <Esc>[1;3C <Esc><C-w>l
map <silent> <F4> :vertical res +2<CR> 
imap <silent> <F4> <C-o>:vertical res +2<CR> 
map <silent> <F3> :vertical res -2<CR> 
imap <silent> <F3> <C-o>:vertical res -2<CR> 
map <silent> ¢ :res +2<CR> 
imap <silent> ¢ <C-o>:res +2<CR> 
map <silent> £ :res -2<CR> 
imap <silent> £ <C-o>:res -2<CR> 

" Tab nav
map <PageUp> :tabp<CR>
map <PageDown> :tabn<CR>

" Buffer nav
nnoremap <End> :bnext<CR>
nnoremap <Home> :bprevious<CR>

  
" CUSTOM FUNCTIONS "

" Quick run via <Alt-'>
nmap <F11> :call <SID>compile_and_run()<CR>j
imap <F11> <C-o>:call <SID>compile_and_run()<CR>
nmap <F12> :call <SID>compile_and_run()<CR><C-w>j
imap <F12> <Esc> :call <SID>compile_and_run()<CR><C-w>j

augroup SPACEVIM_ASYNCRUN
    autocmd!
    " Automatically open the quickfix window
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(15, 1)
augroup END

function! s:compile_and_run()
    exec 'w'
    if &filetype == 'c'
        exec "AsyncRun! gcc % -o %<; time ./%<"
    elseif &filetype == 'cpp'
       exec "AsyncRun! g++ -std=c++11 % -o %<; time ./%<"
    elseif &filetype == 'java'
       exec "AsyncRun! javac %; time java %<"
    elseif &filetype == 'sh'
       exec "AsyncRun! time bash %"
    elseif &filetype == 'python'
       exec "AsyncRun! time python3 %"
    endif
endfunction

" Empty listitems auto tab indent 
function! s:IsAnEmptyQuote()
  return getline('.') =~ '\v^\s*(\s?\>)+\s*$'
endfunction
function! s:IsAnEmptyListItem()
  return getline('.') =~ '\v^\s*%([-*+]|\d\.)\s*$'
endfunction
function! s:Indent(indent)
  if getline('.') =~ '\v^\s*%([-*+]|\d\.)\s*$'
    if a:indent
      normal >>
    else
      normal <<
    endif
    call setline('.', substitute(getline('.'), '\([-*+]\|\d\.\)\s*$', '\1 ', ''))
    normal $
  elseif getline('.') =~ '\v^\s*(\s?\>)+\s*$'
    if a:indent
      call setline('.', substitute(getline('.'), '>\s*$', '>> ', ''))
    else
      call setline('.', substitute(getline('.'), '\s*>\s*$', ' ', ''))
      call setline('.', substitute(getline('.'), '^\s\+$', '', ''))
    endif
    normal $
  endif
endfunction

" Netrw
let g:netrw_banner = 0
let g:netrw_winsize = 20
let g:netrw_liststyle = 3
map <silent> <F2> :call ToggleNetrw()<CR>
imap <silent> <F2> <C-o>:call ToggleNetrw()<CR>
let g:NetrwIsOpen=0
function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction
