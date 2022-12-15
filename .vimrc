" "C:/users/mikrj/.ideavimrc" "c:/users/mikrj/.vimrc"

set scrolloff=10
set showmode
set showcmd
set visualbell
set clipboard+=unnamed
set ignorecase
set smartcase
set incsearch
set hlsearch
set timeoutlen=2000
let mapleader = " "
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
vnoremap < <gv
vnoremap > >gv
nnoremap <C-m> :tabnext<CR>
nnoremap <C-n> :tabprev<CR>
map <leader>w :w<CR>
nnoremap + ^
nnoremap ´ $
nnoremap <C-d> }
nnoremap <C-u> {
nnoremap { <C-D>
nnoremap } <C-u>
nnoremap <leader><leader> /
nnoremap gg gd
nnoremap gt gg
nnoremap æ ~
nnoremap <C-l> :nohlsearch<CR>

if has('ide')
    set highlightedyank
    set surround
    set nerdtree
    set which-key
    " set easymotion
    " set sneak
    let g:WhichKey_FontSize = 22
    let g:WhichKey_CommandColor = "#41ead4"
    let g:WhichKey_PrefixColor = "#f335b2"
    let g:WhichKey_SortOrder = "by_key_prefix_first"
    let g:WhichKey_DefaultDelay = 600
    let g:WhichKeyDesc_jk = "jk"
    let g:WhichKeyDesc_kj = "kj"
    let g:WhichKeyDesc_ds = "ds"

    map <leader>wd <Action>(SplitVertically)
    map <leader>ws <Action>(SplitHorizontally)
    map <leader>wr <Action>(Unsplit)
    map <leader>wq <Action>(MoveEditorToOppositeTabGroup)
    map <leader>ww <Action>(CloseEditor)
endif
