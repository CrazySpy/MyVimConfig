set nocompatible


syntax on
"colorscheme torte
colorscheme solarized
set background=dark
set number
set cursorline

set tabstop=4
set softtabstop=4
set shiftwidth=4
set cmdheight=1
set smartindent
set laststatus=2
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 

set guifont=Menlo:h11
"set guifontwide=手札体-简

"arctouch还是关闭中键粘贴
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'xolox/vim-session'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/ListToggle'
"Plugin 'vim-scripts/php.vim-html-enhanced'
Plugin 'othree/html5.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
Plugin 'skywind3000/asynctasks.vim'
Plugin 'skywind3000/asyncrun.vim'
call vundle#end()
filetype plugin indent on

let g:session_default_overwrite = 1
let g:session_autoload = "no"
autocmd VimLeavePre SaveSession
let g:session_autosave = "yes"

"" YCM
" 从注释、字符串、tag文件中收集用于补全信息
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_of_chars_for_completion = 2  " 输入第2个字符就罗列匹配项
" 语法关键字、注释、字符串补全
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
" ycm_extra_conf.py的配置
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0  " 不提示是否载入本地ycm_extra_conf文件
" 错误和警告的符号定义
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '⚠'
" 转到定义
inoremap <D-d> <ESC>:YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <D-d> :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_key_list_stop_completion = ['<CR>']


"" asynctasks & asyncrun
let g:asyncrun_open = 6 " 自动打开quickfix窗口
" 快捷键Command+f5运行，Command+f6编译
noremap <D-f5> :AsyncTask file-run<cr>
noremap <D-f6> :AsyncTask file-build<cr>



nmap <D-f2> :NERDTreeToggle<CR>
imap <D-f2> <ESC>:NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


let g:lt_location_list_toggle_map = '<D-f3>'
let g:lt_quickfix_list_toggle_map = '<D-f4>'

noremap <D-f7> :TagbarToggle<CR>
inoremap <D-f7> <ESC>:TagbarToggle<CR>


set sw=4
