" #########################################################
" Mixed stuff
" #########################################################
" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Enable backspace
set bs=2

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions=ces$

" Make sure that unsaved buffers that are to be put in the background are 
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden

" Show the line number
set number

" Show the line and column number of the cursor position
set ru

" Show the current mode
set showmode

" Enable virtual edit
set virtualedit=all

" Enable the wild menu (auto-completion,..)
set wildmenu

" Switch on syntax highlighting.
syntax on

" Allow searches in a smart way
set ignorecase smartcase

" #########################################################
" Mappings 
" #########################################################
let mapleader=","

""""""""""""""""""""""""""""""""""""""
" Key mappings
""""""""""""""""""""""""""""""""""""""
" Move among windows
noremap <silent> <Leader>h :wincmd h<CR>
noremap <silent> <Leader>j :wincmd j<CR>
noremap <silent> <Leader>k :wincmd k<CR>
noremap <silent> <Leader>l :wincmd l<CR>

" Go to the previous window
noremap <silent> <Leader>sb :wincmd p<CR>

" Resize the current window (height and width)
noremap <silent> <C-F9>  :vertical resize -10<CR>
noremap <silent> <C-F10> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F12> :vertical resize +10<CR>

" Close a window
noremap <silent> <Leader>cj :wincmd j<CR>:close<CR>
noremap <silent> <Leader>ck :wincmd k<CR>:close<CR>
noremap <silent> <Leader>ch :wincmd h<CR>:close<CR>
noremap <silent> <Leader>cl :wincmd l<CR>:close<CR>
noremap <silent> <Leader>cc :close<CR>
noremap <silent> <Leader>cw :cclose<CR>

" Close all the others windows 
noremap <silent> <Leader>oo :wincmd o<CR>

" Move from one window to another one
noremap <silent> <Leader>ml <C-W>L
noremap <silent> <Leader>mk <C-W>K
noremap <silent> <Leader>mh <C-W>H
noremap <silent> <Leader>mj <C-W>J

""""""""""""""""""""""""""""""""""""""
" Edition mappings
""""""""""""""""""""""""""""""""""""""
" Edit the vimrc file
nmap <silent> <Leader>ev :e $HOME/.vimrc<CR>
nmap <silent> <Leader>sv :so $HOME/.vimrc<CR>

" Edit the bashrc file
nmap <silent> <Leader>eb :e $HOME/.zshrc<CR>

""""""""""""""""""""""""""""""""""""""
" NERDTree settings
""""""""""""""""""""""""""""""""""""""
" Toggle the NERD Tree
noremap <silent> <Leader>nt :NERDTreeToggle<CR>


" #########################################################
" Colors for vim
" #########################################################
" Solarizd8
colorscheme solarized8_flat


" #########################################################
" Plugins settings  
" #########################################################

""""""""""""""""""""""""""""""""""""""
" Pathogen settings
""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
call pathogen#helptags()

""""""""""""""""""""""""""""""""""""""
" Vim-LaTeX settings
""""""""""""""""""""""""""""""""""""""
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" little indentation on latex files
set iskeyword+=:

" Compilation to PDF
let g:Tex_DefaultTargetFormat='pdf'

" Default PDF viewer
let g:Tex_ViewRule_pdf='evince'

" Compilation of a file
let g:Tex_CompileRule_pdf = 'pdflatex --interaction=nonstopmode $*'
