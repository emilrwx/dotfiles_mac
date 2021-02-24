" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

function! GetSyntaxID()
    return synID(line('.'), col('.'), 1)
endfunction

function! GetSyntaxParentID()
    return synIDtrans(GetSyntaxID())
endfunction

function! GetSyntax()
    echo synIDattr(GetSyntaxID(), 'name')
    exec "hi ".synIDattr(GetSyntaxParentID(), 'name')
endfunction

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax enable

" Aallows you to re-use the same window and switch from an unsaved buffer
" without saving it first.
set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

set noshowmode

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
nnoremap <C-L> :nohl<CR><C-L>

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
set nostartofline

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Enable use of the mouse for all modes
set mouse=a

" Display line numbers
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Map arrow keys to move naturally
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

" Use system clipboard
set clipboard=unnamedplus,unnamed,autoselect

" If normal mode, insert new line and print current time with F3. If insert
" mode, print current time with F3
nmap <Home> o<C-R>=strftime("**%H:%M:%S -** ")<CR>
imap <Home> <C-R>=strftime("**%H:%M:%S -** ")<CR>

" 1 tab is 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Use spaces instead of tabs
set expandtab

" Hide foldcolumn
set foldcolumn=0
highlight FoldColumn ctermbg=0

" Turn backup off
set nobackup
set nowb
set noswapfile

set si "Smart indent
set wrap "Wrap lines

" Set utf8 as standard encoding
set encoding=utf-8


set breakindent
set linebreak

" Always show 10 lines before and after cursor
set scrolloff=10

" Scroll past lastline
set display+=lastline

" Set theme
set background=dark
colorscheme fresh

" Hide emptyline sign
hi EndOfBuffer ctermfg=0

" Split window colors
hi VertSplit ctermfg=0 ctermbg=8
set fillchars=vert:\│

" Statusline colors
hi User3 ctermbg=NONE ctermfg=1
hi User2 ctermbg=NONE ctermfg=3
hi User1 ctermbg=NONE ctermfg=2
hi statusline ctermfg=NONE ctermbg=2
hi statuslineNC ctermfg=NONE ctermbg=NONE

" Always display the status line, even if only one window is displayed
set laststatus=2

" Normal statusline
set statusline=%1*                  " change colors
set statusline+=[%{GetMode()}]      " show mode
set statusline+=%2*                 " change colors
set statusline+=\ %t                " file name
set statusline+=%3*                 " change colors
set statusline+=\ %m                " modified flag
set statusline+=%2*                 " change colors
set statusline+=%=                  " split alignment to right from here
set statusline+=%l/%L               " line X of Y
set statusline+=\ %y                " show filetype

" statusline for markdown files
function StatuslineMD()
    set statusline=%1*              " change colors
    set statusline+=[%{GetMode()}]  " show mode
    set statusline+=%2*             " change colors
    set statusline+=\ %t            " file name
    set statusline+=%3*             " change colors
    set statusline+=\ %m            " modified flag
    set statusline+=%2*             " change colors
    set statusline+=%=              " split alignment to right from here
    set statusline+=line\ %l\ of\ %L    " line X of Y
    set statusline+=\ (%{WordCount()}\ words)   " Get word count
endfunction

" Get current mode
function! GetMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction

" Get word count for current file
function! WordCount()
   let s:old_status = v:statusmsg
   let position = getpos(".")
   exe ":silent normal g\<c-g>"
   let stat = v:statusmsg
   let s:word_count = 0
   if stat != '--No lines in buffer--'
     let s:word_count = str2nr(split(v:statusmsg)[11])
     let v:statusmsg = s:old_status
   end
   call setpos('.', position)
   return s:word_count 
endfunction

" Filetype spesific settings
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd filetype markdown setlocal nonumber
autocmd filetype markdown setlocal conceallevel=2
autocmd filetype netrw setlocal statusline=%1*%=%l/%L
autocmd filetype markdown setlocal statusline=%{StatuslineMD()}

" File explorer
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=20


" Configuration for vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
