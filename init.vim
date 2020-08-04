
set number


set ts=4
set mouse=a
call plug#begin('~/.vim/plugged')
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-fugitive'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'thinca/vim-quickrun'
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'junegunn/fzf'
Plug 'jiangmiao/auto-pairs'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'chiel92/vim-autoformat'
Plug 'mattn/emmet-vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'lokaltog/vim-powerline'

call plug#end()


let mapleader=";"

"NERDTree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" 文件树设置 {{{
" 关闭NERDTree快捷键
map <C-n> :NERDTreeToggle<CR>
""当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""修改树的显示图标
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeAutoCenter=1
" 显示行号
let NERDTreeShowLineNumbers=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=25
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
let g:NERDTreeIndicatorMapCustom = {
						\ "Modified"  : "✹",
						\ "Staged"    : "✚",
						\ "Untracked" : "✭",
						\ "Renamed"   : "➜",
						\ "Unmerged"  : "═",
						\ "Deleted"   : "✖",
						\ "Dirty"     : "✗",
						\ "Clean"     : "✔︎",
						\ 'Ignored'   : '☒',
						\ "Unknown"   : "?"
						\ }


"airline

let g:airline#extensions#tabline#enabled = 1

" 设置中文帮助
set helplang=cn
" " 设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double
" 总是显示状态栏
let laststatus = 2
let g:airline_powerline_fonts = 1   " 使用powerline打过补丁的字体
let g:airline_theme="dark"      " 设置主题
" 开启tabline
" let g:airline#extensions#tabline#enabled = 1
"tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" "tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" "tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" " 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>


"syntax-highlight
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

"nerdtree-git
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0

noremap <leader>af :Autoformat<CR>

