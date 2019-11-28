" Display extra whitespace, show tabs as bar (indent-guides)
set listchars=tab:\|\ ,trail:·,nbsp:·
set list

set conceallevel=0

" Use true color, if possible
if (empty($TMUX))
	if (has("nvim"))
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif
	if (has("termguicolors"))
		set termguicolors
	endif
endif
syntax on

set background=dark

" set colorscheme with base16-shell tool
if filereadable(expand("~/.vimrc_background"))
	let base16colorspace=256
	source ~/.vimrc_background
endif

" Italic comments
highlight Comment cterm=italic gui=italic

" Airline
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 0
let g:airline_theme='base16'
