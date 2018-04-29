let s:p = {'normal': {}}
let s:p.normal.left = [['#bcbcbc', '#5f87af', 'bold']]
let s:p.normal.right = [['#bcbcbc', '#5f87af']]
let s:p.normal.middle = [ [ 'gray7', 'gray2' ] ]
"let s:p.normal.error = [ [ 'gray9', 'brightestred' ] ]
"let s:p.normal.warning = [ [ 'gray1', 'yellow' ] ]

let g:lightline#colorscheme#apprentice#palette = lightline#colorscheme#fill(s:p)
