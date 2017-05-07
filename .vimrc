" Vimの環境設定
" ---------------------------------------------------------------------------------
" 基本設定
" ---------------------------------------------------------------------------------
" vi互換しない
set nocompatible

" 色付けを300文字までに制限
set synmaxcol=200

" ターミナル接続を高速にする
set ttyfast

" マクロなどの途中経過を描写しない
set lazyredraw

" フォントを指定(:h15はフォントサイズ)
set guifont=RictyDiscord-Regular-Powerline:h15

" ---------------------------------------------------------------------------------
" フォーマット
" ---------------------------------------------------------------------------------
" 新しい行のインデントを現在行と同じにする
set autoindent

" タブ文字、行末など不可視文字を表示
set list

" 閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch

" 新しい行を作ったときに高度な自動インデントを行う
set smartindent 

" シフト移動幅
set shiftwidth=2 

" スペース幅
set backspace=2

" タブ幅
set tabstop=2

" 行頭の余白内でTabを打ち込むと、'shiftwidth'の数だけインデントする
set smartindent 
" タブの代わりに空白文字を指定する
set expandtab

" softtabstop: TABキーやBSキーを打ち込んだときに動く幅の設定
setlocal softtabstop=2 


" ---------------------------------------------------------------------------------
" システム
" ---------------------------------------------------------------------------------
" swapファイルを作らない
set noswapfile

" バックアップファイルを作らない
set nowritebackup

" バックアップをしない
set nobackup

" エラー音抑止(gvimはgvimrcで指定)
set noerrorbells

" ビジュアルベル抑止(gvimはgvimrcで指定)
set novisualbell

" ビープ音抑止(gvimはgvimrcで指定)
set visualbell t_vb=

" コマンドライン補完を便利に
set wildmenu

" OSのクリップボードを使用する
set clipboard+=unnamed

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

" 保存されていないファイルがあるとき、終了前に保存確認
set confirm

" 保存されていないファイルがあるときでも、保存しないで他のファイルを表示
set hidden

" 外部でファイルに変更がされた場合は読みなおす
set autoread

 " ファイル保存時の場所を、開いているファイルが有る場所に設定
set browsedir=buffer


" ---------------------------------------------------------------------------------
" キーマッピング
" ---------------------------------------------------------------------------------
" 挿入モードでjjでモード終了
inoremap <silent> jj <ESC>

" 挿入モードでのカーソル移動
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" カーソル位置の単語を検索
nnoremap <Space>/ *

" Escでハイライト消去
nnoremap <silent> <C-j><C-j> :<C-u>nohlsearch<CR>

" : を ;に
nnoremap : ;

" ; を :に
nnoremap ; :

" sキーを潰す
nnoremap s <Nop>

" 画面分割
nnoremap sv :<C-u>vs<CR>
nnoremap ss :<C-u>sp<CR>

" ウィンドウを下に移動
nnoremap sj <C-w>j

" ウィンドウを上に移動
nnoremap sk <C-w>k

" ウィンドウを右に移動
nnoremap sl <C-w>l

" ウィンドウを左に移動
nnoremap sh <C-w>h

" 分割したウィンドウを下に移動
nnoremap sJ <C-w>J

" 分割したウィンドウを上に移動
nnoremap sK <C-w>K

" 分割したウィンドウを右に移動
nnoremap sL <C-w>L

" 分割したウィンドウを左に移動
nnoremap sH <C-w>h

" 分割したウィンドウそのものを回転させる
nnoremap sr <C-w>r

" 分割したウィンドウを同じ大きさにする
nnoremap s= <C-w>=

" タブを新しく作る
nnoremap st :<C-u>tabnew<CR>

" カレントタブを閉じる
nnoremap sx :<C-u>tabclose<CR>

" 次のタブへ移動
" nnoremap sn gt

" 前のタブへ戻る
" nnoremap sp gT

" ウィンドウを閉じる
nnoremap sq :<C-u>q<CR>

" バッファを閉じる
nnoremap sQ :<C-u>bd<CR>

" Enterで改行
noremap <CR> o<ESC>

