"""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle (https://github.com/gmarik/Vundle.vim) "
"""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
" color schemes
Plugin 'flazz/vim-colorschemes' " colour scheme
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'junegunn/seoul256.vim'
Plugin 'bioSyntax/bioSyntax-vim'
" auto completion & code snippets (mainly for ncm-R)
Plugin 'ncm2/ncm2'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc' " Vim 8 only
Plugin 'ncm2/ncm2-ultisnips'
Plugin 'ncm2/ncm2-bufword'
Plugin 'ncm2/ncm2-path'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'sirver/UltiSnips' " Optional: for snippet support
Plugin 'ycm-core/YouCompleteMe' "very glitch - do not seem to work perfectly
"Plugin 'ajh17/VimCompletesMe'
" Nvim-R
Plugin 'jalvesaq/Nvim-R'
Plugin 'gaalcaras/ncm-R' " https://github.com/gaalcaras/ncm-R
Plugin 'lervag/vimtex' " Optional: better Rnoweb support (LaTeX completion)
" pandoc
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
"Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'chrisbra/NrrwRgn'
" productivity
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'cespare/vim-toml'
"Plugin 'WolfgangMehner/perl-support'
" Plugin 'aperezdc/vim-template'
" for fun
Plugin 'vim-scripts/TeTrIs.vim'
" git repos on your local machine (i.e. when working on your own plugin) 
" Plugin 'file://~/.vim/plugin'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""
" Color "
"""""""""
"if $COLORTERM == 'gnome-terminal'
"    set t_Co=256
"endif
"set termguicolors " DOES NOT WORK WITH SCREEN
let g:gruvbox_italic  =1
colorscheme gruvbox
"let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme jellybeans
"colorscheme seoul256
set bg=dark

"""""""""""
"" italic ""
""""""""""""
"https://hobo.house/2017/07/17/using-italics-with-vim-in-your-terminal/ : does not work with 'screen'
highlight Comment cterm=italic

""""""""""
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
"set tabstop=4 " ts=4
"set shiftwidth=4 " sw=4
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
nnoremap <silent> <F7> :TaglistToggle<CR>
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
let R_pdfviewer = "evince" " xpdf
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine
let R_show_args = 1
let R_assign = 3
let R_rconsole_width=125
"autocmd FileType r if string(g:SendCmdToR) == "function('SendCmdToR_fake')" | call StartR("R") | endif
"autocmd FileType rmd if string(g:SendCmdToR) == "function('SendCmdToR_fake')" | call StartR("R") | endif
"autocmd VimLeave * if exists("g:SendCmdToR") && string(g:SendCmdToR) != "function('SendCmdToR_fake')" | call RQuit("nosave") | endif
"
" If you do not want to run R in Vim/Neovim's built in terminal emulator, you
" have to install Tmux >= 2.0, and then put in your |vimrc|:
"let R_in_buffer = 1 
"use my own tmux conf (i.e. ~/.tmux.conf)
"let R_notmuxconf = 1 
" If you are running Vim/Neovim within Tmux, you may prefer:
let R_csv_app = 'tmux new-window scim --txtdelim="\t"'
" R output is highlighted with current colorscheme
let g:rout_follow_colorscheme = 1
" R commands in R output are highlighted
let g:Rout_more_colors = 1"

"""""""""""""""""""""""""""""
" roxma/vim-hug-neovim-rpc
"""""""""""""""""""""""""""""
set pyxversion=3
set encoding=utf-8

""""""""""""""""
" ncm2/ncm2
""""""""""""""""
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
" https://github.com/ncm2/ncm2#requirements
" let g:python3_host_prog="/usr/bin/python3" 
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
set shortmess+=c
" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>
" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new line.
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
"
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
syntax enable

"""""""""""""""""""""""""""""""""""""""""""""""""""
" configuration for vim-pandoc and vim-rmarkdown
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pandoc#modules#disabled = ["spell"]
let g:pandoc#syntax#conceal#use = 0

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

"""""""""""""""""""
" YCM & UltiSnppet
" https://stackoverflow.com/questions/14896327/ultisnips-and-YouCompleteMe
""""""""""""""""""""""""
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
