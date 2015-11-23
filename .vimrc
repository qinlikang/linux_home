
set nobackup
" Sets how many lines of history VIM has to remember
set history=600
" Set to auto read when a file is changed form the outside
set autoread
" Always show current position
set ruler
" Height of the command bar
set cmdheight=2
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

"set t_Co=256
"colorscheme elflord

" With a map leader it's possible to do extra key combinations like <leader>w
" saves the curren file
let mapleader=","
let g:mapleader=","
" Fast saving
nmap <leader>w :w!<cr> 
nmap <leader>Grep :Grep<cr>
" 不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide

"set filetype=python
"au BufNewFile,BufRead *.py,*.pyw setf python

set autoindent " Same level indent
set smartindent " Next level indent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nu
set incsearch " 输入字符串就显示匹配点
"set ignorecase " 搜索时忽略大小写
"set nohls
set iskeyword+=_,$,@,%,#,- "带有这些符号的单词不要被换行分割
" set foldmethod=indent
set wildmenu " 自动补全命令时候使用菜单式匹配列表
set completeopt=longest,menu
"set completeopt=menuone,longest,preview

" grep
" nmap <C-!>g :!grep <C-R>=expand("<cword>")<CR> * -rn --exclude-dir=*.svn<CR>
" nnoremap <C-!>g :!grep import * -rn --exclude-dir=*.svn<CR>

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White
"set statusline=%F%m%r%h%w [%{(&fenc=="")?&enc:&fenc}% {(&bomb?",BOM":"")}] %y%r%m%*%= [%l,%v] [%p%%] [共%L行] %{strftime("%d/%m/%y - %H:%M")}
"powerline{
set guifont=PowerlineSymbols " for Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}

""""""""""""""""Vundle settings""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
Plugin 'ervandew/supertab'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'bufexplorer.zip'
Plugin 'taglist.vim'
Plugin 'vimwiki'
Plugin 'The-NERD-tree'
Plugin 'Conque-Shell'
Plugin 'FuzzyFinder'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

"语法高亮
""""""""""""""""""""""""""""""""
"Bundle 'JavaScript-syntax'
"Bundle 'jQuery'
"Bundle 'othree/html5.vim'
"Bundle 'groenewege/vim-less'
"Bundle 'Markdown'
"Bundle 'Markdown-syntax'
"Bundle 'php.vim-html-enhanced' "一个TAB为3个空格 = =
"Bundle 'css_color.vim' 
"增加了rgb显示颜色和同行显示多处颜色
"Bundle 'skammer/vim-css-color'

" Above the Vim UI
"Bundle 'winmanager'
"Bundle 'scrooloose/nerdtree'
"Bundle 'scrooloose/nerdcommenter'
"Bundle 'taglist.vim'
"Bundle 'fholgado/minibufexpl.vim'
"Bundle 'bufexplorer.zip'
"Bundle 'Lokaltog/vim-powerline'

" Make gvim-only colorschemes work transparently
" in terminal vim
"Bundle 'CSApprox' 

""""""""""""""""""""""""AutoComplete""""""""""""""""""""""""
Bundle 'AutoComplPop'
"自带了snippets
"Bundle 'msanders/snipmate.vim'
Bundle 'Pydiction'
Bundle 'Shougo/neocomplcache'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
"Bundle 'honza/snipmate-snippets'
"Bundle 'spf13/snipmate-snippets'
"Bundle 'garbas/vim-snipmate'
Bundle 'word_complete.vim'
Bundle 'closetag.vim'

"Bundle 'ZenCoding.vim'
"let g:user_zen_expandabbr_key='<C-u>'


" PHP 
" press K on a function for full PHP manual
"Bundle 'spf13/PIV'

" Tools
"""""""""""""""""""""""""""""""
"Bundle 'udonmai/Conque-Shell'
Bundle 'grep.vim'
"Bundle 'vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""""""""""""""""minibufexplorer settings""""""""""""""""
"let g:miniBufExplMapWindowNavVim = 1 " 按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
"let g:miniBufExplMapWindowNavArrows = 1 " 按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
"let g:miniBufExplMapCTabSwitchBufs = 1 " 启用以下两个功能：Ctrl+tab移到下一个buffer并在当前窗口打开；Ctrl+Shift+tab移到上一个buffer并在当前窗口打开；ubuntu好像不支持
"let g:miniBufExplMapCTabSwitchWindows = 1 " 启用以下两个功能：Ctrl+tab移到下一个窗口；Ctrl+Shift+tab移到
":MiniBufExplorer    " Open and/or goto Explorer
":CMiniBufExplorer   " Close the Explorer if it's open
":UMiniBufExplorer   " Update Explorer without naviting
":TMiniBufExplorer   " Toggle the Explorer window open and closed

""""""""""""""""omni-complete settings""""""""""""""""
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascrīpt set omnifunc=javascriptcomplete#CompleteJS 
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags 
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

""""""""""""""""SuperTab settings""""""""""""""""
let g:SuperTabDefaultCompletionType="context"
"let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletinType="<C-X><C-O>" " Use <Tab> to instead <Ctrl+X, Ctrl+O>

""""""""""""""""""""Python sp""""""""""""""""""
" pydiction 1.2 python auto complete
let g:pydiction_location = '~/.vim/bundle/Pydiction'
" defalut g:pydiction_menu_height == 15    
let g:pydiction_menu_height = 20

""""""""""""""""taglist settings""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示