" 行頭に戻るをスペース+h
noremap <Space>h ^

" 行末に飛ぶをスペース+l
noremap <Space>l $

" rubyでよく使うdef...endなども%で移動出来るようにする
if !exists('loaded_matchit')
  " matchitを有効化
  runtime macros/matchit.vim
endif

" 対応する括弧に移動
noremap <Space>m %


" ---------------------------------------------------------------------------------
" 検索
" --------------------------------------------------------------------------------
" インクリメンタルサーチを有効にする
set incsearch

" 大文字小文字を区別しない
set ignorecase 

" 大文字で検索されたら対象を大文字限定にする
set smartcase 

" 行末まで検索したら行頭に戻る
set wrapscan 


" ---------------------------------------------------------------------------------
" 表示
" --------------------------------------------------------------------------------
" シンタックスを有効にする
syntax on 

" 編集中のファイル名を表示
set title

" 行番号の表示
set number

" 行を強調表示
set cursorline 

" 暗い背景色に合わせた配色にする
set background=dark 

" 検索結果をハイライトする
set hlsearch 

" ルーラーを表示
set ruler 

" 行を折り返さない
set nowrap

" 80行目に色を付ける
set colorcolumn=80 

" タイプ途中のコマンドを画面最下行に表示
set showcmd 

"ステータスラインを常に表示する
set laststatus=2 

" コマンドラインの高さ
set cmdheight=5 

" 上下5行の視界を確保
set scrolloff=5 

" 左右スクロール時の視界を確保
set sidescrolloff=16 

" バックスペースでインデントや改行を削除可能
set backspace=indent,eol,start 

" 全角スペースの表示
" http://inari.hatenablog.com/entry/2014/05/05/231307
function! ZenkakuSpace()
  highlight ZenkakuSpace ctermbg=red ctermfg=red guibg=darkgray
endfunction

if has('syntax')
augroup ZenkakuSpace
  autocmd!
  autocmd ColorScheme * call ZenkakuSpace()
  autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
augroup END
call ZenkakuSpace()
endif

" Riotシンタックス色付け
au BufRead,BufNewFile *.tag :set filetype=html

" NeoBundleの設定 
" ---------------------------------------------------------------------------------
" ランタイムパスの設定
" ---------------------------------------------------------------------------------
if has('vim_starting')
" neobudle.vimの関数を呼ぶためにインストールしたディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" ---------------------------------------------------------------------------------
" ファイルタイプ設定(off)
" ---------------------------------------------------------------------------------
filetype off " ファイル形式の検出を無効化


" ---------------------------------------------------------------------------------
" プラグイン管理
" ---------------------------------------------------------------------------------
" プラグインインストールディレクトリを指定
call neobundle#begin(expand('~/.vim/bundle/')) 

NeoBundleFetch 'Shougo/neobundle.vim'

" NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" HTML/CSS
NeoBundleLazy 'mattn/emmet-vim', {
\   'autoload': { 'filetypes': ['html', 'slim', 'eruby', 'css', 'scss', 'sass', 'php', 'styl', 'jade'] }
\ }

" テキストオブジェクトの拡張
NeoBundle 'tpope/vim-surround'

" Ruby向けにendを自動挿入してくれる
NeoBundleLazy 'tpope/vim-endwise', {
\   'autoload' : { 'insert': 1 }
\ }

" コメントON/OFFを手軽に実行
NeoBundleLazy 'tomtom/tcomment_vim', {
\   'autoload': { 'mappings': ['<c-_><c-_>'] }
\ }

" http://d.hatena.ne.jp/thinca/20130131/1359567419
NeoBundle 'kana/vim-submode' 

" SublimeTextのcmd+dと同じ動きをする
NeoBundleLazy 'terryma/vim-multiple-cursors', {
\   'autoload': { 'mappings': ['<C-n>', '<C-p>'] }
\ }

" コードのインデントを可視化
if has('conceal')
  NeoBundleLazy 'Yggdroot/indentLine', {
  \   'autoload' : {
  \     'commands' : ['IndentLinesReset', 'IndentLinesToggle'],
  \     'filetypes': ['html', 'slim', 'eruby', 'css', 'scss', 'sass', 'php', 'javascripts', 'coffee', 'ruby']
  \   }
  \ }
