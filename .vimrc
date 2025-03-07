set scrolloff=10
set showmode
set showcmd
set visualbell
set clipboard+=unnamedplus
set number relativenumber
set ignorecase
set smartcase
set incsearch
set hlsearch
set timeoutlen=2000
set gdefault
set noswapfile
set noexpandtab
let mapleader = " "
vnoremap < <gv
vnoremap > >gv
map <S-Tab> <
map <Tab> >
nnoremap <C-r> :tabnext<CR>
nnoremap <C-t> :tabprev<CR>
nnoremap + ^
noremap <C-d> 15j
noremap <C-e> 15k
nnoremap Q @q
nnoremap <C-l> :nohlsearch<CR>:let @/ = ""<CR>
xnoremap <leader>p "_dP
noremap <C-n> O<Esc>
nnoremap <leader>g <C-O>
nnoremap gg gd
nnoremap gw gg
nnoremap gs G
noremap æ ~
noremap å ==
tnoremap <Esc> <C-\><C-n>
nnoremap <C-a> ggVG

" WIN Visual
vnoremap <BS> d
vnoremap <C-x> "+x
vnoremap <C-c> "+ygv<Esc>
vnoremap <C-v> "_dP
vnoremap p "_dP
" WIN Insert
inoremap <C-c> <Esc>
inoremap <C-v> <Esc>
" WIN Normal
nnoremap <C-c> "+yy
nnoremap <C-v> "+p
" WIN SAVE
noremap <C-s> :update<CR>
inoremap <C-s> <Esc>:update<CR>gi
vnoremap <C-s> <C-C>:update<CR>
" WIN HOME/END
map <Home> ^
map <End> $
" WIN REMAP
noremap <C-q> <C-V>
nnoremap <f1> <C-]>

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
    set multicursor
    " Handlers
    sethandler <C-a> a:ide
    sethandler <C-w> a:ide
    sethandler <C-s> a:ide
    sethandler <A-d> a:ide
    sethandler <C-A-s> a:ide
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
    map <leader>d <Action>(QuickJavaDoc)
    map <leader>x <Action>(ShowIntentionActions)
    " IDEA code actions
    map <F2> <Action>(RenameElement)
    map <leader>c <Action>(ReformatCode)
    map <leader>C <Action>(ShowReformatFileDialog)
    map <leader>b <Action>(Refactorings.QuickListPopupAction)
    map <leader>q <Action>(CommentByLineComment)
    " IDEA navigation
    map <leader>f <Action>(GotoFile)
    map <leader>s <Action>(RecentFiles)
    map <C-.> <Action>(NextSplitter)
    map <leader>v <Action>(NextSplitter)
    map <leader>l <Action>(RecentLocations)
    map <leader>h <Action>(Annotate)
    map <leader>i <Action>(Vcs.ShowTabbedFileHistory)
    map ge <Action>(GotoNextError)
    map gE <Action>(GotoPreviousError)
    map gc <Action>(VcsShowNextChangeMarker)
    map gC <Action>(VcsShowPrevChangeMarker)
    map <F1> <Action>(ManageRecentProjects)
    map <c-p> <Action>(JumpToLastWindow)
    map <leader>t <Action>(HideAllWindows)<Action>(ActivateProjectToolWindow)
    map <C-f> <Action>(Find)
    map <A-e> <Action>(RecentFiles)
    map <leader>z <Action>(CollapseRegionRecursively)
    map <leader>Z <Action>(ExpandRegionRecursively)
    map <leader>a <Action>(QuickImplementations)
    map gf <Action>(GotoImplementation)
    map gr <Action>(GotoSuperMethod)
    map gt <Action>(GotoTest)
    " IDEA debugger
    map <leader>k <Action>(ToggleLineBreakpoint)
    map <leader>K <Action>(Debugger.RemoveAllBreakpoints)
    map <leader>rr <Action>(RunClass)
    map <leader>rd <Action>(DebugClass)
    map <leader>rc <Action>(RunCoverage)
    map <leader>rs <Action>(Stop)
    map <leader>re <Action>(Rerun)
    map <leader>rc <Action>(RunToCursor)
    map <leader>rw <Action>(SwitchCoverage)
    map <leader>rq <Action>(HideCoverage)
    " IDEA git
    map <leader>ep <Action>(Git.Pull)
    map <leader>eu <Action>(Vcs.UpdateProject)
    map <leader>ef <Action>(Git.Fetch)
    map <leader>eb <Action>(Git.Branches)
    map <C-k> <Action>(CheckinProject)
    map <C-S-k> <Action>(Vcs.Push)
endif
