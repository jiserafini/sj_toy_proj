syntax on           "각 파일의 성격(?)에 맞게 색깔로 보여 준다.
set cindent         "C언어를 작성할때 자동 indentition
set autoindent      "자동으로 들여쓰기
set tabstop=4       " Tab size
set nu              " linenumber
"set nobackup       " 백업 파일을 만들지 않음
colorscheme torte   " color scheme
"set ignorecase     " 검색,편집 치환시에 대소문자 구분하지 않음
set smartindent     " 코딩 할때 if, for 같은 것을 입력 하고 다음 라인으로 이동시 들려쓰기
set shiftwidth=4    " smartindent 사용시, 자동 들여쓰기 size
"set expandtab      " [tab] 키를 입력 하였을때 tab에 대당하는 space 만큼 이동(파이썬 코딩시)
set encoding=utf-8  " 컴퓨터 또는 개발 언어에서 기본 인코딩 타입
"set list            " tab, 개행을 보여줌
set fileencodings=euc-kr
"set fileformats=unix       " unix 형식 저장 - ^V
"set fileformats=dox        " dox 형식 저장 - ^V^M

set incsearch       " 키워드를 입력할때 검색하는 점진 검색 사용
set hlsearch        " 검색어 강조 기능
"set spell          " 영문 spelling check

"set guifont=UnTaza\ 12
"set guioptions-=T
"set mouse=a
set path=.,./include,/usr/include,/usr/local/include

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IDE environment 

"   Tlist
let Tlist_Inc_Winwidth=0
let Tlist_WinWidth=42
let Tlist_Use_Right_Window=1
let Tlist_Display_Prototype = 1     " 함수 원형을 표시
let Tlist_WinWidth = 35             " 태그 리스트 창의 폭을 35문자로지정
let Tlist_Use_Right_Window = 1      " 태그 리스트 창을 오른쪽에 표시
let Tlist_Sort_Type = "name"        " 태그 리스트를 소스코드 위치 순서가 아닌 이름 순서로 표시함

map <F6> :TlistToggle<CR>
imap <F6> <ESC>:TlistToggle<CR>
map <F7> :TlistUpdate<CR>
imap <F7> <ESC>:TlistUpdate<CR>

"   NERDTree
let NERDTreeIgnore=['.o$']
map <F5> :NERDTreeToggle<CR>

"   Windows movement
map <C-J> <c-w><c-j>
map <C-K> <c-w><c-k>
map <C-H> <c-w><c-h>
map <C-L> <c-w><c-l>

imap <C-J> <ESC><c-w><c-j>
imap <C-K> <ESC><c-w><c-k>
imap <C-H> <ESC><c-w><c-h>
imap <C-L> <ESC><c-w><c-l>

"   Tab related key map
map <F2> :tabnew<CR>:open ./<CR>
map <F3> :tabprev<CR>
map <F4> :tabnext<CR>
imap <F2> <ESC>:tabnew<CR>:open ./<CR>
imap <F3> <ESC>:tabprev<CR>
imap <F4> <ESC>:tabnext<CR>
"map <TAB> <C-W>w
"map <C-TAB> :tabnext<CR>
"map <C-S-TAB> :tabprev<CR>
"imap <C-TAB> <ESC>:tabnext<CR>
"imap <C-S-TAB> <ESC>:tabprev<CR>

"   Dictionary & Search
map <C-F8> <ESC> :!/opt/google/chrome/google-chrome http://engdic.daum.net/dicen/search.do?q=<cword> > /dev/null &<CR><CR>
map <F8> <ESC> :!/opt/google/chrome/google-chrome http://www.google.co.kr/search?q=<cword> > /dev/null &<CR><CR>
map <S-C-F8> <ESC> :!/opt/google/chrome/google-chrome http://www.google.co.kr/search?q=man+<cword> > /dev/null &<CR><CR>

imap <C-F8> <ESC> :!/opt/google/chrome/google-chrome http://engdic.daum.net/dicen/search.do?q=<cword> > /dev/null &<CR><CR>
imap <F8> <ESC> :!/opt/google/chrome/google-chrome http://www.google.co.kr/search?q=<cword> > /dev/null &<CR><CR>
imap <S-C-F8> <ESC> :!/opt/google/chrome/google-chrome http://www.google.co.kr/search?q=man+<cword> > /dev/null &<CR><CR>

