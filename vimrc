" ************************************************** Vundle设置开始 ************************************************** “
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'                   " solarized主题
Plugin 'scrooloose/nerdtree'                                " 目录树
Plugin 'majutsushi/tagbar'                                  " 标签导航
Plugin 'vim-airline/vim-airline'                            " 状态栏优化
Plugin 'Valloric/YouCompleteMe'                             " 自动补全
Plugin 'scrooloose/nerdcommenter'                           " 快速注释
call vundle#end()
" ******************** solarized设置开始 ******************** "
let g:solarized_termtrans=0                                 " 使用终端背景(1为终端默认背景，0为主题背景)
let g:solarized_visibility="high"                           " 使用:set list显示特殊字符时的高亮级别
set background=dark                                         " 设置深色背景
colorscheme solarized                                       " 设置主题模式
" ******************** solarized设置结束 ******************** "
" ******************** nerdtree设置开始 ******************** "
let NERDTreeHighlightCursorline = 1       " 高亮当前行
let NERDTreeShowLineNumbers     = 1       " 显示行号
" 忽略列表中的文件
let NERDTreeIgnore = [ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.egg$', '^\.git$', '^\.repo$', '^\.svn$', '^\.hg$' ]
"autocmd vimenter * NERDTree                                " 启动vim时打开NERDTree
map <F7> :NERDTreeToggle<CR>                                " 打开 nerdtree窗口
map <leader>tc :tabc<CR>                                    " 关闭当前的tab
map <leader>to :tabo<CR>                                    " 关闭所有其他的tab
map <leader>ts :tabs<CR>                                    " 查看所有打开的tab
map <leader>tp :tabp<CR>                                    " 前一个tab
map <leader>tn :tabn<CR>                                    " 后一个tab
" ******************** nerdtree设置结束 ******************** "
" ******************** tagbar设置开始 ******************** "
let g:tagbar_ctags_bin='ctags'                              " tagbar依赖ctags插件
let g:tagbar_width=30                                       " 设置tagbar的宽度为30列，默认40列
let g:tagbar_autofocus=1                                    " 打开tagbar时光标在tagbar页面内，默认在vim打开的文件内
let g:tagbar_left=0                                         " 让tagbar在页面左侧显示，默认右边
let g:tagbar_sort=0                                         " 标签不排序，默认排序
map <F8> :TagbarToggle<CR>                                  " <leader>tb 打开 tagbar 窗口
" ******************** tagbar设置结束 ******************** "
" ******************** airline设置开始 ******************** "
let g:airline_powerline_fonts=1                             " 使用 powerline 打过补丁的字体
let g:airline#extensions#tabline#enabled=1                  " 开启 tabline
let g:airline#extensions#tabline#buffer_nr_show=1           " 显示 buffer 编号
let g:airline#extensions#ale#enabled=1                      " enable ale integration
" 状态栏显示图标设置
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_symbols.crypt     = '?'
let g:airline_symbols.linenr    = '⭡'
let g:airline_symbols.branch    = '⭠'
nnoremap <leader>bp :bp<CR>                                 " 切换上一个buffer
nnoremap <leader>bn :bn<CR>                                 " 切换下一个buffer
nnoremap <leader>ba :ls<CR>                                 " 列出所有buffer
noremap <C-x> :w<CR>:bd<CR>                                 " 关闭当前 buffer
" <leader>1~9 切到 buffer1~9
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>
" ******************** airline设置结束 ******************** "
" ******************** YouCompleteMe设置开始 ******************** "
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion= 2                " 输入第 2 个字符开始补全
let g:ycm_seed_identifiers_with_syntax=1                    " 语法关键字补全
let g:ycm_complete_in_comments=1                            " 在注释中也可以补全
let g:ycm_complete_in_strings=1                             " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_tag_files=1              " 使用 ctags 生成的 tags 文件
let g:ycm_collect_identifiers_from_comments_and_strings=1   " 注释和字符串中的文字也会被收入补全
let g:ycm_cache_omnifunc=0                                  " 每次重新生成匹配项，禁止缓存匹配项
let g:ycm_use_ultisnips_completer=0                         " 不查询 ultisnips 提供的代码模板补全，如果需要，设置成 1 即可
let g:ycm_show_diagnostics_ui=0                             " 禁用语法检查
let g:ycm_key_list_select_completion=['<Down>']             " 选择下一条补全，Default: ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion=['<Up>']             " 选择上一条补全，Default: ['<S-TAB>', '<Up>']
let g:ycm_key_list_stop_completion=['<Enter>']              " 中止此次补全，Default: ['<C-y>']
" ******************** YouCompleteMe设置结束 ******************** "
" ******************** NERDComment设置开始 ******************** "
let g:NERDSpaceDelims=1                                     " 在注释符号后加一个空格
let g:NERDCompactSexyComs=1                                 " 紧凑排布多行注释
let g:NERDDefaultAlign='left'                               " 逐行注释左对齐
let g:NERDAltDelims_java=1                                  " JAVA 语言使用默认的注释符号
let g:NERDCustomDelimiters={'c': {'left': '/*', 'right': '*/'}}     " C 语言注释符号
let g:NERDCommentEmptyLines=1                               " 允许空行注释
let g:NERDTrimTrailingWhitespace=1                          " 取消注释时删除行尾空格
let g:NERDToggleCheckAllLines=1                             " 检查选中的行操作是否成功
" ******************** NERDComment设置结束 ******************** "
" ************************************************** Vundle设置开始 ************************************************** “



" ************************************************** 基础设置开始 ************************************************** “
syntax on                                                                                       " 语法高亮
filetype plugin indent on                                                                       " 设置根据文件类型检测插件和缩进
set shortmess=atI                                                                               " 启动的时候不显示援助乌干达儿童的提示
set nu                                                                                          " 显示行号
set go=                                                                                         " 不要图形按钮
set guioptions-=T                                                                               " 隐藏工具栏
set guioptions-=m                                                                               " 隐藏菜单栏
set ruler                                                                                       " 显示标尺
set showcmd                                                                                     " 输入的命令显示出来，看的清楚些
set cmdheight=2                                                                                 " 命令行（在状态行下）的高度，设置为1
set scrolloff=3                                                                                 " 光标移动到buffer的顶部和底部时保持n行距离
set laststatus=2                                                                                " 启动显示状态行(1),总是显示状态行(2)
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936                                      " 设置编码
set termencoding=utf-8                                                                          " 设置终端编码
set encoding=utf-8                                                                              " 设置编码
set fileencoding=utf-8                                                                          " 设置文件编码
set completeopt=preview,menu                                                                    " 代码补全方式
set clipboard+=unnamed                                                                          " 共享剪贴板
set ruler                                                                                       " 打开状态栏标尺
set cursorline                                                                                  " 突出显示当前行
set magic                                                                                       " 设置魔术
set foldcolumn=0                                                                                " 设置折叠行数
set foldlevel=3                                                                                 " 设置折叠级别
set foldenable                                                                                  " 开始折叠
set foldmethod=indent                                                                           " 设置折叠方式为缩进
set foldmethod=manual                                                                           " 手动折叠
set confirm                                                                                     " 在处理未保存或只读文件的时候，弹出确认
set autoindent                                                                                  " 自动缩进
set cindent                                                                                     " C语音自动缩进
set smartindent                                                                                 " 设置智能缩进
set tabstop=4                                                                                   " Tab键的宽度
set softtabstop=4                                                                               " 统一缩进为4
set shiftwidth=4                                                                                " 统一缩进为4
set expandtab                                                                                   " 用空格代替制表符
set nobackup                                                                                    " 禁止生成临时备份文件
set noswapfile                                                                                  " 禁止生成临时交换文件
set noundofile                                                                                  " 禁止生成临时undo文件
set ignorecase                                                                                  " 搜索忽略大小写
set hlsearch                                                                                    " 搜索逐字符高亮
set incsearch                                                                                   " 搜索逐字符高亮
set gdefault                                                                                    " 行内替换
set langmenu=zh_CN.UTF-8                                                                        " 设置菜单语言
set helplang=cn                                                                                 " 设置帮助语言
set viminfo+=!                                                                                  " 保存全局变量
set backspace=2                                                                                 " 使回格键正常处理indent, eol, start等
set mouse=a                                                                                     " 可以在buffer的任何地方使用鼠标
set fillchars=vert:\ ,stl:\ ,stlnc:\                                                            " 在被分割的窗口间显示空白，便于阅读
set showmatch                                                                                   " 高亮显示匹配的括号
set scrolloff=3                                                                                 " 光标移动到buffer的顶部和底部时保持3行距离
" 自动跳到上次打开的光标位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" 在vim的插入模式时光标变细
if has("autocmd")
    au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
    au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
    au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
endif
" ************************************************** 基础设置结束 ************************************************** “



" ************************************************** 键盘设置开始 ************************************************** “
"自动补全
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction
" ************************************************** 键盘设置结束 ************************************************** “
