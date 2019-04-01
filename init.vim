set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.config/nvim/plugged')

" Other plugins
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-airline/vim-airline'
Plug 'reedes/vim-pencil'

Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Languages
Plug 'jakar/vim-json'
Plug 'kchmck/vim-coffee-script'
Plug 'groenewege/vim-less'
Plug 'mutewinter/nginx.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ekalinin/Dockerfile.vim'
Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'cespare/vim-toml'
Plug 'fatih/vim-hclfmt'
Plug 'b4b4r07/vim-hcl'
Plug 'posva/vim-vue'
Plug 'leafgarland/typescript-vim'

call plug#end()

" important settings
"

" compatible - behave very Vi compatible (not advisable)
set nocp " cp

" cpoptions - list of flags to specify Vi compatibility
set cpo=aABceFs

" insertmode - NOT use Insert mode as the default mode
set noim " im

" paste - paste mode, insert typed text literally
set nopaste " - nopaste

" pastetoggle - key sequence to toggle paste mode
set pt=

"
" using the mouse
" 

" mouse - list of flags for using the mouse
set mouse=n

" mousemodel - "extend", "popup" or "popup_setpos"; what the right mouse button is used for
set mousem=extend

" mousetime - maximum time in msec to recognize a double-click
set mouset=500

" mouseshape - what the mouse pointer looks like in different modes
set mouses=i-r:beam,s:updown,sd:udsizing,vs:leftright,vd:lrsizing,m:no,ml:up-arrow,v:rightup-arrow

" virtualedit - when to use virtual editing: "block", "insert" and/or "all"
set ve=block

"
" selecting text
" 

" selection - "old", "inclusive" or "exclusive"; how selecting text behaves
set sel=old

" selectmode - "mouse", "key" and/or "cmd"; when to start Select mode instead of Visual mode
set slm=mouse,key

" clipboard - "unnamed" to use the * register like unnamed register
 "autoselect" to always put selected text on the clipboard
set cb=unnamed,unnamedplus ",exclude:cons\\\|linux

" keymodel - "startsel" and/or "stopsel"; what special keys can do
set km=

"
" terminal
" 

" term - name of the used terminal
"set term=builtin_gui

" ttytype - alias for 'term'
"set tty=builtin_gui

" ttyfast - terminal connection is fast
set tf " notf

" scrolljump - minimal number of lines to scroll at a time
set sj=1

" title - show info in the window title
set title " notitle

" titlelen - percentage of 'columns' used for the window title
set titlelen=85

" titlestring - when not empty, string to be used for the window title
set titlestring=

" icon - set the text of the icon for this window
set icon " noicon

" iconstring - when not empty, text for the icon of this window
set iconstring=

"
" moving around, searching and patterns
" 

" whichwrap - list of flags specifying which commands wrap to another line (local to window)
set ww=b,s

" startofline - many jump commands move the cursor to the first non-blank character of a line
set sol " nosol

" paragraphs - nroff macro names that separate paragraphs
"set para=IPLPPPQPP\ LIpplpipbp

" sections - nroff macro names that separate sections
"set sect=SHNHH\ HUnhsh

" path - list of directory names used for file searching (global or local to buffer)
set pa=.,,

" cdpath - list of directory names used for :cd
set cd=.,,

" autochdir - change to directory of file in buffer
"set acd " noacd

" wrapscan - search commands wrap around the end of the buffer
set ws " nows

" incsearch - show match for partly typed search command
"set nois " is
set is " nois

" magic - change the way backslashes are used in search patterns
set magic " nomagic

" ignorecase - ignore case when using a search pattern
set ic " noic

" smartcase - override 'ignorecase' when pattern has upper case characters
set scs " noscs

" casemap - What method to use for changing case of letters
set cmp=internal,keepascii

" define - pattern for a macro definition line (global or local to buffer)
set def=^\\s*#\\s*define

" include - pattern for an include-file line (local to buffer)
set inc=^\\s*#\\s*include

" includeexpr - expression used to transform an include line to a file name (local to buffer)
set inex=

"
" syntax and highlighting
" 

" enable syntax highlighting by default
syntax enable

