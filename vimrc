syntax on
set background=dark
filetype plugin indent on
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set nocompatible
set shortmess+=I
set number
set laststatus=2
set backspace=indent,eol,start
set noerrorbells
set novisualbell
set vb t_vb=
setlocal noswapfile
set bufhidden=hide
set cursorline
set tabstop=4
set ruler
set nobackup
set autochdir
set backupcopy=yes
set hlsearch
set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set smartindent " 开启新行时使用智能自动缩进
set cmdheight=1 " 设定命令行的行数为 1
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " 设置在状态行显示的信息
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为 1
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠
" Set cursor shape and color
if &term =~ "xterm"
    " INSERT mode
    let &t_SI = "\<Esc>[6 q"
    " REPLACE mode
    let &t_SR = "\<Esc>[3 q"
    " NORMAL mode
    let &t_EI = "\<Esc>[2 q"
endif
if exists('$TMUX')
    let &t_SI .= "\e[6 q"
    let &t_SR .= "\e[3 q"
    let &t_EI .= "\e[2 q"
endif
autocmd VimEnter * silent !echo -ne "\e[1 q"
autocmd VimLeave * silent !echo -ne "\e[5 q"
nnoremap <BS> :nohl<return>
