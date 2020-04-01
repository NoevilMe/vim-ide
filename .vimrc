set nocompatible              " be iMproved, required
set hidden                    " ctrlSpace

filetype off                  " required

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Any valid git URL is allowed, github plugins update status dashboard
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'itchyny/calendar.vim'

" search
Plug 'dkprice/vim-easygrep'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
Plug 'haya14busa/incsearch.vim'


" Shell
Plug 'Shougo/vimproc.vim',{'do': 'make'}
Plug 'Shougo/vimshell.vim'            "depends on vimproc
"Plug 'Shougo/deol.nvim'


" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" resource manager
 " On-demand loading
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle'  }
Plug 'majutsushi/tagbar'
"Plug 'jlanzarotta/bufexplorer'

" syntax for language
Plug 'elzr/vim-json'
" c++
Plug 'octol/vim-cpp-enhanced-highlight'

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


" selection
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'tpope/vim-surround'

" locate
Plug 'vim-scripts/a.vim'
"
Plug 'mhinz/vim-startify'
Plug 'vim-ctrlspace/vim-ctrlspace'

" display
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'Yggdroot/indentLine'

" guide
"Plug 'Shougo/echodoc.vim'
Plug 'sjl/gundo.vim'
Plug 'drmikehenry/vim-headerguard'
Plug 'terryma/vim-multiple-cursors'
"Plug 'derekwyatt/vim-scala'
"
" comment
Plug 'preservim/nerdcommenter'
"
" markdown
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }  }


" format
 " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
 "
Plug 'axelf4/vim-strip-trailing-whitespace'
Plug 'junegunn/vim-easy-align'


" completer
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'easymotion/vim-easymotion'
" a syntax checking
Plug 'scrooloose/syntastic'
" bracket
Plug 'jiangmiao/auto-pairs'
"Plug 'neoclide/coc.nvim'
 Plug 'ervandew/supertab'

" the best code completer for c++, python etc
Plug 'ycm-core/YouCompleteMe',{'do': './install.py --clang-completer'}

" plugin from http://vim-scripts.org/vim/scripts.html
Plug 'vim-scripts/L9'
"
"
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

 " Initialize plugin system
call plug#end()"


filetype plugin indent on    " required
"filetype plugin on
"
"common conf {{             通用配置

syntax enable
syntax on 		        "语法高亮
"
" solarized {{
set background=dark
"set background=light
let g:colors_name='solarized'
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast='normal'
let g:solarized_visibility='normal'
colorscheme solarized
"}}
"colorscheme darkblue    "设置配色方案，vim自带的配色方案保存在/usr/share/vim/vim74/colors目录下
"colorscheme molokai      "设置配色方案，vim自带的配色方案保存在/usr/share/vim/vim74/colors目录下
"colorscheme Tomorrow-Night-Eighties
"
set tabstop=4 		    " 设置制表符(tab键)的宽度
set softtabstop=4           " 设置软制表符的宽度
"
set shiftwidth=4            " (自动) 缩进使用的4个空格
"
"set ai                      "自动缩进
"set autoindent
"设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
set cindent 		    " 使用 C/C++ 语言的自动缩进方式
"set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
""设置C/C++语言的具体缩进方式

set bs=2                    "在insert模式下用退格键删除
set showmatch               "设置匹配模式，显示匹配的括号
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数

set number                  "显示行号

set cursorline              "为光标所在行加下划线

set autoread                "文件在Vim之外修改过，自动重新读入

set ignorecase              "检索时忽略大小写
set fileencodings=uft-8     ",gbk "使用utf-8或gbk打开文件
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
set encoding=utf-8	        "帮助文件的文本是utf-8编码的, 如果想用vim直接查看, 需要中设置：

set foldmethod=syntax       "代码折叠
set foldlevel=100           "启动vim时不要自动折叠代码 za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠

set history=50		        " set command history to 50 "历史记录50条

"--状态行设置--
set laststatus=2	        "总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
set ruler                   "标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上
"
""--命令行设置--
set showcmd 		        "命令行显示输入的命令
set showmode		        "命令行显示vim当前模式