endif

" 記号のペアを自動挿入
NeoBundle 'jiangmiao/auto-pairs'

" Vimからshellを使えるようにする
NeoBundleLazy 'Shougo/vimshell', {
\   'autoload' : { 'commands' : [ 'VimShell' ] },
\   'depends': [ 'Shougo/vimproc' ],
\ }

" Asynchronous
NeoBundle 'Shougo/vimproc.vim', {
\   'build' : {
\       'windows' : 'tools\\update-dll-mingw',
\       'cygwin' : 'make -f make_cygwin.mak',
\       'mac' : 'make -f make_mac.mak',
\       'unix' : 'make -f make_unix.mak',
\    },
\ }

" CSS3のシンタックス
NeoBundleLazy 'hail2u/vim-css3-syntax', {
\   'autoload': { 'filetypes': ['css', 'scss', 'sass'] }
\ }

" Sassシンタックス
NeoBundleLazy 'cakebaker/scss-syntax.vim', {
\   'autoload': { 'filetypes': ['scss', 'sass'] }
\ }

" HTML5のシンタックス
NeoBundleLazy 'othree/html5.vim', {
\   'autoload': { 'filetypes': ['html', 'php', 'eruby'] }
\ }

" Coffeescriptのシンタックス
NeoBundleLazy 'kchmck/vim-coffee-script', {
\   'autoload': { 'filetypes': ['coffee'] }
\ }

" Rubyのシンタックス
NeoBundleLazy 'vim-ruby/vim-ruby', {
\   'autoload': { 'filetypes': ['ruby'] }
\ }

" ログファイルを色づけしてくれる
NeoBundleLazy 'vim-scripts/AnsiEsc.vim', {
\   'autoload': { 'commands': ['AnsiEsc'] }
\ }

" Slimのシンタックス
NeoBundleLazy 'slim-template/vim-slim', {
\   'autoload': { 'filetypes': ['slim'] }
\ }

" Jadeのシンタックス
NeoBundleLazy 'digitaltoad/vim-jade', {
\   'autoload': { 'filetypes': ['jade'] }
\ }

" Javascriptのシンタックス
NeoBundleLazy 'pangloss/vim-javascript', {
\   'autoload': { 'filetypes': ['javascript'] }
\ }

" JSXシンタックス
NeoBundleLazy 'mxw/vim-jsx', {
\   'autoload': { 'filetypes': ['javascript.jsx'] }
\ }

" ファイル検索を便利に
NeoBundle 'Shougo/unite.vim'

NeoBundleLazy 'Shougo/vimfiler', {
\ 'depends' : ['Shougo/unite.vim'],
\ 'autoload' : {
\   'commands' : ['VimFilerTab', 'VimFiler', 'VimFilerExplorer', 'VimFilerBufferDir'],
\   'explorer' : 1,
\ }}

" Unite.vimでfile_mruするのに必要
" http://jsapachehtml.hatenablog.com/entry/2014/03/14/135458
NeoBundle 'Shougo/neomru.vim'

" Statusline
" ステータスラインをかっこ良く
NeoBundle 'bling/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

" gitのブランチ名を表示
NeoBundle 'itchyny/vim-gitbranch'

" Color schema
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'cocopon/iceberg.vim'
NeoBundle 'nanotech/jellybeans.vim'

" EasyMotion
NeoBundle 'Lokaltog/vim-easymotion'

" Easyaliign
NeoBundleLazy 'junegunn/vim-easy-align', {
\   'autoload': { 'commands': ['EasyAlign'] }
\ }

" CSScomb
" `npm install -g csscomb` でnodeのモジュールをインストール
NeoBundleLazy 'csscomb/vim-csscomb', {
\   'autoload': { 'commands': ['CSScomb'] }
\ }

" neocomplete
" luaオプション付きでvimをインストールする必要がある
if has('lua')
  NeoBundleLazy 'Shougo/neocomplete.vim', {
  \   'depends' : 'Shougo/vimproc',
  \   'autoload' : { 'insert' : 1,}
  \ }
