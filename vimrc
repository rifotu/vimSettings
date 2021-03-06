" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set background=dark
"colorscheme badwolf
colorscheme molokai

set number
set ruler
"set showcmd
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set cursorline
filetype indent on
set wildmenu
set showmatch
set incsearch
set hlsearch

imap jj <ESC>
set autoindent
set cindent
set pastetoggle=<f11> "hit f11 to toggle between paste mode and no paste mode
"nnoremap yy yy"+yy
"vnoremap y ygy"+y
"" global paste
"noremap gp "+p  

set backspace=indent,eol,start
set nowrap    
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

let mapleader=" "  " leader is space
" save current file
nnoremap <leader>s :w!<CR> 
nnoremap <leader>v :tabedit $MYVIMRC<CR>


"open ag.vima by ,a
nnoremap <leader>a :Ag
nnoremap <leader>e :Ex<CR>
nnoremap <leader>w :NERDTreeToggle<CR>
nnoremap <leader>t <C-W>w

set clipboard=unnamedplus

augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

nmap <F8> :TagbarToggle<CR>

call pathogen#infect()    " use pathogen
"call pathogen#runtime_append_all_bundles() " use pathogen