" colorscheme - set default color theme
colorscheme groovym

" background - "dark" or "light"; the background color brightness
set bg=dark

" hlsearch - highlight all matches for the last used search pattern
set hls " nohls

"
" displaying text
" 

" scroll - number of lines to scroll for CTRL-U and CTRL-D (local to window)
set scr=6

" scrolloff - number of screen lines to show around the cursor
"set so=0
set so=10

" wrap - long lines wrap
set wrap " nowrap

" linebreak - wrap long lines at a character in 'breakat' (local to window)
set lbr " nolbr

" breakat - which characters might cause a line break
set brk=\ \ !@*-+;:,./?

" showbreak - string to put before wrapped screen lines
set sbr=

" sidescroll - minimal number of columns to scroll horizontally
set ss=0

" sidescrolloff - minimal number of columns to keep left and right of the cursor
set siso=10

" display - include "lastline" to show the last line even if it doesn't fit
   " include "uhex" to show unprintable characters as a hex number
set dy=

" fillchars - characters to use for the status line, folds and filler lines
set fcs=vert:\|,fold:-

" cmdheight - number of lines used for the command-line
set ch=1

" columns - width of the display
"set co=78

" lines - number of lines in the display
"set lines=32

" lazyredraw - don't redraw while executing macros
set nolz " lz

" writedelay - delay in msec for each char written to the display (for debugging)
set wd=0

" list - show <Tab> as ^I and end-of-line as $ (local to window)
set nolist " list

" listchars " list of strings used for list mode
set lcs=eol:$

" number - show the line number for each line (local to window)
set nu " nonu

"
" editing text
" 

" undolevels - maximum number of changes that can be undone
set ul=1000

" modified - changes have been made and not written to a file (local to buffer)
set nomod " mod

" readonly - buffer is not to be written (local to buffer)
set noro " ro

" modifiable - changes to the text are not possible (local to buffer)
set ma " noma

" textwidth - line length above which to break a line (local to buffer)
set tw=0

" wrapmargin - margin from the right in which to break a line (local to buffer)
set wm=0

" backspace - specifies what <BS>, CTRL-W, etc. can do in Insert mode
set bs=2

" comments - definition of what comment lines look like (local to buffer)
set com=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-

" formatoptions - list of flags that tell how automatic formatting works (local to buffer)
set fo=vt

" complete - specifies how Insert mode completion works (local to buffer)
set cpt=.,w,b,u,t,i

" dictionary - list of dictionary files for keyword completion (global or local to buffer)
set dict=

" thesaurus - list of thesaurus files for keyword completion (global or local to buffer)
set tsr=

" infercase - adjust case of a keyword completion match (local to buffer)
set noinf " inf

" digraph - enable entering digraps with c1 <BS> c2
set nodg " dg

" tildeop - the "~" command behaves like an operator
set notop " top

" showmatch - When inserting a bracket, briefly jump to its match
set sm " nosm

" matchtime - tenth of a second to show a match for 'showmatch'
set mat=5

" matchpairs - list of pairs that match for the "%" command (local to buffer)
set mps=(:),{:},[:],<:>

" joinspaces - use two spaces after '.' when joining a line
set nojs " js

" nrformats - "alpha", "octal" and/or "hex"; number formats recognized for CTRL-A and CTRL-X commands (local to buffer)
set nf=octal,hex

"
" tabs and indenting
" 

" tabstop - number of spaces a <Tab> in the text stands for (local to buffer)
set ts=2

" shiftwidth - number of spaces used for each step of (auto)indent (local to buffer)
set sw=2

" smarttab - a <Tab> in an indent inserts 'shiftwidth' spaces
set sta " nosta

" softtabstop - if non-zero, number of spaces to insert for a <Tab> (local to buffer)
set sts=2

" shiftround - round to 'shiftwidth' for "<<" and ">>"
set sr " nosr

" expandtab - expand <Tab> to spaces in Insert mode (local to buffer)
set et " noet

" autoindent - automatically set the indent of a new line (local to buffer)
set ai " noai

" smartindent - do clever autoindenting (local to buffer)
set si " nosi

