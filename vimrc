set nocompatible
filetype off

set rtp+=~/.vim/vundle.git
call vundle#rc()

Bundle 'git://github.com/Shougo/unite.vim.git'
Bundle 'git://github.com/sophacles/vim-processing' 
Bundle 'git://github.com/Shougo/neocomplcache.git'
Bundle 'git://github.com/Shougo/neocomplcache-snippets-complete'
Bundle 'git://github.com/Shougo/vimfiler.git'
Bundle 'git://github.com/mattn/zencoding-vim'
Bundle 'git://github.com/Lokaltog/vim-powerline.git'
"Bundle 'git://github.com/thinca/vim-quickrun.git'
Bundle 'git://github.com/vim-scripts/taglist.vim.git'
"Bundle 'git://github.com/vim-scripts/Source-Explorer-srcexpl.vim.git'
Bundle 'git://github.com/sgur/unite-qf.git'
Bundle 'git://github.com/Shougo/unite-build.git'
Bundle 'git://github.com/Shougo/vimproc.git'
Bundle 'git://github.com/dag/vim2hs.git'


filetype plugin indent on

" Esc -> cont + a
imap <C-a> <esc>

set encoding=utf-8
set fileencodings=utf-8,euc-jp
set autoindent
set backspace=2
syntax on
colorscheme molokai

" statusline 
" substitute powerline
"set statusline=%{expand('%:p:t')}\ %<[%{expand('%:p:h')}]%=\ %m%r%y%w[%{&fenc!=''?&fenc:&enc}][%{&ff}][%3l,%3c,%3p]
"let g:Powerline_symbols = 'fancy'
set laststatus=2
"set cursorline

"space key
"nnoremap <Space> jzz
"nnoremap <M-Space> kzz

" 文字化け対策
set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,utf-8,euc-jp,cp932

"QuickFix
autocmd QuickFixCmdPost make,grep,grepadd,vimgrep, if len(getqflist()) != 0 | copen | endif

"vim-latex
filetype plugin on
set shellslash
set grepprg=grep\ -nH\ $*
filetype indent on
"let g:tex_flavor='latex'
"let g:Tex_CompileRule_dvi='platex --interaction=nonstopmode $*'
"let g:Tex_BibtexFlavor='jbibtex'
"let g:Tex_ViewRule_dvi='xdvi'
"let g:Tex_ompileRule_pdf='dvipdfmx $*.dvi'
"autocmd FileType tex set spell

" configure for python
autocmd FileType python setl autoindent
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

set sw=2

set number
set smartindent
set mousehide
set shiftwidth=3
set foldmethod=syntax

nnoremap j gj
nnoremap k gk
" noremap ; :
" noremap : ;

"前回編集した場所に飛ぶ
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif


"Unite
let g:unite_enable_start_insert=1
noremap <C-P> :Unite buffer<CR>
noremap <C-N> :Unite -buffer-name=file file<CR>
noremap <C-Z> :Unite file_mru<CR>
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')

au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

"neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 30
let g:neocomplcache_auto_completion_start_length = 2
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
":let g:neocomplcache_start_quick_match = 1
inoremap <expr><C-l> neocomplcache#complete_common_string()

imap <C-k> 	<Plug>(neocomplcache_snippets_expand)
smap <C-k>	<Plug>(neocomplcache_snippets_expand)

"neocomplcache_snippets
let g:neocomplcache_snippets_dir = '~/.vim/snippets'
noremap es :<C-u>NeoComplCacheEditSnippets<CR>

"VimFiler
let g:vimfiler_safe_mode_by_default=0
noremap vf :VimFiler<CR>

" unite-qf
noremap <F5> :Unite qf<CR>
" unite-build
noremap <F10> :Unite build<CR>

" taglist

" srcexpl
"let g:SrcExpl_refreshTime = 1
"let g:SrcExpl_winHeight = 9
"let g:SrcExpl_refreshMapKey = "<Space>"
