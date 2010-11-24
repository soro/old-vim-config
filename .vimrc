" Set up vim-latex
filetype plugin on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf = 'Preview'

" Some sensible defaults
set shm=atI
set ttyfast
set titlestring=%f title
set wrap linebreak
set ignorecase smartcase
set hidden
set enc=utf-8
set mouse=nchr
set guifont=Inconsolata:h14 
set rnu
set hlsearch

" Set theme to dark version of molokai
colorscheme molokai
let g:molokai_original = 1

" Set command-space to esc in insert mode
imap <C-space> <Esc>

" make command-t open on shift-t instead
nmap <silent> <S-t> :CommandT<CR>

if has('mac')
	" Enable "+y (copy to clipboard) on OS X
	vno <silent> "+y :<c-u>cal<SID>Copy()<cr>
	vm "+Y "+y
	fun s:Copy()
		let old = @"
		norm! gvy
		call system('pbcopy', @")
		let @" = old
	endf
endif
" Remove menubar etc.
if has("gui_running")
	set guioptions-=m
	set guioptions-=T
endif

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