"--find setting--
"set incsearch		  " 输入字符串就显示匹配点
"set hlsearch
"
""set list		    "显示换行符
"set nolist		    "隐藏换行符
"
let mapleader = ';'

"switch buffers{{
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bn :bn<CR>
"}}

"映射光标在窗口间移动的快捷键{{
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

"NERDTree{{
map nt :NERDTreeToggle<CR>
"let NERDTreeWinSize=23
"autocmd vimenter * NERDTree

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

"}}

"TagBar{{
map tb :TagbarToggle<CR>
"nmap <Leader>tb  "\
"let g:tagbar_ctags_bin='/usr/bin/ctags'
"let g:tagbar_width=30
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
"}}


"CtrlP{{
nnoremap <leader>cp :CtrlP<CR>
nnoremap <leader>ce :CtrlPBuffer<CR>
""set runtimepath^=~/.vim/bundle/ctrlp.vim
"}}


"YCM{{
"" 自动补全配置
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
"上下左右键的行为 会显示其他信息
"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" :
""\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"youcompleteme  默认tab  s-tab 和自动补全冲突
""let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
"let g:ycm_key_list_previous_completion = ['<Up>']
"let g:ycm_confirm_extra_conf=1
""关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0			" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全

let g:ycm_server_log_level = 'debug'
let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
let g:ycm_server_python_interpreter = '/usr/bin/python3'

"let g:ycm_global_ycm_extra_conf =
"'~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with
"syntastic
"nnoremap <leader>lo :lopen<CR>				"open locationlist
"nnoremap <leader>lc :lclose<CR>				"close
"locationlist
"inoremap <leader><leader> <C-x><C-o>
""在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
"let g:ycm_complete_in_strings = 1
""注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jf :YcmCompleter GoToDefinition<CR>

"    GoToDeclaration
"    "    GoToDefinition
"    "    GoToDefinitionElseDeclaration
"    "}}


" supertab {{
let g:SuperTabDefaultCompletionType = '<C-n>'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"}}


"Airline {{

"set laststatus=2
set t_Co=256        "required
let g:airline_theme="durant"

"这个是安装字体后 必须设置此项"
let g:airline_powerline_fonts = 1 

"打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
"我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

"设置切换Buffer快捷键"
"nnoremap <C-N> :bn<CR>
"nnoremap <C-P> :bp<CR>

" 关闭状态显示空白符号计数
"let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'

let g:airline_exclude_preview = 1

"}}


"CtrlSpace{{

"不用移动手指哟
nnoremap <leader>dk :CtrlSpace<CR>

"let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
"let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
"let g:CtrlSpaceSaveWorkspaceOnExit = 1

"}}

"a.vim {{

nnoremap <leader>gt :A<CR>
nnoremap <leader>gv :AV<CR>
nnoremap <leader>gh :AS<CR>

"}}

"VimShell {{

nnoremap <leader>vs :VimShell<CR>
nnoremap <leader>vc :VimShellClose<CR>


"}}

"Header guard{{

nnoremap <leader>hga :HeaderguardAdd<CR>


"}}
"
" vim-cpp-enhanced-highlight {{
"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
"let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
"
"
" }}
"
"
let g:gitgutter_terminal_reports_focus = 0

"bufexplorer{{
"be' (normal open) or 'bt' (toggle open / close)
"'bs' (force horizontal split open)
"'bv' (force vertical split open)

"The set of commands that can be used during exploring are: 
"F - Open selected buffer in another window above the current. 
"f - Open selected buffer in another window below the current. 
"V - Open the selected buffer in another window on the left of the current. 
"v - Open the selected buffer in another window on the right of the current.

"}}
"
" LeaderF {{
"
"let g:Lf_PreviewInPopup = 1
let g:Lf_WindowPosition = 'popup'

"
" }}

"Rufus
set path+=~/develop/rufus/rufus,~/develop/rufus,~/develop/rufus/lib

-"----------DOCUMENT---------
-"do not indent when paste
-"set paste , before pasting
-"set nopaste , after pasting

set viminfo='100,n$HOME/.vim/files/info/viminfo'
