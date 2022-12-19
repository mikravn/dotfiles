set scrolloff=10
set showmode
set showcmd
set visualbell
set clipboard+=unnamed
set number relativenumber
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
nnoremap <A-d> <C-D>
nnoremap <A-e> <C-u>
nnoremap { <C-D>
nnoremap } <C-u>
nnoremap æ ~
vnoremap æ ~
nnoremap <A-l> :nohlsearch<CR>
nnoremap <CR> :nohlsearch<CR><CR>
nnoremap <leader>g gd
map <C-s> :w<CR>
nnoremap Q @q
xnoremap <leader>p "_dP

if has('ide')
    " Plugins
    set highlightedyank
    set surround
    set nerdtree
    set which-key
    set ideajoin
    set clipboard+=ideaput
    set easymotion
    set sneak
    " Which-key
    let g:WhichKey_FontSize = 22
    let g:WhichKey_CommandColor = "#41ead4"
    let g:WhichKey_PrefixColor = "#f335b2"
    let g:WhichKey_SortOrder = "by_key_prefix_first"
    let g:WhichKey_DefaultDelay = 600
    let g:WhichKeyDesc_jk = "jk"
    let g:WhichKeyDesc_kj = "kj"
    let g:WhichKeyDesc_ds = "ds"
    " Handlers
    sethandler <C-a> a:ide
    sethandler <C-w> a:ide
    sethandler <C-s> a:ide
    " Buffers
    map <leader>ww <Action>(MoveTabRight)
    map <leader>we <Action>(SplitVertically)
    map <leader>ws <Action>(MoveTabDown)
    map <leader>wd <Action>(SplitHorizontally)
    map <leader>wx <Action>(Unsplit)
    map <leader>wc <Action>(MoveEditorToOppositeTabGroup)
    map <leader>wq <Action>(CloseAllEditorsButActive)
    " IDEA display actions
    map <leader>x <Action>(QuickJavaDoc)
    map <leader>s <Action>(ShowIntentionActions)
    map <leader>d <Action>(ShowErrorDescription)
    map <leader>z <Action>(ToggleDistractionFreeMode)
    " IDEA code actions
    map <F2> <Action>(RenameElement)
    map <leader>c <Action>(ReformatCode)
    map <leader>C <Action>(ShowReformatFileDialog)
    map <leader>v <Action>(Refactorings.QuickListPopupAction)
    map <leader>V <Action>(ExtractMethod)
    map <leader>q <Action>(CommentByLineComment)
    " IDEA navigation
    map <C-r> <Action>(NextSplitter)
    map <leader>N <Action>(FindInPath)
    map <leader>n <Action>(GotoFile)
    map <leader>f <Plug>(easymotion-jumptoanywhere)
    map <leader>a <Action>(GotoAction)
    map <leader>l <Action>(RecentLocations)
    map <leader>h <Action>(Vcs.ShowTabbedFileHistory)
    map ge <Action>(GotoNextError)
    map gE <Action>(GotoPreviousError)
    map <F1> <Action>(ManageRecentProjects)
    map <c-p> <Action>(JumpToLastWindow)
    map <c-q> <Action>(HideAllWindows)
    map <C-f> <Action>(Find)
    map <A-e> <Action>(RecentFiles)
    " IDEA debugger
    map <leader>b <Action>(ToggleLineBreakpoint)
    map <leader>B <Action>(Debugger.RemoveAllBreakpoints)
    map <leader>rr <Action>(RunClass)
    map <leader>rd <Action>(DebugClass)
    map <leader>rc <Action>(RunCoverage)
    map <leader>rs <Action>(Stop)
    map <leader>re <Action>(Rerun)
    " IDEA git
    map <leader>ep <Action>(Git.Pull)
    map <leader>eu <Action>(Vcs.UpdateProject)
    map <leader>ef <Action>(Git.Fetch)
    map <leader>eb <Action>(Git.Branches)
    map <leader>em <Action>(git-commit-message-template.SetCommitMessageAction)
    map <C-k> <Action>(CheckinProject)
    map <C-S-k> <Action>(Vcs.Push)
endif