""""""""""""""""cscope settings""""""""""""""""
if has("cscope")
    set cscopequickfix=s-,c-,d-,i-,t-,e-
    set csprg=/usr/bin/cscope
"    set csto=0
"    set cst
    set nocst
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

"==========================================
"Using cscope in Vim
"==========================================
"Add new cscope database connection          :cs add {file|dir}
"Find this C symbol                          :cs find {0|s} <symbol name>
"Find this definition                        :cs find {1|g} <definition name>
"Find functions called by this function      :cs find {2|d} <function name>
"Find functions calling this fuction         :cs find {3|c} <function name>
"Find this text string                       :cs find {4|t} <text>
"Find this egrep pattern                     :cs find {6|e} <pattern>
"Find this file                              :cs find {7|f} <filename>
"Find files #including this file             :cs find {8|i} <filename>
"Help                                        :cs help
"Show cscope connections                     :cs show
"Reinit all cscope connections               :cs reset
"Kill cscope connection                      :cs kill {number|partial_name}
"Show documentation                          :help if_cscop.txt
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>          
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

nmap <C-n>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-n>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-n>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-n>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-n>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-n>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-n>i :vert scs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-n>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>

""""""""""""""""NERDTree settings""""""""""""""""
let NERDChristmasTree=1
let NERDChristmasTree=1
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31

""""""""""""""""Powerline settings"""""""""""""""""
"set laststatus=2
"set t_Co=256
"let g:Powerline_symbols = 'unicode'
"set encoding=utf8

""""""""""""""""shell settings""""""""""""""""""
function InsertShellComment()
    exe 'normal'.1.'G'
    let line = getline('.')
    normal O
    call setline('.', '#!/bin/bash')
endfunction
function InsertShellCommentWhenOpen()
    if a:lastline == 1 && !getline('.')
        call InsertShellComment()
    end
endfunc
au FileType sh :%call InsertShellCommentWhenOpen()

""""""""""""""""Python settings"""""""""""""""""
"Python 注释
function InsertPythonComment()
    exe 'normal'.1.'G'
    let line = getline('.')
    if line =~ '^#!.*$' || line =~ '^#.*coding:.*$'
        return
    endif
    normal O
    call setline('.', '#!/usr/bin/env pypy')
    normal o
    call setline('.', '# -*- coding:utf-8 -*-')
    normal o
    call setline('.', '#')
    normal o
    call setline('.', '#   Author  :   '.g:python_author)
    normal o
    call setline('.', '#   E-mail  :   '.g:python_email)
    normal o
    call setline('.', '#   Date    :   '.strftime("%y/%m/%d %H:%M:%S"))
    normal o
    call setline('.', '#   Desc    :   ')
    normal o
    call setline('.', '#')
    normal o
    call cursor(7, 17)
endfunction
function InsertCommentWhenOpen()
    if a:lastline == 1 && !getline('.')
        call InsertPythonComment()
    end
endfunc
au FileType python :%call InsertCommentWhenOpen()
au FileType python map <F4> :call InsertPythonComment()<cr>
let g:python_author = 'qinlikang'
let g:python_email = 'qinlikang@tuyoo.com'