endif

" HTML上の記号を実体参照に変換する
NeoBundle 'inotom/str2htmlentity'

" ALE - Async Lint Engine
NeoBundle 'w0rp/ale'

call neobundle#end()
NeoBundleCheck " インストールチェック


" ---------------------------------------------------------------------------------
" ファイルタイプ設定(on)
" ---------------------------------------------------------------------------------
" プラグインの設定を反映させるために、ファイルタイプを一旦offにして、プラグインのロード後にonにする。
filetype plugin indent on


" プラグインのマッピングプレフィックス 
" ---------------------------------------------------------------------------------
" Unite.vim
" ---------------------------------------------------------------------------------
nnoremap [unite] <Nop>
nmap <Space>u [unite]


" ---------------------------------------------------------------------------------
" CSSComb
" ---------------------------------------------------------------------------------
nnoremap [comb] <Nop>
nmap <Space>c [comb]


" ---------------------------------------------------------------------------------
" postcss-sorting
" ---------------------------------------------------------------------------------
nnoremap [postcss-sorting] <Nop>
nmap <Space>sc [postcss-sorting]


" ---------------------------------------------------------------------------------
" VimShell
" ---------------------------------------------------------------------------------
nnoremap [shell] <Nop>
nmap <Space>s [shell]


" ---------------------------------------------------------------------------------
" VimFiler
" ---------------------------------------------------------------------------------
nnoremap [filer] <Nop>
nmap <Space>f [filer]


" ---------------------------------------------------------------------------------
" AnsiEsc
" ---------------------------------------------------------------------------------
nnoremap [ansiesc] <Nop>
nmap <Space>n [ansiesc]


" ---------------------------------------------------------------------------------
" IndentLines
" ---------------------------------------------------------------------------------
nnoremap [indentline] <Nop>
nmap <Space>t [indentline]


" NeoBundleプラグインの設定 
" ---------------------------------------------------------------------------------
" Unite.vim
" ---------------------------------------------------------------------------------
let g:unite_enable_start_insert = 1 "インサートモードで開始
let g:unite_source_history_yank_enable = 1 "ヒストリー/ヤンク機能を有効化
" let g:unite_source_bookmark_directory = $HOME . '/.unite/bookmark' " bookmarkだけホームディレクトリに保存
call unite#custom_default_action('file', 'tabopen') " ファイルはタブで開くをデフォルトに

" カレントディレクトリを表示
nnoremap <silent> [unite]s :<C-u>UniteWithBufferDir -buffer-name=files file<CR>

" バッファと最近開いたファイル一覧を表示
nnoremap <silent> [unite]f :<C-u>Unite<Space>buffer file_mru<CR>

" 最近開いたディレクトリを表示
nnoremap <silent> [unite]d :<C-u>Unite<Space>directory_mru<CR>

" バッファを表示
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>

" レジストリを表示
nnoremap <silent> [unite]r :<C-u>Unite<Space>register<CR>

" ヒストリ/ヤンクを表示
nnoremap <silent> [unite]h :<C-u>Unite<Space>history/yank<CR>

" ファイルの新規作成
" そのディレクトリに存在しない名前を入力すると`file/new`が候補にでてくる
nnoremap <silent> [unite]n :<C-u>UniteWithBufferDir file file/new -buffer-name=file<CR>

"ブックマーク一覧
nnoremap <silent> [unite]c :<C-u>Unite bookmark<CR>

"ブックマークに追加
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>

" ENTERキーでfile_rec:!
nnoremap <silent> [unite]<CR> :<C-u>Unite<Space>file_rec:!<CR>

" unite.vimを開いている間のキーマッピング
augroup unite 
  autocmd!
  autocmd FileType unite call s:unite_my_settings()
augroup END

function! s:unite_my_settings()
  " ESCでuniteを終了
  nmap <buffer> <ESC> <Plug>(unite_exit)

  " 入力モードのときjjでノーマルモードに移動
  imap <buffer> jj <Plug>(unite_insert_leave)

  " 入力モードのときctrl+wでバックスラッシュも削除
  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
