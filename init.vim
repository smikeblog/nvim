"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" Always source these
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/general/paths.vim
  " ordinary neovim
  source $HOME/.config/nvim/themes/syntax.vim
  source $HOME/.config/nvim/themes/nvcode.vim
  source $HOME/.config/nvim/themes/lualine.vim
  source $HOME/.config/nvim/plug-config/rnvimr.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/far.vim
  source $HOME/.config/nvim/plug-config/rainbow.vim
  source $HOME/.config/nvim/plug-config/quickscope.vim
  source $HOME/.config/nvim/plug-config/sneak.vim
  source $HOME/.config/nvim/plug-config/coc/coc.vim
  source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
  source $HOME/.config/nvim/plug-config/goyo.vim
  source $HOME/.config/nvim/plug-config/limelight.vim
  source $HOME/.config/nvim/plug-config/vim-rooter.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/gitgutter.vim
  source $HOME/.config/nvim/plug-config/closetags.vim
  source $HOME/.config/nvim/plug-config/floaterm.vim
  source $HOME/.config/nvim/plug-config/vista.vim
  source $HOME/.config/nvim/plug-config/templates.vim
  source $HOME/.config/nvim/plug-config/pandoc.vim
  source $HOME/.config/nvim/plug-config/vimtex.vim
  luafile $HOME/.config/nvim/lua/plug-colorizer.lua
  "source $HOME/.config/nvim/themes/airline.vim
"  source $HOME/.config/nvim/plug-config/sctrlsf.vim
"  source $HOME/.config/nvim/plug-config/nerd-commenter.vim
"  source $HOME/.config/nvim/plug-config/vim-clap.vim
  "source $HOME/.config/nvim/plug-config/coc.vim
"  source $HOME/.config/nvim/plug-config/nvim-fzfc.vim
"  source $HOME/.config/nvim/themes/onedark.vim
  " source $HOME/.config/nvim/plug-config/vim-wiki.vim
  " source $HOME/.config/nvim/plug-config/easymotion.vim
  " source $HOME/.config/nvim/plug-config/codi.vim
" Experimental

" Codi
" let g:codi#rightalign=0

" disable python2 and set full path to python3
let g:loaded_python_provider=0
let g:python3_host_prog="/usr/bin/python3"

""""""" Lua study  """""""
" in init.vim
