" put this line first in ~/.vimrc
set nocompatible | filetype indent plugin on | syn on

" PLUGINS:
runtime plugins.vim

" GENERAL OPTIONS:
runtime general.vim

" FILE BROWSING:
runtime netrw.vim

" KEY MAPPINGS:
runtime mappings.vim

" APPEARANCE:
runtime style.vim

" LANGUAGESERVER:
runtime lsp.vim

" COC:
runtime coc_settings.vim


nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
			\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_map =  {}

" Set timeout, e.g. used in whichkey
set timeoutlen=500

let g:which_key_map.g = {
			\ 'name' : '+GOTO',
			\ 'd' : ['<Plug>(coc-definition)'      , 'Definition'],
			\ 'y' : ['<Plug>(coc-type-difinition)' , 'Type definiton'],
			\ 'i' : ['<Plug>(coc-implementation)'  , 'Implementation'],
			\ 'r' : ['<Plug>(coc-references)'      , 'References'],
			\}

let g:which_key_map.l = {
			\ 'name' : '+LSP',
			\ 'f' : ['<Plug>(coc-format-selected)' , 'Autoformat'],
			\ 'R' : ['<Plug>(coc-references)'      , 'References'],
			\ 'r' : ['<Plug>(coc-rename)'          , 'Rename'],
			\ 'a' : ['<Plug>(coc-codeaction)'      , 'Code action'],
			\ 'F' : ['<Plug>(coc-fix-current)'     , 'Fix automatically'],
			\ 'o' : [':CocList outline'            , 'Code outline'],
			\ 's' : [':CocList -I symbols'         , 'Symbols'],
			\ 'd' : [':CocList dignostics'         , 'Diagnostics'],
			\ 'e' : [':CocList extensions'         , 'Extensions'],
			\ 'c' : [':CocList commands'           , 'Commands'],
			\ 'b' : ['<Plug>(coc-bookmark-toggle)' , 'Toggle bookmark'],
			\ }


" let g:which_key_map['w'] = {
"       \ 'name' : '+windows' ,
"       \ 'w' : ['<C-W>w'     , 'other-window']          ,
"       \ 'd' : ['<C-W>c'     , 'delete-window']         ,
"       \ '-' : ['<C-W>s'     , 'split-window-below']    ,
"       \ '|' : ['<C-W>v'     , 'split-window-right']    ,
"       \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
"       \ 'h' : ['<C-W>h'     , 'window-left']           ,
"       \ 'j' : ['<C-W>j'     , 'window-below']          ,
"       \ 'l' : ['<C-W>l'     , 'window-right']          ,
"       \ 'k' : ['<C-W>k'     , 'window-up']             ,
"       \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
"       \ 'J' : ['resize +5'  , 'expand-window-below']   ,
"       \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
"       \ 'K' : ['resize -5'  , 'expand-window-up']      ,
"       \ '=' : ['<C-W>='     , 'balance-window']        ,
"       \ 's' : ['<C-W>s'     , 'split-window-below']    ,
"       \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
"       \ '?' : ['Windows'    , 'fzf-window']            ,
"       \ }
"
set inccommand=nosplit


augroup your_config_scrollbar_nvim
    autocmd!
    autocmd BufEnter    * silent! lua require('scrollbar').show()
    autocmd BufLeave    * silent! lua require('scrollbar').clear()

    autocmd CursorMoved * silent! lua require('scrollbar').show()
    autocmd VimResized  * silent! lua require('scrollbar').show()

    autocmd FocusGained * silent! lua require('scrollbar').show()
    autocmd FocusLost   * silent! lua require('scrollbar').clear()
augroup end

let g:nix_maintainer="pinpox"


fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'

  " Force your ~/.vim/after directory to be last in &rtp always:
  " let g:vim_addon_manager.rtp_list_hook = 'vam#ForceUsersAfterDirectoriesToBeLast'

  " most used options you may want to use:
  " let c.log_to_buf = 1
  " let c.auto_install = 0
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
        \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif

  " This provides the VAMActivate command, you could be passing plugin names, too
  call vam#ActivateAddons(["vim-addon-nix"], {})
endfun
call SetupVAM()

" ACTIVATING PLUGINS

" OPTION 2: use call vam#ActivateAddons
" call vam#ActivateAddons(["vim-addon-nix"], {})
" use <c-x><c-p> to complete plugin names