endfunction


" ---------------------------------------------------------------------------------
" vim-submode
" ---------------------------------------------------------------------------------
" http://d.hatena.ne.jp/thinca/20130131/1359567419
" Windowサイズの変更
call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>') " s> >連打で幅を広げる
call submode#map('bufmove', 'n', '', '<', '<C-w><') " s< <連打で幅を減らす
call submode#map('bufmove', 'n', '', '+', '<C-w>+') " s+ +連打で高さを広げる
call submode#map('bufmove', 'n', '', '-', '<C-w>-') " s- -連打で高さを減らす

" Tab移動
call submode#enter_with('changetab', 'n', '', 'sn', 'gt')
call submode#enter_with('changetab', 'n', '', 'sp', 'gT')
call submode#map('changetab', 'n', '', 'n', 'gt') " sn n連打でタブを次へ移動する
call submode#map('changetab', 'n', '', 'p', 'gT') " sp p連打でタブを前へ戻る


" ---------------------------------------------------------------------------------
" vim-airline
" ---------------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1 " タブラインにもairlineを適用
let g:airline#extensions#tabline#show_buffers = 0 " （タブが一個の場合）バッファのリストをタブラインに表示する機能をオフ
let g:airline#extensions#tabline#tab_nr_type = 1 " 0でそのタブで開いてるウィンドウ数、1で左のタブから連番

let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '⭠ %{gitbranch#name()}'
let g:airline_section_z = '%{ALEGetStatusLine()}'
" let g:airline_section_b = '%t'

let g:airline#extensions#tabline#fnamemod = ':t' " タブに表示する名前（fnamemodifyの第二引数）

" airlineのカラーテーマ
let g:airline_theme='badwolf'
" let g:airline_theme='wombat'

let g:Powerline_symbols = 'fancy' " fancyテーマに切り替え

let g:airline#extensions#tabline#enabled = 1 " タブラインにもairlineを適用

" ステータスラインの区切り文字を指定
let g:airline_left_sep = '⮀'
let g:airline_right_sep = '⮂'

" タブラインのクリ切り文字を指定
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮀'

" ステータスラインのbranchなどの絵文字を指定｀
" let g:airline_symbols.linenr = '⭡'
" let g:airline#extensions#branch#enabled = '⭠'
" let g:airline_symbols.readonly = '⭤'


" ---------------------------------------------------------------------------------
" CSSComb
" ---------------------------------------------------------------------------------
nnoremap <silent> [comb] :<C-u>CSScomb<CR>


" ---------------------------------------------------------------------------------
" postcss-sorting 
" ---------------------------------------------------------------------------------
nmap <silent> [psotcss-sorting] :<C-u>CSSSorting<CR>


" ---------------------------------------------------------------------------------
" VimShell
" ---------------------------------------------------------------------------------
nnoremap <silent> [shell] :<C-u>VimShell<CR>


" ---------------------------------------------------------------------------------
" Emmet 
" ---------------------------------------------------------------------------------
" let g:user_emmet_mode = 'iv' " Emmetをinsert, visualモードだけ実行
let g:user_emmet_expandabbr_key = '<c-e>' " 展開を<CTRL>+eに


" ---------------------------------------------------------------------------------
" AnsiEsc
" ---------------------------------------------------------------------------------
nnoremap <silent> [ansiesc] :<C-u>AnsiEsc<CR>


" ---------------------------------------------------------------------------------
" IndentLines
" ---------------------------------------------------------------------------------
nnoremap <silent> [indentline] :<C-u>IndentLinesToggle<CR>


" ---------------------------------------------------------------------------------
" Vimfiler
" ---------------------------------------------------------------------------------
let g:vimfiler_safe_mode_by_default = 0 " セーフモードを無効にした状態で起動する
let g:vimfiler_as_default_explorer = 1 " vimデフォルトのエクスプローラをvimfilerで置き換える
let g:vimfiler_tree_opened_icon = "▼"
let g:vimfiler_tree_closed_icon = "▷"
let g:vimfiler_readonly_file_icon = "⭤"
let g:vimfiler_ignore_pattern = '^\%(.git\|.idea|.DS_Store\)$'

