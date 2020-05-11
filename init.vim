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



let &colorcolumn=join(range(101,999),",")


nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
" TODO add something like this for coc
" let g:which_key_map.l = {
"       \ 'name' : '+lsp',
"       \ 'f' : ['spacevim#lang#util#Format()'          , 'formatting']       ,
"       \ 'r' : ['spacevim#lang#util#FindReferences()'  , 'references']       ,
"       \ 'R' : ['spacevim#lang#util#Rename()'          , 'rename']           ,
"       \ 's' : ['spacevim#lang#util#DocumentSymbol()'  , 'document-symbol']  ,
"       \ 'S' : ['spacevim#lang#util#WorkspaceSymbol()' , 'workspace-symbol'] ,
"       \ 'g' : {
"         \ 'name': '+goto',
"         \ 'd' : ['spacevim#lang#util#Definition()'     , 'definition']      ,
"         \ 't' : ['spacevim#lang#util#TypeDefinition()' , 'type-definition'] ,
"         \ 'i' : ['spacevim#lang#util#Implementation()' , 'implementation']  ,
"         \ },
"       \ }
