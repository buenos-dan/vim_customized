" ===================== todo list =================
" 
" ====================== default settings =======================
let mapleader='\'           " <Leader>
set encoding=utf-8          " utf-8 
set incsearch               " 增量搜索
set hlsearch                " 高亮显示
set ignorecase              " 大小写不敏感, set infercase 区分大小写
set nocompatible            " 关闭兼容模式
set mouse=nvich             " 使用鼠标
set nu                      " 行号显示
set relativenumber          " 启用相对行
        	
" 不同的编程语言有不同的缩进，在~/.vim/ftplugin/ 里单独设置
set tabstop=4               " tab长度4个空格
set shiftwidth=4            " 设置自动缩进长度为4空格
set autoindent              " 继承前一行的缩进方式，适用于多行注释

" ===================== custom shortcut =======================
nnoremap <NL> i<CR><ESC>

" ==================== plugin =================================


call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'             " 文件结构导航栏

" Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'octol/vim-cpp-enhanced-highlight'

" Plug 'rakr/vim-one'                   " 配色方案

Plug 'tpope/vim-surround'             " 括号配对

Plug 'preservim/nerdcommenter'        " 注释

Plug 'ctrlpvim/ctrlp.vim'             " 搜索文件

Plug 'tpope/vim-repeat'               " repeat plug map

Plug 'easymotion/vim-easymotion'

Plug 'vimwiki/vimwiki'

call plug#end()

filetype plugin indent on

" ===============================  nerd-tree config =========================
nnoremap <Leader>t :NERDTreeToggle<CR>

"自动退出
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

" colorscheme one

" ================================  coc config ===============================
" let g:coc_disable_startup_warning = 1
" " use <tab> for trigger completion and navigate to the next complete item
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction
"
" inoremap <silent><expr> <Tab>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<Tab>" :
"       \ coc#refresh()
"
" " GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
"
" " Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
"
" " Symbol renaming.
" " nmap <leader>rn <Plug>(coc-rename)

" ========================= nerd commenter config ============================
 " Create default mappings
 let g:NERDCreateDefaultMappings = 1

 " Add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1

 " Use compact syntax for prettified multi-line comments
 let g:NERDCompactSexyComs = 1

 " Align line-wise comment delimiters flush left instead of following code indentation
 let g:NERDDefaultAlign = 'left'

 " Set a language to use its alternate delimiters by default
 let g:NERDAltDelims_java = 1

 " Add your own custom formats or override the defaults
 " let g:NERDCustomDelimiters = { 'launch': { 'left': '<!-- ','right': ' -->' } }

 " Allow commenting and inverting empty lines (useful when commenting a region)
 let g:NERDCommentEmptyLines = 1

 " Enable trimming of trailing whitespace when uncommenting
 let g:NERDTrimTrailingWhitespace = 1

 " Enable NERDCommenterToggle to check all selected lines is commented or not
 let g:NERDToggleCheckAllLines = 1

 au! BufRead,BufNewFile *.launch set filetype=xml

" ========================== ctrlp config =================================
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.out

" ============================= vim wiki config =============================
let g:vimwiki_list = [{'path': '~/.vim/vimwiki/'}]

" ==================================    end    =======================================

hi Normal guibg=NONE ctermbg=NONE     " 背景色透明
