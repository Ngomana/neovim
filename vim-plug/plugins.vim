" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot', {'on': 'NERDTreeToggle'}
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    "Plug 'jiangmiao/auto-pairs'
    "Omni-sharp
    Plug 'OmniSharp/omnisharp-vim'
    " Use release branch (recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Neo format
    Plug 'sbdchd/neoformat'
    " post install (yarn install | npm install) then load plugin only for editing supported files
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

	"Ale linter
	Plug 'dense-analysis/ale'

	Plug 'morhetz/gruvbox'

	Plug 'christoomey/vim-tmux-navigator'
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'ryanoasis/vim-devicons'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'scrooloose/nerdcommenter'
	Plug 'vim-airline/vim-airline'
	Plug 'vimsence/vimsence'

	call plug#end()
	colorscheme gruvbox


