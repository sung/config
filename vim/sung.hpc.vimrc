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
Plugin 'ncm2/ncm2'
Plugin 'roxma/vim-hug-neovim-rpc' " Vim 8 only
Plugin 'jalvesaq/Nvim-R'
Plugin 'gaalcaras/ncm-R' " https://github.com/gaalcaras/ncm-R
Plugin 'ervandew/supertab'
Plugin 'sirver/UltiSnips' " Optional: for snippet support UltiSnips requires py >= 2.7 or py3
Plugin 'ycm-core/YouCompleteMe'
Plugin 'ncm2/ncm2-ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'lervag/vimtex' " Optional: better Rnoweb support (LaTeX completion)
Plugin 'vim-scripts/TeTrIs.vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'chrisbra/NrrwRgn'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'bioSyntax/bioSyntax-vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'WolfgangMehner/perl-support'
" Plugin 'aperezdc/vim-template'
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
"let g:gruvbox_italic  =1
"colorscheme gruvbox
"let g:solarized_termcolors=256
"colorscheme solarized
colorscheme jellybeans 
"colorscheme seoul256 
set bg=dark

""""""""""""
"" italic ""
""""""""""""
"https://hobo.house/2017/07/17/using-italics-with-vim-in-your-terminal/ "does not work with 'screen'"
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


"
" YCM & UltiSnppet
"
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


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

"""""""""""""""""""""""""""""""""""""""""""""""
" /roxma/nvim-completion-manager#requirements " 
"""""""""""""""""""""""""""""""""""""""""""""""
"let g:python3_host_prog="/usr/local/software/spack/spack-0.11.2/opt/spack/linux-rhel7-x86_64/gcc-5.4.0/python-3.6.1-xk7ym4l5glcf6ond7yszv2i5gz3wnv2b/bin/python3"
"if has('python3')                                                                                                 
"    set pyx=3                                                                     
"else                                                                            
"    set pyx=2                                                                     
"endif

""""""""""
" Nvim-R "
""""""""""
if $DISPLAY != ""
	let R_openpdf = 1 
endif
let R_openhtml = 1 
let R_pdfviewer = "xpdf"
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine
let R_show_args = 1 
let R_assign = 3
let R_rconsole_width=125


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
