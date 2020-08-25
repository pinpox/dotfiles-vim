" PLUGINS:
source ~/.vim/plugins.vim

" GENERAL OPTIONS:
source ~/.vim/general.vim

" FILE BROWSING:
source ~/.vim/netrw.vim

" KEY MAPPINGS:
source ~/.vim/mappings.vim

" APPEARANCE:
source ~/.vim/style.vim

" LANGUAGESERVER:
source ~/.vim/lsp.vim

" COC:
source ~/.vim/coc_settings.vim


nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
			\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_map =  {}

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
