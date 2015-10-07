" NeoBundle initialization
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle'))
let g:neobundle#install_process_timeout = 1500
NeoBundleFetch 'Shougo/neobundle.vim'

" External plugins                 
NeoBundle 'shougo/neosnippet.vim'
NeoBundle 'shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-easytags'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-characterize'
NeoBundle 'tpope/vim-classpath'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'jlanzarotta/bufexplorer'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-scripts/gundo'
NeoBundle 'msanders/snipmate.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'jaxbot/browserlink.vim' 
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'vim-scripts/renamer.vim'

" NeoBundle finalization                  
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

