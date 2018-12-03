" This is standard pathogen and Vim setup
set nocompatible
set number
set ignorecase

execute pathogen#infect()
call pathogen#infect() 
call pathogen#infect('bundle/{}')
call pathogen#infect('bundle/*')
syntax on
filetype plugin indent on

" Gruvbox
set background=dark    " Setting dark mode
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox

" NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


" Paredit
let g:paredit_mode = 1


" clojure rainbow parens
let g:rainbow_active = 1
"let g:rainbow_conf = {
"     \  'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
"     \  'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
"     \  'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
"     \  'separately': {
"     \      '*': 0,
"     \      'clojure': {},
"     \  }
"     \}
