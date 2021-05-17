set nocompatible
set expandtab
set softtabstop=2
set shiftwidth=4
set tabstop=4
syntax on
filetype indent on
set autoindent
set number
colorscheme desert
set nobackup
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set wildmenu

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.pp :call DeleteTrailingWS()
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
