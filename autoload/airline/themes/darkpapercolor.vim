let g:airline#themes#darkpapercolor#palette = {}

let g:airline#themes#darkpapercolor#palette.accents = {
      \ 'red': [ '#66d9ef' , '' , 81 , '' , '' ],
      \ }

let s:col_1 = [ '#585858' , '#e4e4e4' , 255 , 236 ]
let s:col_2 = [ '#e4e4e4' , '#0087af' , 255 , 31  ]
let s:col_3 = [ '#eeeeee' , '#005f87' , 255 , 24  ]
let s:col_3_modified = [ '#585858' , '#e4e4e4' , 255 , 24 , '' ]

" Normal Mode:
let g:airline#themes#darkpapercolor#palette.normal = airline#themes#generate_color_map(s:col_1, s:col_2, s:col_3)
let g:airline#themes#darkpapercolor#palette.normal_modified = {
      \ 'airline_c': s:col_3_modified ,
      \ }


" Insert Mode:
let g:airline#themes#darkpapercolor#palette.insert = copy(g:airline#themes#darkpapercolor#palette.normal)
let g:airline#themes#darkpapercolor#palette.insert_modified = {
      \ 'airline_c': s:col_3_modified ,
      \ }


" Replace Mode:
let g:airline#themes#darkpapercolor#palette.replace = copy(g:airline#themes#darkpapercolor#palette.normal)
let g:airline#themes#darkpapercolor#palette.replace.airline_a = [ '#d7005f'   , '#e4e4e4' , 161 , 254, ''     ]
let g:airline#themes#darkpapercolor#palette.replace_modified = {
      \ 'airline_c': s:col_3_modified ,
      \ }


" Visual Mode:
let g:airline#themes#darkpapercolor#palette.visual = copy(g:airline#themes#darkpapercolor#palette.normal)
let g:airline#themes#darkpapercolor#palette.visual_modified = {
      \ 'airline_c': s:col_3_modified ,
      \ }

" Inactive:
let g:airline#themes#darkpapercolor#palette.inactive = copy(g:airline#themes#darkpapercolor#palette.normal)
let g:airline#themes#darkpapercolor#palette.inactive_modified = {
      \ 'airline_c': s:col_3_modified ,
      \ }