" 現在開いているバッファのディレクトリをNERDTree風に開く
nnoremap <silent> [filer]e :<C-u>VimFilerExplorer<CR>

"現在開いているバッファのディレクトリを開く
nnoremap <silent> [filer]q :<C-u>VimFilerBufferDir<CR>

" vimfilerを開いている時のキーマッピング
augroup vimfiler
  autocmd!
  autocmd FileType vimfiler call s:vimfiler_my_settings()
augroup END

function! s:vimfiler_my_settings()
  " qで終了（バッファに残らない）
  nmap <buffer> q <Plug>(vimfiler_exit)
  " Qで隠す（バッファに残る）
  nmap <buffer> Q <Plug>(vimfiler_hide)
endfunction


" ---------------------------------------------------------------------------------
" Vimgrepで検索結果をQuickFixで開く設定Vimgrepで検索結果をQuickFixで開く設定
" ---------------------------------------------------------------------------------
autocmd QuickFixCmdPost *grep* cwindow

" 検索結果を前へ
nnoremap [q :cprevious<CR>

" 検索結果を次へ
nnoremap ]q :cnext<CR>

" 検索結果を最初へ
nnoremap [Q :<C-u>cfirst<CR>

" 検索結果を最後へ
nnoremap ]Q :<C-u>clast<CR>


" ---------------------------------------------------------------------------------
" EasyMotion
" ---------------------------------------------------------------------------------
" 最初にマッチした箇所へスペースかエンターで飛ぶ
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_space_jump_first = 1

" s{char} で画面内検索
nmap s <Plug>(easymotion-s2)

" f, t, F, TをEasyMotionにマッピング
map f <Plug>(easymotion-fl)
map t <Plug>(easymotion-tl)
map F <Plug>(easymotion-Fl)
map T <Plug>(easymotion-Tl)

" <Tab>で次の候補、<S-Tab>で前の候補へジャンプ
nmap g/ <Plug>(easymotion-sn)
xmap g/ <Plug>(easymotion-sn)
omap g/ <Plug>(easymotion-tn)


" ---------------------------------------------------------------------------------
" Easyalign
" ---------------------------------------------------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" ---------------------------------------------------------------------------------
" neocomplete
" ---------------------------------------------------------------------------------
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'

" .や::を入力したときにオムニ補完が有効になるようにする
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.ruby  = '[^. *\t]\.\w*\|\h\w*::'


" ---------------------------------------------------------------------------------
" str2htmlentity
" ---------------------------------------------------------------------------------
vmap <silent> sx :Str2HtmlEntity<cr>
vmap <silent> sr :Entity2HtmlString<cr>


" ---------------------------------------------------------------------------------
" ALE
" ---------------------------------------------------------------------------------
let g:ale_linters = {
\ 'html': ['HTMLHint'],
\ 'css': ['stylelint'],
\ 'javascript': ['eslint']
\ }

" シンボルカラムを出しっぱなしにする
" let g:ale_sign_column_always = 1

" エラーのシンボルを変更
let g:ale_sign_error = '✘'

" 警告のシンボルを変更
let g:ale_sign_warning = '⚠'

" 保存時にチェック
let g:ale_lint_on_save = 1

" 入力時にはチェックしない
let g:ale_lint_on_text_changed = 0

" ファイルオープン時にチェックしたくない
let g:ale_lint_on_enter = 0

" ステータスラインのフォーマットを変更
let g:ale_statusline_format = ['✘  %d', '⚠  %d', '✔ ']

" エラーと警告をロケーションリストに表示しない
let g:ale_set_loclist = 0

" エラーと警告をクイックフィックスに表示する
let g:ale_set_quickfix = 1

" エラーと警告がなくなっても開いたままにする
" let g:ale_open_list = 1
" let g:ale_keep_list_window_open = 1

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" ---------------------------------------------------------------------------------
" カラースキームの設定 
" ---------------------------------------------------------------------------------
colorscheme monokai
" colorscheme solarized
" colorscheme molokai
" colorscheme jellybeans
" colorscheme iceberg
" colorscheme railscasts