" cindent - enable specific indenting for C code (local to buffer)
set cin " nocin

" cinoptions - options for C-indenting (local to buffer)
set cino=

" cinkeys - keys that trigger C-indenting in Insert mode (local to buffer)
set cink=0{,0},0),:,0#,!^F,o,O,e

" cinwords - list of words that cause more C-indent (local to buffer)
set cinw=if,else,while,do,for,switch,case

" indentexpr - expression used to obtain the indent of a line (local to buffer)
set inde=

" indentkeys - keys that trigger indenting with 'indentexpr' in Insert mode (local to buffer)
set indk=0{,0},:,0#,!^F,o,O,e

" copyindent - Copy whitespace for indenting from previous line (local to buffer)
set noci " ci

" preserveindent - Preserve kind of whitespace when changing indent (local to buffer)
set nopi " pi

" lisp - enable lisp mode (local to buffer)
set lisp " nolisp

" lispwords - words that change how lisp indenting works
set lw=defun,define,defmacro,set!,lambda,if,case,let,flet,let*,letrec,do,do*,define-syntax,let-syntax,letrec-syntax,destructuring-bind,defpackage,defparameter,defstruct,deftype,defvar,do-all-symbols,do-external-symbols,do-symbols,dolist,dotimes,ecase,etypecase,eval-when,labels,macrolet,multiple-value-bind,multiple-value-call,multiple-value-prog1,multiple-value-setq,prog1,progv,typecase,unless,unwind-protect,when,with-input-from-string,with-open-file,with-open-stream,with-output-to-string,with-package-iterator,define-condition,handler-bind,handler-case,restart-bind,restart-case,with-simple-restart,store-value,use-value,muffle-warning,abort,continue,with-slots,with-slots*,with-accessors,with-accessors*,defclass,defmethod,print-unreadable-object

"
" folding
"

" foldenable - set to display all folds open (local to window)
set fen " nofen

" foldlevel - folds with a level higher than this number will be closed (local to window)
set fdl=0

" foldlevelstart - value for 'foldlevel' when starting to edit a file
set fdls=-1

" foldcolumn - width of the column used to indicate folds (local to window)
set fdc=0

" foldtext - expression used to display the text of a closed fold (local to window)
set fdt=foldtext()

" foldclose - set to "all" to close a fold when the cursor leaves it
set fcl=

" foldopen - specifies for which commands a fold will be opened
set fdo=block,hor,mark,percent,quickfix,search,tag,undo

" foldminlines - minimum number of screen lines for a fold to be closed (local to window)
set fml=1

" commentstring - template for comments; used to put the marker in
set cms=/*%s*/

" foldmethod - folding type: "manual", "indent", "expr", "marker" or "syntax" (local to window)
set fdm=manual

" foldexpr - expression used when 'foldmethod' is "expr" (local to window)
set fde=0

" foldignore - used to ignore lines when 'foldmethod' is "indent" (local to window)
"set fdi=#
set fdi=

" foldmarker - markers used when 'foldmethod' is "marker" (local to window)
set fmr={{{,}}}

" foldnestmax - maximum fold depth for when 'foldmethod is "indent" or "syntax" (local to window)
set fdn=20

"
" multiple windows
" 

" laststatus - 0, 1 or 2; when to use a status line for the last window
set ls=0

" statusline - alternate format to be used for a status line
set stl=

" equalalways - make all windows the same size when adding/removing windows
set ea " noea

" eadirection - in which direction 'equalalways' works: "ver", "hor" or "both"
set ead=both

" winheight - minimal number of lines used for the current window
set wh=1

" winminheight - minimal number of lines used for any window
set wmh=1

" winfixheight - keep the height of the window (local to window)
set nowfh " wfh

" winwidth - minimal number of columns used for the current window
set wiw=20

" winminwidth - minimal number of columns used for any window
set wmw=1

" helpheight - initial height of the help window
set hh=20

" previewheight - default height for the preview window
set pvh=12

" previewwindow - identifies the preview window (local to window)
set nopvw " pvw

" hidden - don't unload a buffer when no longer shown in a window
set nohid " hid

