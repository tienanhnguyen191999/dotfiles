let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
      \ { 'type' : 'files',     'header': ['   Files']},
      \ { 'type' : 'dir',       'header': ['   Current Directory '.getcwd()]},
      \ { 'type' : 'sessions',  'header': ['   Sessions']},
      \ { 'type' : 'bookmarks', 'header': ['   Bookmarks']},
      \ ]
let g:startify_bookmarks = [
      \ { 'z': '~/.zshrc' },
      \ { 'v': '~/.vimrc' },
      \ '~/.config',
      \ ]
let g:startify_change_to_vcs_root = 1
let g:ascii = [
      \ '       ______          __              __       ',
      \ '      /\  _  \        /\ \            /\ \__    ',
      \ '      \ \ \L\ \    ___\ \ \___     ___\ \ ,_\   ',
      \ '       \ \  __ \ /  _ `\ \  _ `\ /  _ `\ \ \/   ',
      \ '        \ \ \/\ \/\ \/\ \ \ \ \ \/\ \/\ \ \ \_  ',
      \ '         \ \_\ \_\ \_\ \_\ \_\ \_\ \_\ \_\ \__\ ',
      \ '          \/_/\/_/\/_/\/_/\/_/\/_/\/_/\/_/\/__/ ',
      \]                                            

let g:startify_custom_header = startify#pad(g:ascii + startify#fortune#boxed())

