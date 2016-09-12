" Based on airline-jay theme

let g:airline#themes#ion#palette = {}

let s:mid = ['#bcbcbc', '#444444', 250, 238]
let s:bot = ['#9e9e9e', '#262626', 247, 235]

let s:N1 = [s:bot[1], '#ff5f00', s:bot[3], 202]
let s:I1 = [s:bot[1], '#d70000', s:bot[3], 160]
let s:R1 = [s:bot[1], '#5f00ff', s:bot[3], 57]
let s:V1 = [s:bot[1], '#005faf', s:bot[3], 25]

let s:T1 = [s:bot[1], s:V1[1], s:bot[3], s:V1[3], 'bold']
let s:T2 = [s:bot[1], s:I1[1], s:bot[3], s:I1[3], 'bold']
let s:T3 = ['#df0000', s:mid[1], 160, s:mid[3]]

let s:modi = ['#df0000', s:bot[1], 160, s:bot[3]]
let s:warn = [s:bot[1], "#df8700", s:bot[3], 172, 'bold']
let s:err = [s:bot[1], s:modi[0], s:bot[3], s:modi[2], 'bold']

let g:airline#themes#ion#palette.accents = {'red': ['#df0000', '', 160, '']}

" Normal
let g:airline#themes#ion#palette.normal = airline#themes#generate_color_map(s:N1, s:mid, s:bot)
let g:airline#themes#ion#palette.normal.airline_warning = s:warn
let g:airline#themes#ion#palette.normal.airline_error = s:err
let g:airline#themes#ion#palette.normal_modified = {'airline_c': s:modi}
let g:airline#themes#ion#palette.normal_modified.airline_warning = s:warn
let g:airline#themes#ion#palette.normal_modified.airline_error = s:err

" Insert
let g:airline#themes#ion#palette.insert = airline#themes#generate_color_map(s:I1, s:mid, s:bot)
let g:airline#themes#ion#palette.insert.airline_warning = s:warn
let g:airline#themes#ion#palette.insert.airline_error = s:err
let g:airline#themes#ion#palette.insert_modified = {'airline_c': s:modi}
let g:airline#themes#ion#palette.insert_modified.airline_warning = s:warn
let g:airline#themes#ion#palette.insert_modified.airline_error = s:err

" Replace
let g:airline#themes#ion#palette.replace = airline#themes#generate_color_map(s:R1, s:mid, s:bot)
let g:airline#themes#ion#palette.replace.airline_warning = s:warn
let g:airline#themes#ion#palette.replace.airline_error = s:err
let g:airline#themes#ion#palette.replace_modified = {'airline_c': s:modi}
let g:airline#themes#ion#palette.replace_modified.airline_warning = s:warn
let g:airline#themes#ion#palette.replace_modified.airline_error = s:err

" Visual
let g:airline#themes#ion#palette.visual = airline#themes#generate_color_map(s:V1, s:mid, s:bot)
let g:airline#themes#ion#palette.visual.airline_warning = s:warn
let g:airline#themes#ion#palette.visual.airline_error = s:err
let g:airline#themes#ion#palette.visual_modified = {'airline_c': s:modi}
let g:airline#themes#ion#palette.visual_modified.airline_warning = s:warn
let g:airline#themes#ion#palette.visual_modified.airline_error = s:err

" Inactive
let g:airline#themes#ion#palette.inactive = airline#themes#generate_color_map(s:bot, s:bot, s:bot)
let g:airline#themes#ion#palette.inactive_modified = {'airline_c': s:modi}

" Tabline
let g:airline#themes#ion#palette.tabline = {
	\ 'airline_tabsel': s:T1,
	\ 'airline_tabtype': s:T2,
	\ 'airline_tabmod': s:err,
	\ 'airline_tabmod_unsel': s:T3,
	\ 'airline_tab_right': s:mid,
	\ 'airline_tabsel_right': s:T2,
	\ 'airline_tabmod_right': s:warn,
	\ 'airline_tabmod_unsel_right': s:T3}