" switchbuf - "useopen" and/or "split"; which window to use when jumping to a buffer
set swb=

" splitbelow - a new window is put below the current one
set sb " nosb

" splitright - a new window is put right of the current one
set nospr " spr

" scrollbind - this window scrolls together with other bound windows (local to window)
set noscb " scb

" scrollopt - "ver", "hor" and/or "jump"; list of options for 'scrollbind'
set sbo=ver,jump

"
" messages and info
" 

" terse - add 's' flag in 'shortmess' (don't show search message)
set noterse " terse

" shortmess - list of flags to make messages shorter
set shm=filnxtToO

" showcmd - show (partial) command keys in the status line
set sc " nosc

" showmode - display the current mode in the status line
set smd " nosmd

" ruler - show cursor position below each window
set ru " noru

" rulerformat - alternate format to be used for the ruler
set ruf=

" report - threshold for reporting number of changed lines
set report=2

" verbose - the higher the more messages are given
set vbs=0

" more - pause listings when the screen is full
set more " nomore

" confirm - start a dialog when a command fails
set nocf " cf

" errorbells - ring the bell for error messages
set noeb " eb

" visualbell - use a visual bell instead of beeping
set novb " vb

" helplang - list of preferred languages for finding help
set hlg=

"
" diff mode
" 

" diff - use diff mode for the current window (local to window)
set nodiff " diff

" diffopt - options for using diff mode
set dip=filler

" diffexpr - expression used to obtain a diff file
set dex=

" patchexpr - expression used to patch a file
set pex=

"
" mapping
" 

" maxmapdepth - maximum depth of mapping
set mmd=1000

" remap - recognize mappings in mapped keys
set remap " noremap

" timeout - allow timing out halfway into a mapping
set to " noto

" ttimeout - allow timing out halfway into a key code
set nottimeout " ttimeout

" timeoutlen - time in msec for 'timeout'
set tm=1000

" ttimeoutlen - time in msec for 'ttimeout'
set ttm=-1

"
" reading and writing files
" 

" modeline - enable using settings from modelines when reading a file (local to buffer)
set ml " noml

" modelines - number of lines to check for modelines
set mls=5

" binary - binary file editing (local to buffer)
set nobin " bin

" endofline - last line in the file has an end-of-line (local to buffer)
set eol " noeol

" bomb - Prepend a Byte Order Mark to the file (local to buffer)
set nobomb " bomb

" fileformat - end-of-line format: "dos", "unix" or "mac" (local to buffer)
set ff=unix

" fileformats - list of file formats to look for when editing a file
set ffs=unix,dos,mac

" write - writing files is allowed
set write " nowrite

" writebackup - write a backup file before overwriting a file
set nowb " nowb

" backup - keep a backup after overwriting a file
set nobk " bk

