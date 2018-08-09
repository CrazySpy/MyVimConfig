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

set guifont=Source\ Code\ Pro:h14

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
Plugin 'vim-scripts/php.vim-html-enhanced'
Plugin 'Raimondi/delimitMate'
Plugin 'majutsushi/tagbar'
"Plugin 'godlygeek/tabular'
Plugin 'xolox/vim-misc'
Plugin 'skywind3000/vimmake'
"Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
call vundle#end()
filetype plugin indent on

let g:session_default_overwrite = 1
let g:session_autoload = "no"
autocmd VimLeavePre SaveSession
let g:session_autosave = "yes"

let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '⚠'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:EclimCompletionMethod = 'omnifunc'

let g:ycm_always_populate_location_list = 1
inoremap <D-d> <ESC>:YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <D-d> :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_key_list_stop_completion = ['<CR>']


nmap <D-f2> :NERDTreeToggle<CR>
imap <D-f2> <ESC>:NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


let g:vimmake_path = '~/.vim/VimmakeConfig'
let g:vimmake_mode = { 'compile':'async','run':'normal' }

noremap <D-f5> :VimTool run<CR>
inoremap <D-f5> <ESC>:VimTool run<CR>

noremap <D-f6> :VimTool compile<CR>
inoremap <D-f6> <ESC>:VimTool compile<CR>

let g:lt_location_list_toggle_map = '<D-f3>'
let g:lt_quickfix_list_toggle_map = '<D-f4>'

noremap <D-f7> :TagbarToggle<CR>
inoremap <D-f7> <ESC>:TagbarToggle<CR>
