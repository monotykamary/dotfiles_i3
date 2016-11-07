" Vim-Plug called Plugins
call plug#begin()

Plug 'Shougo/unite-outline'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }

Plug 'NLKNguyen/papercolor-theme'
Plug 'PProvost/vim-ps1'
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'fatih/vim-go'
Plug 'gregsexton/gitv'
Plug 'honza/vim-snippets'
Plug 'jacoborus/tender'
Plug 'ludovicchabant/vim-lawrencium'
Plug 'majutsushi/tagbar'
Plug 'moll/vim-bbye'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim'
Plug 'thoughtstream/Damian-Conway-s-Vim-Setup'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/dbext.vim'
Plug 'w0ng/vim-hybrid'
Plug 'yegappan/mru'

call plug#end()


" Theme Settings
" set t_Co=256
" set term=screen-256color
set background=dark
colorscheme hybrid
scriptencoding utf-8
" GuiFont Meslo LG S DZ for powerline:h9


" General Settings
set completeopt-=preview
set complete-=i
set expandtab
set fileencodings=utf8
set hidden
set lazyredraw
set mouse=a
set number
set selection=inclusive
set sessionoptions-=folds
set sessionoptions-=options
set shiftwidth=4
set showbreak=\ \ \ \ \
set tabstop=4


" General Unconditional Let Settings
let g:EclimCompletionMethod = 'omnifunc'
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize = 25
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:airline#extensions#bufferline#overwrite_variables = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_inactive_collapse=1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'tomorrow'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_show_hidden = 1
let g:gundo_width = 30
let g:tagbar_autoshowtag = 1
let g:tagbar_foldlevel = 99
let g:tagbar_iconchars = ['+', '-']
let g:tagbar_sort = 0


" General Unconditional Binds
nnoremap <F5> :GundoToggle<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <silent> ++ vip++
noremap <A-Left> :bp<CR>
noremap <A-Right> :bn<CR>
noremap <A-/> <C-W><C-W>
noremap <A-C> :JavaConstructor!<CR>
noremap <A-F> :args `ag -l `<Left>
noremap <A-G> :JavaGetSet!<CR>
noremap <A-I> :JavaImportOrganize<CR>
noremap <A-R> :argdo %s!!!gc<Left><Left><Left>
noremap <A-T> :MRU<CR>
noremap <A-c> :JavaConstructor<CR>
noremap <A-f> :Ag <Right>
noremap <A-g> :JavaGetSet<CR>
noremap <A-i> :JavaImport<CR>
noremap <A-n> :enew<CR>
noremap <A-o> :!nautilus .&<CR><CR>
noremap <A-r> :exe 'silent !clear' <bar> :exe 'Java'<CR>
noremap <A-w> :Bdelete!<CR>
noremap <F2> :NERDTreeToggle<CR>
vnoremap <silent><expr> ++ VMATH_YankAndAnalyse()


" Put delete and change into the black hole register
nnoremap d "_d
vnoremap d "_d
nnoremap c "_c
vnoremap c "_c


" BufEnter specific autocmd
autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif


" Remove buffer switching for the following filetypes
autocmd FileType nerdtree noremap <buffer> <A-,> <nop>
autocmd FileType nerdtree noremap <buffer> <A-.> <nop>
autocmd FileType nerdtree noremap <buffer> <A-n> <nop>
autocmd FileType qf noremap <buffer> <A-,> <nop>
autocmd FileType qf noremap <buffer> <A-.> <nop>
autocmd FileType qf noremap <buffer> <A-n> <nop>
autocmd FileType tagbar noremap <buffer> <A-,> <nop>
autocmd FileType tagbar noremap <buffer> <A-.> <nop>
autocmd FileType tagbar noremap <buffer> <A-n> <nop>
autocmd FileType unite noremap <buffer> <A-,> <nop>
autocmd FileType unite noremap <buffer> <A-.> <nop>
autocmd FileType unite noremap <buffer> <A-n> <nop>