" backupskip - patterns that specify for which files a backup is not made
set bsk=/tmp/*

" backupcopy - whether to make the backup as a copy or rename the existing file
set bkc=auto

" backupdir - list of directories to put backup files in
"set bdir=.,/home/groover/tmp,/home/groover/

" backupext - file name extension for the backup file
set bex=~

" autowrite - automatically write a file when leaving a modified buffer
set noaw " aw

" autowriteall - as 'autowrite', but works with more commands
set noawa " awa

" writeany - always write without asking for confirmation
set nowa " wa

" autoread - automatically read a file when it was modified outside of Vim (global or local to buffer)
set ar " noar

" patchmode - keep oldest version of a file; specifies file name extension
set pm=

"
" the swap file
" 

" directory - list of directories for the swap file
"set dir=.,/home/groover/tmp,/home/groover,/var/tmp,/tmp

" swapfile - use a swap file for this buffer (local to buffer)
set swf " noswf

" updatecount - number of characters typed to cause a swap file update
set uc=200

" updatetime - time in msec after which the swap file will be updated
set ut=4000

"
" command line editing
"

" history - how many command lines are remembered 
set hi=100

" wildchar - key that triggers command-line expansion
set wc=9

" wildcharm - like 'wildchar' but can also be used in a mapping
set wcm=0

" wildmode - specifies how command line completion works
set wim=list:longest

" suffixes - list of file name extensions that have a lower priority
set su=.bak,~,.o,.h,.info,.swp,.obj

" suffixesadd - list of file name extensions added when searching for a file (local to buffer)
set sua=

" wildignore - list of patterns to ignore files for file name completion
set wig=.swp

" wildmenu - command-line completion shows a list of matches
set wmnu " nowmnu

" cedit - key used to open the command-line window
set cedit=

" cmdwinheight - height of the command-line window
set cwh=7

"
" executing external commands
" 

" shell - name of the shell program used for external commands
set sh=/bin/bash

" shellquote - character(s) to enclose a shell command in
set shq=

" shellxquote - like 'shellquote' but include the redirection
set sxq=

" shellcmdflag - argument for 'shell' to execute a command
set shcf=-c

" shellredir - used to redirect command output to a file
set srr=>%s\ 2>&1

" equalprg - program used for "=" command (global or local to buffer)
set ep=

" formatprg - program used to format lines with "gq" command
set fp=

" keywordprg - program used for the "K" command
set kp=man\ -s

" warn - warn when using a shell command and a buffer has changes
set nowarn " warn

"
" tags
"

" tagbsearch - use binary searching in tags files
set tbs " notbs

" taglength - number of significant characters in a tag name or zero
set tl=0

" tags - list of file names to search for tags (global or local to buffer)
set tag=./tags,./TAGS,tags,TAGS

" tagrelative - file names in a tags file are relative to the tags file
set tr " notr

" tagstack - a :tag command will use the tagstack
set tgst " notgst

" showfulltag - when completing tags in Insert mode show more info
set nosft " sft

" cscopeprg - command for executing cscope
set csprg=cscope

" cscopetag - use cscope for tag commands
set nocst " cst

" cscopetagorder - 0 or 1; the order in which ":cstag" performs a search
set csto=0

" cscopeverbose - give messages when adding a cscope database
set nocsverb " csverb

" cscopepathcomp - how many components of the path to show
set cspc=0

" cscopequickfix - When to open a quickfix window for cscope
set csqf=

"
" running make and jumping to errors
" 

" errorfile - name of the file that contains error messages
set ef=errors.err

" errorformat - list of formats for error messages (global or local to buffer)
set efm=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%f:%l:%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f

" makeprg - program used for the ":make" command (global or local to buffer)
set mp=make

" shellpipe - string used to put the output of ":make" in the error file
set sp=2>&1\|\ tee

" makeef - name of the errorfile for the 'makeprg' command
set mef=

" grepprg - program used for the ":grep" command (global or local to buffer)
set gp=grep\ -n\ $*\ /dev/null

" grepformat - list of formats for output of 'grepprg'
set gfm=%f:%l:%m,%f:%l%m,%f\ \ %l%m

"
" language specific
" 

" isfname - specifies the characters in a file name
set isf=@,48-57,/,.,-,_,+,,,#,$,%,~,=

" isident - specifies the characters in an identifier
set isi=@,48-57,_,192-255

" iskeyword - specifies the characters in a keyword (local to buffer)
set isk=@,48-57,_,192-255

" isprint - specifies printable characters
set isp=@,161-255

" rightleft - display the buffer right-to-left (local to window)
set norl " rl

" rightleftcmd - When to edit the command-line right-to-left (local to window)
set rlc=search

" revins - Insert characters backwards
set nori " ri

" allowrevins - Allow CTRL-_ in Insert and Command-line mode to toggle 'revins'
set noari " ari

" aleph - the ASCII code for the first letter of the Hebrew alphabet
set al=224

" hkmap - use Hebrew keyboard mapping
set nohk " hk

" hkmapp - use phonetic Hebrew keyboard mapping
set nohkp " hkp

" altkeymap - use Farsi as the second language when 'revins' is set
set noakm " akm

" fkmap - use Farsi keyboard mapping
set nofk " fk

" arabic - Prepare for editing Arabic text (local to window)
set noarab " arab

" arabicshape - Perform shaping of Arabic characters
set arshape " noarshape

" termbidi - Terminal will perform bidi handling
set notbidi " tbidi

" keymap - name of a keyboard mappping
set kmp=

" langmap - translate characters for Normal mode
set lmap=

" imdisable - when set never use IM; overrules following IM options
set noimd " imd

" iminsert - in Insert mode: 1: use :lmap; 2: use IM; 0: neither (local to window)
set imi=0

" imsearch - entering a search pattern: 1: use :lmap; 2: use IM; 0: neither (local to window)
set ims=0

" imcmdline - when set always use IM when starting to edit a command line
set noimc " imc

"
" multi-byte characters
" 

" encoding - character encoding used in Vim: "latin1", "utf-8", "euc-jp", "big5", etc.
set enc=utf-8

" fileencoding - character encoding for the current file (local to buffer)
set fenc=

" fileencodings - automatically detected character encodings
set fencs=ucs-bom

" termencoding - character encoding used by the terminal
set tenc=utf-8

" charconvert - expression used for character encoding conversion
set ccv=

" delcombine - Delete combining (composing) characters on their own
set nodeco " deco

" ambiwidth - Width of ambiguous width characters
set ambw=single

"
" various
" 

" cursorline - show a marker on the current line
set cursorline

" eventignore - list of autocommand events which are to be ignored
set ei=

" loadplugins - load plugin scripts when starting up
set lpl " nolpl

" exrc - enable reading .vimrc/.exrc/.gvimrc in the current directory
set noex " ex

" secure - safer working with script files in the current directory
set nosecure " secure

" gdefault - use the 'g' flag for ":substitute"
set nogd " gd

" edcompatible - 'g' and 'c' flags of ":substitute" toggle
set noed " ed

" maxfuncdepth - maximum depth of function calls
set mfd=100

" sessionoptions - list of words that specifies what to put in a session file
set ssop=blank,buffers,curdir,folds,help,options,winsize

" viewoptions - list of words that specifies what to save for :mkview
set vop=folds,options,cursor

" viewdir - directory where to store files with :mkview
"set vdir=/home/groover/.vim/view

" viminfo - list that specifies what to write in the viminfo file
set vi=

" bufhidden - what happens with a buffer when it's no longer in a window (local to buffer)
set bh=

" buftype - "", "nofile", "nowrite" or "quickfix": type of buffer (local to buffer)
set bt=

" buflisted - whether the buffer shows up in the buffer list (local to buffer)
set bl " nobl

" debug - set to "msg" to see all error messages
set debug=

"
" Configuration gitgutter
"
let g:gitgutter_enabled = 1
let g:gitgutter_highlight_lines = 0
hi SignColumn cterm=none ctermbg=none

"
" Use goimports for Fmt
"
let g:go_fmt_command = expand("~/.config/nvim/bin/gofmtimport")

"
" filetype (common for plugins)
"
filetype plugin on

"
" I want to use Shift+Arrow in VIM
" http://superuser.com/questions/401926/how-to-get-shiftarrows-and-ctrlarrows-working-in-vim-in-tmux
"
if &term =~ '^screen'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

"
" NERDTree configuration
"

" Autostart NERDTree on start
"autocmd vimenter * NERDTree

" On Ctrl-N toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Autoclose vim when NERDTree is last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"
" deoplete configuration
"

let g:deoplete#enable_at_startup = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"
" vim-go configuration
"

let g:go_autodetect_gopath = 0
let g:go_def_mode = "gopls"
let g:go_metalinter_deadline = "20s"

"
" LanguageServer configuration
"

let g:LanguageClient_serverCommands = {
  \   'go': ['gopls'],
  \   'python': ['pyls'],
  \ }

"
" Autoformat configuration
"

let g:formatters_vue = ['eslint_local']

au FileType python,javascript,vue au BufWritePre <buffer> :Autoformat
au FileType sh,zsh au BufWritePre <buffer> :call SHFmt()

"
" typescript-vim configuration
"

let g:typescript_indent_disable = 1

"
" vim-airline configuration
"

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"
" Custom commands
"

command -range=% JF :<line1>,<line2>!jq .
