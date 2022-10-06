" DO NOT EDIT THIS FILE
" Add your own customizations in ~/.vim_runtime/my_configs.vim


" packadd minpac
" call minpac#init()

call plug#begin('~/.vim/plugged')
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'easymotion/vim-easymotion' " 高亮查找
Plug 'frazrepo/vim-rainbow' "彩虹括号,启用 :RainbowLoad 
"Plug 'ghifarit53/tokyonight-vim' " 主题 
Plug 'iamcco/markdown-preview.nvim', {'do':{->mkdp#util#install()}, 'for':['markdown','vim-plug']} "MarkDown预览
Plug 'jiangmiao/auto-pairs' "括号成双
Plug 'junegunn/fzf', {'do': {-> fzf#install()}} " 模糊匹配 :Files
Plug 'junegunn/fzf.vim'
"Plug 'kristijanhusak/defx-icons' " 文件图标
Plug 'ludovicchabant/vim-gutentags'
"Plug 'mattn/calendar-vim' "日历
"Plug 'majutsushi/tagbar' " 相当于大纲
" Plug 'mbbill/desertEx' " 主题
"Plug 'mbbill/undotree' " 撤销树, 在使用其他编辑器之前先用vim打开并保存该文件,修改完之后再用vim :e打开该文件并保存
"Plug 'mg979/vim-visual-multi' "光标同时操作多个位置
Plug 'mhinz/vim-startify' " 启动界面
" Plug 'morhetz/gruvbox' " 主题
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'preservim/nerdcommenter' " 注释/取消多行注释
Plug 'preservim/nerdtree'
"Plug 'ryanoasis/vim-devicons' " 文件图标
Plug 'qpkorr/vim-renamer'
Plug 'skywind3000/asyncrun.vim' " 在构建的时候可以做其他的事情
Plug 'tpope/vim-eunuch' " 解决改名或移动之后撤销历史对不上的问题
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat' " 重复下边自定义的组合命令
Plug 'tpope/vim-surround' " 实现一些组合命令
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/LargeFile' "加速日志的打开
Plug 'wsdjeg/vim-todo' "fixme, idea, quextion, todo
Plug 'yegappan/mru'
Plug 'Yggdroot/indentLine'
Plug 'Yggdroot/LeaderF', {'do':'./install.sh'}
call plug#end()

" 最上边与最下边保留的行数
set scrolloff=8
"set cursorline "高亮所在行
set number
set completeopt=longest,menu             " 自动补全配置让Vim补全菜单行为跟IDE一致
set splitbelow "split window从下边出现
set splitright "split window从右边出现

"搜索大小写不敏感，除非包含大写
set ignorecase
set smartcase

"边输入便搜索
set incsearch

" 设置光标样式
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let g:AutoPairsShortcutToggle = 'π' "禁用括号成双的键盘映射
let g:LargeFile = 100 "日志开始加速的大小
let g:mkdp_browser = '/usr/bin/google-chrome'

let mapleader = " "
"上下滚动
nnoremap <C-j> 4j
nnoremap <C-k> 4k
nnoremap <C-u> 9k
nnoremap <C-d> 9j

nnoremap ;q  :q<CR>
nnoremap ;w  :w<CR>
nnoremap ;wq :wq<CR>
nnoremap ;qq :q!<CR>
nnoremap <Leader>g  :NERDTreeToggle<CR>
" nnoremap <Leader>f  :NERDTreeFind<CR>
nnoremap <Leader>f :Files<CR>

" 开关Tagbar插件的键映射
nnoremap <Leader>t      :TagbarToggle<CR>
inoremap <Leader>t <C-O>:TagbarToggle<CR>

" vim多窗口快捷键前缀
nnoremap <Leader><Tab> <C-W>w
inoremap <Leader><Tab> <C-O><C-W>w
nnoremap <Leader><Tab> <C-W>W
inoremap <Leader><Tab> <C-O><C-W>W

" 多窗口
nnoremap <Leader>sp :sp<CR>
nnoremap <Leader>vs :vs<CR>

"多窗口左右比例控制
nnoremap <C-Left> :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>
nnoremap s, :vertical resize -20<CR>
nnoremap s. :vertical resize +20<CR>

"多窗口左右比例控制
nnoremap sj :resize +10<CR>
nnoremap sk :resize -10<CR>
nnoremap <C-Up> :resize -2<CR>
nnoremap <C-Down> :resize +2<CR>

" 多文件打开
nnoremap <Leader>n  :n<CR>
nnoremap <Leader>N  :N<CR>
nnoremap <Leader>fi :first<CR>
nnoremap <Leader>la :last<CR>

" 缓冲区
nnoremap <Leader>ls :ls<CR>
nnoremap <Leader>b  :b
nnoremap <Leader>bf :bfirst<CR>  " 跳到缓冲区列表的第一个文件 
nnoremap <Leader>bl :blast<CR>   " 跳到缓冲区列表的最后一个文件

" 用于 quickfix、标签和文件跳转的键映射
"nmap <Leader>cn   :cn<CR>      " 下一个出错的位置
"nmap <Leader>cp   :cp<CR>      " 上一个出错的位置
"nmap <Leader>co :copen<CR>     " 打开quickfix窗口 
"nmap <Leader>cl :cclose<CR>    " 关闭quickfix窗口
"nmap <C-F11> :tn<CR>
"nmap <C-F12> :tp<CR>
"nmap <S-F11> :n<CR>
"nmap <S-F12> :prev<CR>

"注释
nnoremap <Leader>cc <Leader>cc "加注释
nnoremap <Leader>cu <Leader>cu "取消注释
nnoremap <Leader>c<>Leader <Leader>c<>Leader "加上或取消注释
"easymotion快捷键
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
if !has('patch-8.0.210')
  " 进入插入模式时启用括号粘贴模式
  let &t_SI .= "\<Esc>[?2004h"
  " 退出插入模式时停用括号粘贴模式
  let &t_EI .= "\<Esc>[?2004l"
  " 见到 <Esc>[200~ 就调用 XTermPasteBegin
  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

  function! XTermPasteBegin()
    " 设置使用 <Esc>[201~ 关闭粘贴模式
    set pastetoggle=<Esc>[201~
    " 开启粘贴模式
    set paste
    return ""
  endfunction
endif

" cinoptions精调c, :0 switch下面的case不额外缩进, g0 作用域声明不额外缩进, (0, w1 没结束的圆括号里的内容折行时不额外缩进
au FileType c,cpp,objc  setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4 cinoptions=:0,g0,(0,w1
au FileType json        setlocal expandtab shiftwidth=2 softtabstop=2
au FileType vim         setlocal expandtab shiftwidth=2 softtabstop=2


" 和 asyncrun 一起用的异步 make 命令
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>


" 异步运行命令时打开 quickfix 窗口，高度为 10 行
let g:asyncrun_open = 10


"C/C++  映射按键来快速启停构建
nnoremap <F5>  :if g:asyncrun_status != 'running'<bar>
                 \if &modifiable<bar>
                   \update<bar>
                 \endif<bar>
                 \exec 'Make'<bar>
               \else<bar>
                 \AsyncStop<bar>
               \endif<CR>

set termguicolors

"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 1

" vim-airline设置
"set laststatus=2  "永远显示状态栏
"let g:airline_powerline_fonts = 1  " 支持 powerline 字体
"let g:airline#extensions#tabline#enabled = 1 " 显示窗口tab和buffer
"let g:airline_theme='gruvbox' " murmur配色不错
"let g:lightline = {'colorscheme' : 'gruvbox'}

set termguicolors

"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 1

" colorscheme desertEx 
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
" let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
" let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

" 启用 man 插件
source $VIMRUNTIME/ftplugin/man.vim
set keywordprg=:Man

" 在文件已打开时自动切换到已打开的窗口上
if v:version >= 800
  packadd! editexisting
endif

if !has('gui_running')
	let g:NERDMenuMode = 0
endif

"vim-gutentags
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
