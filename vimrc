set nocompatible              " be iMproved, required
filetype off                  " required

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/zeljko/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/zeljko/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'VimOutliner'
NeoBundle 'vimoutliner-colorscheme-fix'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rake'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'junegunn/goyo.vim'
NeoBundle 'surround.vim'
NeoBundle 'PIV'
NeoBundle 'bilalq/lite-dfm'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'slim-template/vim-slim.git'
NeoBundle 'https://github.com/bling/vim-airline'
NeoBundle 'https://github.com/mileszs/ack.vim'
NeoBundle 'Haml'
NeoBundle 'Sass'
NeoBundle 'vim-coffee-script'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'lambdatoast/elm.vim.git'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'mattreduce/vim-mix'
NeoBundle 'elzr/vim-json'
NeoBundle 'junegunn/vim-journal'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck
"End NeoBundle Scripts-------------------------

set number 
set autoindent
set smartindent
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
set ignorecase
set nobackup
set noswapfile
set incsearch
set smartcase
set hlsearch
set splitbelow
set splitright

" automcomplete for html
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
syntax on

let g:ctrlp_use_caching = 0
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor

  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
  \ }
endif

let mapleader = " "
let g:user_emmet_leader_key='<C-Z>'

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 16
  elseif has("gui_macvim")
    set guifont=Source\ Code\ Pro:h18
    "set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

"
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

nnoremap ; :
noremap <leader>o :CtrlP<CR>  
noremap <leader>sd :NERDTree<CR>

map <leader>i mmgg=G`m<CR>
map <leader>p :set paste<CR>o<esc>"*]p:set nopaste<CR>
map <leader>h :noh<CR>

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

map <leader><TAB> za

colorscheme desert
colorscheme CodeFactoryv3
colorscheme Chasing_Logic
colorscheme BlackSea
