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
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
vnoremap < <gv
vnoremap > >gv
nnoremap <C-m> :tabnext<CR>
nnoremap <C-n> :tabprev<CR>
nnoremap + ^
nnoremap ´ $
nnoremap <C-d> }
nnoremap <C-e> {
nnoremap { <C-D>
nnoremap } <C-u>
nnoremap <leader><leader> /
nnoremap æ ~
nnoremap <A-l> :nohlsearch<CR>
nnoremap <leader>g gd
map <C-s> :w<CR>
nnoremap <CR> :nohlsearch<CR><CR>

if has('ide')
    set highlightedyank
    set surround
    set nerdtree
    set which-key
    set ideajoin
    set clipboard+=ideaput
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

    map <leader>ww <Action>(SplitVertically)
    map <leader>ws <Action>(SplitHorizontally)
    map <leader>wd <Action>(Unsplit)
    map <leader>we <Action>(MoveEditorToOppositeTabGroup)
    map <leader>wq <Action>(CloseAllEditorsButActive)
    map <leader>x <Action>(QuickJavaDoc)
    map <leader>F <Action>(FindInPath)
    map <leader>f <Action>(GotoFile)
    map <leader>a <Action>(GotoAction)
    map <F2> <Action>(RenameElement)
    map <leader>c <Action>(ReformatCode)
    map <leader>C <Action>(ShowReformatFileDialog)
    map <leader>b <Action>(ToggleLineBreakpoint)
    map <leader>B <Action>(Debugger.RemoveAllBreakpoints)
    map <leader>v <Action>(ExtractMethod)
    map <leader>V <Action>(Refactorings.QuickListPopupAction)
    map <leader>q <Action>(CommentByLineComment)
    map <leader>ep <Action>(Git.Pull)
    map <leader>eu <Action>(Vcs.UpdateProject)
    map <leader>ek <Action>(CheckinProject)
    map <leader>ee <Action>(Vcs.Push)
    map <leader>ef <Action>(Git.Fetch)
    map <leader>eb <Action>(Git.Branches)
    map <leader>em <Action>(git-commit-message-template.SetCommitMessageAction)
    map <leader>s <Action>(ShowIntentionActions)
    map <leader>d <Action>(ShowErrorDescription)
    map <leader>rr <Action>(RunClass)
    map <leader>rd <Action>(DebugClass)
    map <leader>rc <Action>(RunCoverage)
    map <leader>rs <Action>(Stop)
    map <C-r> <Action>(NextSplitter)
    map <leader>z <Action>(ToggleDistractionFreeMode)
    nnoremap <leader>l :action RecentLocations<CR>
    map <leader>h <Action>(Vcs.ShowTabbedFileHistory)
    nnoremap ge :action GotoNextError<CR>
    nnoremap gE :action GotoPreviousError<CR>
    map <F1> <Action>(ManageRecentProjects)
    map <c-p> :action JumpToLastWindow<CR>
    map <c-q> :action HideAllWindows<CR>
    map <C-f> <Action>(Find)
    map <A-e> <Action>(RecentFiles)
endif
