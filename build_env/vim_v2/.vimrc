set nu
set bg=dark
syntax on           "각 파일의 성격(?)에 맞게 색깔로 보여 준다.
set cindent         "C언어를 작성할때 자동 indentition
set autoindent      "자동으로 들여쓰기
set tabstop=4       " Tab size
set expandtab     	" [tab] 키를 입력 하였을때 tab에 대당하는 space 만큼 이동(파이썬 코딩시)

"set incsearch       " 키워드를 입력할때 검색하는 점진 검색 사용
set hlsearch        " 검색어 강조 기능

" include path
set path=.,./include,/usr/include,/usr/local/include

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags db path
"if filereadable("tags")
"	set tags
"endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope db path
set csprg=/usr/bin/cscope
set csto=0							" cscope DB search first
"set cst							" cscope DB tag search
"set nocsverb						" verbose off
if filereadable("./cscope.out")
	cs add cscope.out
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Tab related key map
map <F2> :tabnew<CR>:open ./<CR>
map <F3> :tabprev<CR>
map <F4> :tabnext<CR>
imap <F2> <ESC>:tabnew<CR>:open ./<CR>
imap <F3> <ESC>:tabprev<CR>
imap <F4> <ESC>:tabnext<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taglist configuration
filetype on							" vim filetype on
nmap <F7> :TlistToggle<CR>			" F7 - taglist
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0
let Tlist_Display_Prototype = 1     " 함수 원형을 표시
let Tlist_Use_Right_Window = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Sort_Type = "name"        " 태그 리스트를 소스코드 위치 순서가 아닌 이름 순서로 표시함
"let Tlist_WinWidth = 35             " 태그 리스트 창의 폭을 35문자로지정

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Source explorer configuration
nmap <F8> :SrcExplToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Windows movement
map <C-J> <c-w><c-j>
map <C-K> <c-w><c-k>
map <C-H> <c-w><c-h>
map <C-L> <c-w><c-l>

imap <C-J> <ESC><c-w><c-j>
imap <C-K> <ESC><c-w><c-k>
imap <C-H> <ESC><c-w><c-h>
imap <C-L> <ESC><c-w><c-l>

let g:SrcExpl_winHeight = 8
let g:SrcExpl_refreshTime = 100			" 100ms
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
let g:SrcExpl_isUpdateTags = 0			" tag file update off

" NERD Tree configuration
let NERDTreeWinPos = "left"
let NERDTreeIgnore=['.o$']				" ignore object file
nmap <F5> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Dictionary & Search
"map <C-F8> <ESC> :!/opt/google/chrome/google-chrome http://engdic.daum.net/dicen/search.do?q=<cword> > /dev/null &<CR><CR>
"map <F8> <ESC> :!/opt/google/chrome/google-chrome http://www.google.co.kr/search?q=<cword> > /dev/null &<CR><CR>
"map <S-C-F8> <ESC> :!/opt/google/chrome/google-chrome http://www.google.co.kr/search?q=man+<cword> > /dev/null &<CR><CR>

"imap <C-F8> <ESC> :!/opt/google/chrome/google-chrome http://engdic.daum.net/dicen/search.do?q=<cword> > /dev/null &<CR><CR>
"imap <F8> <ESC> :!/opt/google/chrome/google-chrome http://www.google.co.kr/search?q=<cword> > /dev/null &<CR><CR>
"imap <S-C-F8> <ESC> :!/opt/google/chrome/google-chrome http://www.google.co.kr/search?q=man+<cword> > /dev/null &<CR><CR>

