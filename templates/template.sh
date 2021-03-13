#!/usr/bin/env bash

## Help witn -h  {{{1
while :; do
  case "$1" in
    -h|--help)
      LESS=-FEXR less <<HELP
Example: fztop SEARCH

USAGE:
  at runtime a the following keybinds are available:

  ctrl-x
    will send SIGTERM to the selected process
  F9
    will send SIGKILL to the selected process
endExample    
HELP
      exit ;;
    *) break
  esac
done   ## 1}}}

## Script Code begin here
<++>
