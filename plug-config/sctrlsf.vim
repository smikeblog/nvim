
" CtrlSF {{{
"nmap     <C-M>f <Plug>CtrlSFPrompt
"vmap     <C-F>f <Plug>CtrlSFVwordPath
"nnoremap <silent> <C-F>o :CtrlSFOpen<CR>
"nnoremap <silent> <C-F>j :CtrlSFFocus<CR>
let g:ctrlsf_ackprg = 'rg'
let g:ctrlsf_default_view_mode = 'normal'
let g:ctrlsf_search_mode = 'async'
let g:ctrlsf_populate_qflist = 1
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_toggle_map_key = '\t'
let g:ctrlsf_extra_backend_args = {
    \ 'pt': '--global-gitignore'
    \ }
let g:ctrlsf_auto_focus = {
    \ 'at': 'start'
    \ }
let g:ctrlsf_extra_root_markers = ['.root']

" ignore trailing space
let g:extra_whitespace_ignored_filetypes = ['ctrlsf']
" }}}
"
"
