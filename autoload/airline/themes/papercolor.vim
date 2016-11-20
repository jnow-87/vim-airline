let g:airline#themes#papercolor#palette = {}

let g:airline#themes#papercolor#palette.accents = {
      \ 'red': [ '#66d9ef' , '' , 81 , '' , '' ],
      \ }

let s:col_1 = [ '#585858' , '#e4e4e4' , 240 , 254 ]
let s:col_2 = [ '#e4e4e4' , '#0087af' , 254 , 31  ]
let s:col_3 = [ '#eeeeee' , '#005f87' , 255 , 24  ]
let s:col_3_modified = [ '#585858' , '#e4e4e4' , 255 , 24 , '' ]

" Normal Mode:
let g:airline#themes#papercolor#palette.normal = airline#themes#generate_color_map(s:col_1, s:col_2, s:col_3)
let g:airline#themes#papercolor#palette.normal_modified = {
      \ 'airline_c': s:col_3_modified ,
      \ }


" Insert Mode:
let g:airline#themes#papercolor#palette.insert = copy(g:airline#themes#papercolor#palette.normal)
let g:airline#themes#papercolor#palette.insert_modified = {
      \ 'airline_c': s:col_3_modified ,
      \ }


" Replace Mode:
let g:airline#themes#papercolor#palette.replace = copy(g:airline#themes#papercolor#palette.normal)
let g:airline#themes#papercolor#palette.replace.airline_a = [ '#d7005f'   , '#e4e4e4' , 161 , 254, ''     ]
let g:airline#themes#papercolor#palette.replace_modified = {
      \ 'airline_c': s:col_3_modified ,
      \ }


" Visual Mode:
let g:airline#themes#papercolor#palette.visual = copy(g:airline#themes#papercolor#palette.normal)
let g:airline#themes#papercolor#palette.visual_modified = {
      \ 'airline_c': s:col_3_modified ,
      \ }

" Inactive:
let g:airline#themes#papercolor#palette.inactive = copy(g:airline#themes#papercolor#palette.normal)
let g:airline#themes#papercolor#palette.inactive_modified = {
      \ 'airline_c': s:col_3_modified ,
      \ }


" CtrlP:
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#papercolor#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#e4e4e4' , '#005f87' , 254 , 24  , ''     ] ,
      \ [ '#e4e4e4' , '#0087af' , 254 , 31  , ''     ] ,
      \ [ '#585858' , '#e4e4e4' , 240 , 254 , 'bold' ] )

