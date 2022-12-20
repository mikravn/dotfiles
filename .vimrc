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
vnoremap < <gv
vnoremap > >gv
nnoremap <C-m> :tabnext<CR>
nnoremap <C-n> :tabprev<CR>
nnoremap + ^
nnoremap ´ $
noremap <C-d> 10j
noremap <C-e> 10k
map æ ~
nnoremap Q @q
nnoremap <C-l> :nohlsearch<CR>:let @/ = ""<CR>
xnoremap <leader>p "_dP
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
nnoremap <leader>b <C-O>
nnoremap <leader>g gd
" WIN emulation
vnoremap <BS> d
vnoremap <C-c> "+y']
vnoremap <C-x> "+x
vnoremap <C-v> "+y
map <C-v> "+p
noremap <C-q> <C-V>
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <Esc>:update<CR>gi

if has('ide')
    " Plugins
    set ideavimsupport=
    set highlightedyank
    set surround
    set nerdtree
    set ideajoin
    set clipboard+=ideaput
    set easymotion
    set sneak
    " Handlers
    sethandler <C-a> a:ide
    sethandler <C-w> a:ide
    sethandler <C-s> a:ide
    sethandler <A-d> a:ide
    sethandler <C-A-s> a:ide
    sethandler <A> a:ide
    " Buffers
    map <leader>ww <Action>(MoveTabRight)
    map <leader>wW <Action>(SplitVertically)
    map <leader>ws <Action>(MoveTabDown)
    map <leader>wS <Action>(SplitHorizontally)
    map <leader>we <Action>(Unsplit)
    map <leader>wd <Action>(MoveEditorToOppositeTabGroup)
    map <leader>wq <Action>(CloseAllEditorsButActive)
    map <C-A-s> <Action>(CloseAllEditorsButActive)
    " IDEA display actions
    map <leader>x <Action>(QuickJavaDoc)
    map <leader>s <Action>(ShowIntentionActions)
    map <leader>d <Action>(ShowErrorDescription)
    map <leader>z <Action>(ToggleDistractionFreeMode)
    " IDEA code actions
    map <F2> <Action>(RenameElement)
    map <leader>c <Action>(ReformatCode)
    map <leader>C <Action>(ShowReformatFileDialog)
    map <leader>M <Action>(Refactorings.QuickListPopupAction)
    map <leader>m <Action>(ExtractMethod)
    map <leader>q <Action>(CommentByLineComment)
    " IDEA navigation
    map <C-r> <Action>(NextSplitter)
    map <leader>v <Action>(GotoFile)
    map <leader>f <Plug>(easymotion-jumptoanywhere)
    map <leader>l <Action>(RecentLocations)
    map <leader>h <Action>(Annotate)
    map <leader><leader>h <Action>(Vcs.ShowTabbedFileHistory)
    map ge <Action>(GotoNextError)
    map gE <Action>(GotoPreviousError)
    map <leader>b <Action>(Back)
    map <F1> <Action>(ManageRecentProjects)
    map <c-p> <Action>(JumpToLastWindow)
    map <leader>t <Action>(HideAllWindows)<Action>(ActivateProjectToolWindow)
    map <C-f> <Action>(Find)
    map <A-e> <Action>(RecentFiles)
    map <leader>z <Action>(CollapseRegionRecursively)
    map <leader>Z <Action>(ExpandRegionRecursively)
    " IDEA debugger
    map <leader>k <Action>(ToggleLineBreakpoint)
    map <leader>K <Action>(Debugger.RemoveAllBreakpoints)
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
