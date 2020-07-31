""" from: https://github.com/shanesmith/dotfiles/blob/master/vimrc
" Plug 'dyng/ctrlsf.vim'
let g:ctrlsf_auto_close = 0
let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_populate_qflist = 1
let g:ctrlsf_indent = 2
let g:ctrlsf_auto_focus = {
      \ "at": "start",
      \ }
let g:ctrlsf_mapping = {
      \ "split": [ "<C-S>" ],
      \ "vsplit": [ "<C-V>" ],
      \ "tab": { "key": [ "<C-T>" ], "suffix": ":CtrlSFOpen<CR>" },
      \ "next": "n",
      \ "prev": "N"
      \ }
if executable('rg')
  let g:ctrlsf_ackprg  = 'rg'
elseif executable('ag')
  let g:ctrlsf_ackprg  = 'ag'
endif
nmap <leader>c <Plug>CtrlSFPrompt
nnoremap <expr> <leader>C ':CtrlSF ' . ctrlsf#opt#GetOpt("pattern")
vmap <leader>c <Plug>CtrlSFVwordPath
nnoremap <silent> <leader>/c :call <SID>CtrlSFSetSearch()<CR>

function! s:CtrlSFSetSearch()
  let  @/=ctrlsf#pat#Regex()
  call histadd('search', @/)
endfunction

function! g:CtrlSFAfterMainWindowInit()
  nnoremap <silent><buffer> <CR> :call <SID>CtrlSFOpenWithPreviousWindow()<CR>
  nnoremap <silent><buffer> <C-CR> :call <SID>CtrlSFChooseWindowOpen()<CR>
  nnoremap <silent><buffer> <C-E> :call <SID>CtrlSFNextFile('')<CR>
  nnoremap <silent><buffer> <C-Y> :call <SID>CtrlSFNextFile('b')<CR>
  nnoremap <silent><buffer> n :call <SID>CtrlSFNextMatch(1)<CR>
  nnoremap <silent><buffer> N :call <SID>CtrlSFNextMatch(0)<CR>
endfunction

function! s:CtrlSFNextMatch(forward)
  if @/ == ""
    call ctrlsf#NextMatch(a:forward)
    return
  endif

  exec "normal! " . 'Nn'[a:forward]
endfunction

function! s:CtrlSFNextFile(flags)
  let curline = getline('.')
  let curfile = strpart(curline, 0, stridx(curline, '|'))

  call search('^\%(' . curfile . '\)\@!', a:flags)
endfunction

function! s:CtrlSFOpenWithPreviousWindow()
    let [file, line, match] = ctrlsf#view#Locate(line('.'))

    if empty(file) || empty(line)
      return
    endif

    if g:ctrlsf_confirm_unsaving_quit && !ctrlsf#buf#WarnIfChanged()
      return
    endif

    wincmd p

    if bufname('%') !=# file
      if &modified && !&hidden
          exec 'silent vertical split ' . fnameescape(file)
      else
        exec 'silent edit ' . fnameescape(file)
      endif
    endif

    let lnum = line.lnum
    let col  = empty(match)? 0 : match.col

    call ctrlsf#win#MoveCursorCentral(lnum, col)

    if g:ctrlsf_selected_line_hl =~ 'o'
      call ctrlsf#hl#HighlightSelectedLine()
    endif
endfunction

function! s:CtrlSFChooseWindowOpen()
    let [file, line, match] = ctrlsf#view#Locate(line('.'))

    if empty(file) || empty(line)
      return
    endif

    if g:ctrlsf_confirm_unsaving_quit && !ctrlsf#buf#WarnIfChanged()
      return
    endif

    let winnr = input("Window: ")

    if !winnr
      return
    endif

    execute winnr . "wincmd w"

    if bufname('%') !=# file
      if &modified && !&hidden
          exec 'silent vertical split ' . fnameescape(file)
      else
        exec 'silent edit ' . fnameescape(file)
      endif
    endif

    let lnum = line.lnum
    let col  = empty(match)? 0 : match.col

    call ctrlsf#win#MoveCursorCentral(lnum, col)

    if g:ctrlsf_selected_line_hl =~ 'o'
      call ctrlsf#hl#HighlightSelectedLine()
    endif
endfunction

