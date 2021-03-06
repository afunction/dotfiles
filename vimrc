call pathogen#infect()

set fencs=utf-8,vim,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fenc=utf-8
set enc=utf-8

set iminsert=0 imsearch=0

if has('multi_byte_ime')
    hi Cursor guifg=bg guibg=Orange gui=NONE
    hi CursorIM guifg=NONE guibg=Skyblue gui=NONE
    set iminsert=0 imsearch=0
endi

set expandtab
set shiftwidth=4
" set softtabstop=4
set tabstop=4

" colorschema on
syntax on

" syntax highlighting
set background=dark
set t_Co=256

set nobackup
set ignorecase 
set gdefault
set nu!
set ai!

" enable backspace
set backspace=2

" set colorscheme
" [Github] https://github.com/nanotech/jellybeans.vim.git
colorscheme jellybeans

" autocomplete load ctag file
set tags=./tags,tags

set ruler

" search highlight 
set hlsearch
set incsearch

" color inline
set cursorline

" indent
set ai
set cin

if has("autocmd")
    filetype on
    filetype plugin on
    filetype plugin indent on
endif

mapclear

" tabshift
vmap <tab> >gv
vmap <s-tab> <gv
nmap <tab> v>
nmap <s-tab> v<

nmap <C-left> gT
nmap <C-right> gt
imap <C-left> <esc>gT
imap <C-right> <esc>gt
vmap <C-left> <esc>gT
vmap <C-right> <esc>gt

" nerdtree keymap
imap <F2> <esc>:NERDTreeToggle<CR>
vmap <F2> <esc>:NERDTreeToggle<CR>
nmap <F2> :NERDTreeToggle<CR>

" tagbar for tag complete 
nmap <F3> :TagbarToggle<CR><C-w>p
vmap <F3> <esc>:TagbarToggle<CR><C-w>p
imap <F3> <esc>:TagbarToggle<CR><C-w>p

" prev/next tab
nmap <C-left> gT
nmap <C-right> gt
imap <C-left> <esc>gT
imap <C-right> <esc>gt
vmap <C-left> <esc>gT
vmap <C-right> <esc>gt

" code/paste from paste note 
nmap <F7> :set paste!<BAR>set paste?<CR>
imap <F7> <esc>:set paste!<BAR>set paste?<CR>i
vmap <F7> <esc>:set paste!<BAR>set paste?<CR>

" prev/next all mark
nmap <S-F8> <Leader>?
nmap <S-F9> <Leader>/

" prev/next current mark
nmap <F8> <Leader>#
nmap <F9> <Leader>*
