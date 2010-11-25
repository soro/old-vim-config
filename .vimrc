" Set up vim-latex
filetype plugin on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf = 'Preview'

set shm=atI
set ttyfast
set titlestring=%f title
set wrap linebreak
set hidden
set enc=utf-8
set fileencoding=utf-8
set mouse=nchr
set guifont=Inconsolata:h14 
set showmatch

if has('gui_running')
    set rnu
endif

" Search settings
set incsearch
set hlsearch
set ignorecase smartcase

" Insert spaces instead of tabs
set expandtab
set shiftwidth=4
set tabstop=4

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

"
" Status line configuration gotten from: http://rgarciasuarez.free.fr/dotfiles/vimrc
"
set ls=2 " Always show status line
if has('statusline')
   " Status line detail:
   " %f		file path
   " %y		file type between braces (if defined)
   " %([%R%M]%)	read-only, modified and modifiable flags between braces
   " %{'!'[&ff=='default_file_format']}
   "			shows a '!' if the file format is not the platform
   "			default
   " %{'$'[!&list]}	shows a '*' if in list mode
   " %{'~'[&pm=='']}	shows a '~' if in patchmode
   " (%{synIDattr(synID(line('.'),col('.'),0),'name')})
   "			only for debug : display the current syntax item name
   " %=		right-align following items
   " #%n		buffer number
   " %l/%L,%c%V	line number, total number of lines, and column number
   function! SetStatusLineStyle()
      if &stl == '' || &stl =~ 'synID'
         let &stl="%f %y%([%R%M]%)%{'!'[&ff=='".&ff."']}%{'$'[!&list]}%{'~'[&pm=='']}%=#%n %l/%L,%c%V "
      else
         let &stl="%f %y%([%R%M]%)%{'!'[&ff=='".&ff."']}%{'$'[!&list]} (%{synIDattr(synID(line('.'),col('.'),0),'name')})%=#%n %l/%L,%c%V "
      endif
   endfunc
   " Switch between the normal and vim-debug modes in the status line
   nmap _ds :call SetStatusLineStyle()<CR>
   call SetStatusLineStyle()
   " Window title
   if has('title')
	   set titlestring=%t%(\ [%R%M]%)
   endif
endif