"map <F8> <ESC> :!firefox http://engdic.daum.net/dicen/search.do?q=<cword> &<CR><CR>
"map <C-F8> <ESC> :!firefox http://www.google.co.kr/search?q=<cword><CR><CR>

"   Editing
map <F7> [{v%zf     " folding
map <C-F7> zo       " unfolding

"   Search
map <F9> <ESC>:TaskList<CR>
imap <F9> <ESC>:TaskList<CR>
map <C-F9> <ESC>:CompView<CR>
imap <C-F9> <ESC>:CompView<CR>

"   Save & Close
imap <F11> <ESC>:wqa<CR>
map <F11> :wqa<CR>

imap <F12> <ESC>:qa!<CR>
map <F12> :qa!<CR>

"	Tasklist
map <C-S-T> :TaskList<CR>   "http://juan.axisym3.net/vim-plugins/#tasklist

" Cscope
if filereadable("./cscope.out")
	cs add cscope.out
endif
"map <F8> [i            " 함수 프로토타입 보기
"map <F9> gd            " 지역변수 추적
"map <F10> ''       " 지역변수 추적후 윈 위치
"map <F11> ^]       " ctags * -R 후 전역변수 추적
"map <F12> ^T       " 추적후 원위치

"   TreeExplorer
"let treeExplVertical=1
"let treeExplHidden=1
"let treeExplWinSize=40
"map te :VSTreeExplore<CR>
"imap <F5> <ESC>:VSTreeExplore<CR>

"map tl :TlistToggle<CR>
"   set tags=/media/DATA/sources/git_x2/application/tags,/media/DATA/sources/git_x2/appbase/tags,/media/DATA/sources/git_x2/middleware/tags

"   MS style editing
"map <C-Z> u
"map <C-C> y
"map <C-V> Pl
"map <C-A> 1GvG$
"imap <C-Z> <ESC>u
"imap <C-V> <ESC>pa
"imap <C-C> <ESC>y
"imap <C-A> <ESC>1GvG$
"map <BS> i<BS><RIGHT><ESC>

"map <S-UP> vk
"vmap <S-UP> k
"vmap <S-C-UP> k
"imap <S-UP> <ESC>vk
"vmap <UP> v<UP>
"
"map <S-DOWN> vj
"vmap <S-DOWN> j
"vmap <S-C-DOWN> j
"imap <S-DOWN> <RIGHT><ESC>vj
"vmap <DOWN> v<DOWN>

"map <S-END> v<END>
"map <S-HOME> v<HOME>
"vmap <S-END> <END>
"vmap <S-HOME> <HOME>
"imap <S-END> <ESC>v<END>
"imap <S-HOME> <ESC>v<HOME>
"vmap <C-X> d

"map <S-LEFT> vh
"vmap <S-LEFT> h
"vmap <LEFT> v<LEFT>
"imap <S-LEFT> <ESC>vh

"map <S-RIGHT> vl
"vmap <S-RIGHT> l
"vmap <RIGHT> v<RIGHT>
"imap <S-RIGHT> <ESC>vl


"   Tab related key map
"map <TAB> <C-W>w
"map <C-TAB> :tabnext<CR>
"map <C-S-TAB> :tabprev<CR>
"imap <C-TAB> <ESC>:tabnext<CR>
"imap <C-S-TAB> <ESC>:tabprev<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   IDE environment 

"imap <F5> <ESC>:VSTreeExplore<CR>
"map <F7> <C-]> 
"map <F8> <C-T>

"   Close Window
"map <C-S> :w!<CR>
"map <C-Q> :q<CR>
"map <F11> :q<CR>
"map <F12> :qa!<CR>
"imap <C-S> <ESC>:w!<CR>a
"imap <C-Q> <ESC>:q<CR>
"imap <F11> <ESC>:q<CR>
"imap <F12> <ESC>:qa!<CR>
"map <F9> :grep '<cword>' . <CR><CR>:cw<CR>
"imap <F9> <ESC>:grep '<cword>' . <CR><CR>:cw<CR>
"map <F9> :grep '<cword>' . -r<CR><CR>:cw<CR>
"imap <F9> <ESC>:grep '<cword>' . -r<CR><CR>:cw<CR>

