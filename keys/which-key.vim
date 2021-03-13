" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['\'] = [ ':let @/ = ""'               , 'clear highlight' ]
let g:which_key_map['/'] = [ ':Commentary'                , 'comment' ]
let g:which_key_map['.'] = [ ':e $MYVIMRC'                , 'open init' ]
let g:which_key_map[';'] = [ ':Commands'                  , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                     , 'balance windows' ]
let g:which_key_map[','] = [ 'Startify'                   , 'start screen' ]
let g:which_key_map['d'] = [ ':bd'                        , 'delete buffer']
let g:which_key_map['e'] = [ ':CocCommand explorer --preset floating'       , 'explorer' ]
let g:which_key_map['F'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['h'] = [ ':spl'                     , 'split below']
let g:which_key_map['q'] = [ 'q'                          , 'quit' ]
let g:which_key_map['R'] = [ ':RnvimrToggle'              , 'ranger' ]
let g:which_key_map['L'] = [ ':FloatermNew lf'            , 'lf' ]
let g:which_key_map['V'] = [ ':FloatermNew vifm'          , 'vifm' ]
let g:which_key_map['S'] = [ ':SSave'                     , 'save session' ]
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['v'] = [ ':vspl'                     , 'split right']
let g:which_key_map['W'] = [ 'w'                          , 'write' ]
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]
let g:which_key_map['j'] = [ ':m+<CR>=='                  , 'move lines Down' ]
let g:which_key_map['k'] = [ ':m-2<CR>=='                 , 'move lines Up' ]

" Group mappings

" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'c' : [':ColorizerToggle'             , 'colorizer'],
      \ 'e' : [':CocCommand explorer'         , 'explorer'],
      \ 'n' : [':set nonumber!'               , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'       , 'relative line nums'],
      \ 's' : [':let @/ = ""'                 , 'clear search highlight'],
      \ 't' : [':FloatermToggle'              , 'terminal'],
      \ 'l' : [':Limelight!!'                 , 'limelight toggle'],
      \ '=' : [':setlocal spell!'             , 'spellcheck toggle'],
      \ 'z' : [':call FzfSpell()'             , 'spellcheck FZF'],
      \ 'w' : [':call QuickFix_toggle()'      , 'quickfix window toogle'],
      \ 'v' : [':Vista!!'                     , 'tag viewer'],
      \ }

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['b1'        , 'buffer 1']        ,
      \ '2' : ['b2'        , 'buffer 2']        ,
      \ 'd' : ['bd'        , 'delete-buffer']   ,
      \ 'f' : ['bfirst'    , 'first-buffer']    ,
      \ 'h' : ['Startify'  , 'home-buffer']     ,
      \ 'l' : ['blast'     , 'last-buffer']     ,
      \ 'n' : ['bnext'     , 'next-buffer']     ,
      \ 'p' : ['bprevious' , 'previous-buffer'] ,
      \ '?' : ['Buffers'   , 'fzf-buffer']      ,
      \ }

" f is for find and replace
let g:which_key_map.f = {
      \ 'name' : '+find & replace' ,
      \ 'b' : [':Farr --source=vimgrep'    , 'buffer'],
      \ 'p' : [':Farr --source=rgnvim'     , 'project'],
\ }

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':CtrlSF'       , 'CtrlSF'],
      \ 'F' : [':CtrlSFOpen'   , 'CtrlSFOpen'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'R' : ['<Plug>(coc-references)'              , 'references'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'v' : [':Vista!!'                            , 'tag viewer'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'v' : [':FloatermNew vifm'                              , 'vifm'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 'l' : [':FloatermNew lf'                                , 'lf'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ }

" w is for Word Processing Edit 
let g:which_key_map.w = {
      \ 'name' : '+wordedit' ,
      \ '=' : [':setlocal spell!'                               , 'spellcheck toggle'],
      \ 'e' : [':set spell spelllang=en'                        , 'spellcheck english'],
      \ 'r' : [':set spell spelllang=ru'                        , 'spellcheck russian'],
      \ 'w' : [':set list!'                                     , 'show whitespace toggle'],
      \ 'l' : [':set wrap! linebreak nolst'                     , 'soft wrap toggle'],
      \ 'd' : ['<plug>(wiki-page-delete)'                              , 'ncdu'],
      \ 't' : ['<plug>(wiki-page-toc)'                              , 'ncdu'],
      \ 'T' : ['<plug>(wiki-page-toc-local)'                              , 'ncdu'],
      \ 'u' : ['<plug>(wiki-list-uniq)'                              , 'ncdu'],
      \ '0' : [':set conceallevel=0'                             , 'markdown concLevel 0'],
      \ }

" Templates
let g:which_key_map.P = {
      \ 'name' : '+templates' ,
      \ 'p' : [':read ~/.config/nvim/templates/PhilPaper.tex'           , 'PhilPaper.tex'],
      \ 'l' : [':read ~/.config/nvim/templates/Letter.tex'           , 'Letter.tex'],
      \ 'g' : [':read ~/.config/nvim/templates/Glossary.tex'           , 'Glossary.tex'],
      \ 'h' : [':read ~/.config/nvim/templates/HandOut.tex'           , 'HandOut.tex'],
      \ 'b' : [':read ~/.config/nvim/templates/PhilBeamer.tex'           , 'PhilBeamer.tex'],
      \ 's' : [':read ~/.config/nvim/templates/SubFile.tex'           , 'SubFile.tex'],
      \ 'r' : [':read ~/.config/nvim/templates/Root.tex'           , 'Root.tex'],
      \ 'm' : [':read ~/.config/nvim/templates/MultipleAnswer.tex'           , 'MultipleAnswer.tex'],
      \ 'S' : [':read ~/.config/nvim/templates/template.sh'           , 'Script.sh'],
      \ 'P' : [':read ~/.config/nvim/templates/template.pl'           , 'Script.pl'],
      \ 'H' : [':read ~/.config/nvim/templates/index.html'           , 'INDEX.html'],
      \ }

" Pandoc
let g:which_key_map.p = {
      \ 'name' : '+pandoc' ,
      \ 'w' : [':Pandoc docx'           , 'to word from open'],
      \ 'm' : [':Pandoc md'             , 'to markdown from open'],
      \ 'h' : [':Pandoc html'           , 'to html from open'],
      \ 'l' : [':Pandoc latex'          , 'to latex from open'],
      \ 'p' : [':Pandoc pdf'            , 'to pdf from open'],
      \ }

" Global
" <Plug>VimwikiIndex

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
