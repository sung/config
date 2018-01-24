"""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle (https://github.com/gmarik/Vundle.vim) "
"""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'flazz/vim-colorschemes' " colour scheme
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'junegunn/seoul256.vim'
Plugin 'jalvesaq/Nvim-R'
Plugin 'vim-scripts/TeTrIs.vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'jiangmiao/auto-pairs'
" Plugin 'jalvesaq/R-Vim-runtime'
" Plugin 'vim-scripts/Vim-R-plugin'
" git repos on your local machine (i.e. when working on your own plugin) 
" Plugin 'file://~/.vim/plugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""
" Color "
"""""""""
"if $COLORTERM == 'gnome-terminal'
	set t_Co=256
"endif
"set termguicolors " DOES NOT WORK WITH SCREEN
let g:gruvbox_italic  =1
"colorscheme gruvbox
"let g:solarized_termcolors=256
"colorscheme solarized 
colorscheme jellybeans 
"colorscheme seoul256
set bg=dark

""""""""""""
"" italic ""
""""""""""""
"https://hobo.house/2017/07/17/using-italics-with-vim-in-your-terminal/
highlight Comment cterm=italic

"""""""""""
" General "
"""""""""""
set number "always display line number
set vb
set backspace=indent,eol,start
set omnifunc=syntaxcomplete#Complete
"set ofu=syntaxcomplete#Complete
syntax on
set smarttab
"set autoindent
set shiftround

set hlsearch
"set tabstop=4
"set shiftwidth=4
set ts=4 sw=4 et
set ruler

""""""""""
" Backup "
""""""""""
set backup                      " keep a backup file
set backupdir =$HOME/.vim.backupdir
set dictionary+=/usr/share/dict/words

"""""""""""""""""""""""""""""
" highlight paired brackets "
"""""""""""""""""""""""""""""
highlight MatchParen ctermbg=blue guibg=lightyellow

"""""""""""
" taglist "
"""""""""""
nnoremap <silent> <F7> :TlistToggle<CR>
let Tlist_Show_Menu = 1 

""""""""""""""""""""
" :NERDTreeToggle  "
""""""""""""""""""""
nnoremap <silent> <F8> :NERDTreeToggle<CR>

""""""""""""""""""""""""
" open a tabbed window "
""""""""""""""""""""""""
" imap ,t <Esc>:tabnew<CR>
" save folds when leave, open folds when load 
au BufWinLeave ? mkview
au BufWinEnter ? silent loadview

""""""""""""
" supertab "
""""""""""""
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
" Use Ctrl+Space to do omnicompletion:
if has("gui_running")
	inoremap <C-Space> <C-x><C-o>
else
	inoremap <Nul> <C-x><C-o>
endif

""""""""""""""""""""""""" 
" perl template toolkit "
""""""""""""""""""""""""" 
let mysyntaxfile = "~/.vim/syntax/tt2.vim" " get syntax highlighting
au BufNewFile,BufRead *.tt3 setf tt2 
au! Syntax newlang source ~/.vim/syntax/tt2.vim
let b:tt2_syn_tags = '<% %>' " ASP
let b:tt2_syn_tags = '<? ?>' " PHP
let b:tt2_syn_tags = '\[% %] <!-- -->' " TT2 and HTML

" Pathogen (http://www.bestofvim.com/plugin/pathogen/)
" call pathogen#infect() " replaced with Vundble on top 

""""""""""
" Nvim-R "
""""""""""
if $DISPLAY != ""
	let R_openpdf = 1
endif
let R_openhtml = 1
let R_pdfviewer = "evince"
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine
let R_show_args = 1
"autocmd FileType r if string(g:SendCmdToR) == "function('SendCmdToR_fake')" | call StartR("R") | endif
"autocmd FileType rmd if string(g:SendCmdToR) == "function('SendCmdToR_fake')" | call StartR("R") | endif
"autocmd VimLeave * if exists("g:SendCmdToR") && string(g:SendCmdToR) != "function('SendCmdToR_fake')" | call RQuit("nosave") | endif

"""""""""""""""
" IndentGuide "
"""""""""""""""
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Rainbow Parentheses
" https://github.com/kien/rainbow_parentheses.vim "
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
set laststatus=2
