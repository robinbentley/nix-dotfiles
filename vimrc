" =====================================================
" @robinbentley (https://github.com/robinbentley)
" =====================================================

set nocompatible                            " using vim settings over vi

set nobackup                                " turn backups off
set directory=~/.vim/swap/                  " keep swapfiles in thier own dir


" =====================================================
" Bundles
" =====================================================

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'mhartington/oceanic-next'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'danro/rename.vim'
Plug 'othree/html5.vim'
Plug 'w0rp/ale'

call plug#end()

"if (has("termguicolors"))
"  set termguicolors
"endif


" =====================================================
" Editing
" =====================================================
set number                                  " show line numbers
syntax on                                   " syntax highlighting
set background=dark                         " dark background
set t_Co=256
silent! colorscheme OceanicNext

" Remove background colour from line numbers
hi LineNr ctermfg=DarkGrey ctermbg=NONE guifg=#65737e guibg=NONE
" Remove background colour from comments
hi Comment cterm=NONE ctermfg=DarkGrey guifg=#65737e guibg=NONE

set nowrap                                  " don't wrap long lines
set expandtab                               " the tabs are now spaces
set tabstop=4                               " four spaces
set shiftwidth=4
set smartindent
set softtabstop=4                           " backspace pretends a tab was removed
set backspace=indent,eol,start              " backspace over all the things

set splitright                              " open vsplits to the right
set splitbelow                              " open splits below

set listchars=tab:>-,trail:·,extends:>
set list                                    " show listchars

set showmatch
hi MatchParen cterm=bold ctermbg=magenta ctermfg=black


" =====================================================
" Mappings
" =====================================================

" remap leader from \ to ,
let mapleader=","
let g:mapleader=","

" double tap jj to exit insertmode
imap jj <esc>

" easier movement between splits
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" clear any search results on esc
nnoremap <esc> :noh<return><esc>

" =====================================================
" Bundle settings
" =====================================================

" emmet
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" airline
set laststatus=2                            " Show airline erry time
set noshowmode                              " Hide default mode
let airline_theme='base16_oceanicnext'
let g:airline_powerline_fonts = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" nerdtree
map <leader>n :NERDTreeToggle<CR>
let NERDTreeChDirMode=2
let NERDTreeShowHidden=1                    " Show dot files in tree

let g:NERDTreeDirArrowExpandable = '↘'
let g:NERDTreeDirArrowCollapsible = '↖'
hi NERDTreeOpenable cterm=NONE ctermbg=NONE ctermfg=DarkBlue guifg=#6699CC guibg=NONE
hi NERDTreeClosable cterm=NONE ctermbg=NONE ctermfg=DarkBlue guifg=#6699CC guibg=NONE

" vim-javascript
let g:javascript_plugin_flow = 1

" vim-jsx
let g:jsx_ext_required = 0


" =====================================================
" Functions
" =====================================================

function! CleanOnSave()
    let save_cursor = getpos(".")           " save cursor position
    :silent! %s/\s\+$//e                    " trim any trailing whitespace
    :silent! %s#\($\n\s*\)\+\%$##           " remove any blank lines from eof
    call setpos('.', save_cursor)           " put the cursor back
endfunction
autocmd BufWritePre * call CleanOnSave()
