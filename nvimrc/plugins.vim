" Plugins

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()
        " File Explorer
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
"Plug 'vim-scripts/taglist.vim' deal with this later

        " Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'

        " Objects / Movements
Plug 'preservim/nerdcommenter'
Plug 'yggdroot/indentline'
Plug 'chun-yang/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'bkad/CamelCaseMotion'

        " Autocompletion / Intellisense
" Plug 'valloric/youcompleteme', { 'do': 'python3 install.py --clang-completer' }
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'install_coc_extensions'}
Plug 'omnisharp/omnisharp-vim', { 'do': ':OmniSharpInstall' }

        " Languages / Syntax
Plug 'pangloss/vim-javascript'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'elzr/vim-json'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'vim-python/python-syntax'
"Correct css styling inside styled components
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

        " Other
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'

        " Themes
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox' " let g:airline_theme='bubblegum'
Plug 'gosukiwi/vim-atom-dark' " let g:airline_theme='????????'
Plug 'hzchirs/vim-material' " let g:airline_theme='material'
Plug 'drewtempelmeyer/palenight.vim' " let g:airline_theme='palenight'

call plug#end()
