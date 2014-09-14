" ---------------------------------------------------------------------------------
" Vimの環境設定
" ---------------------------------------------------------------------------------

"  基本設定 {{{
" ---------- Basic ----------
syntax on " シンタックスを有効にする
filetype off " ファイル形式の検出を無効化
set nocompatible " 変更中のファイルでも、保存しないで他のファイルを表示する
set hidden " 変更中のファイルでも、保存しないで他のファイルを表示する
set clipboard+=unnamed " OSのクリップボードを使用する
set autoread " 内容が変更されたら自動的に再読み込み
set whichwrap=b,s,h,l,<,>,[,] " カーソルを行頭、行末で止まらないようにする


" ---------- Format ----------
set autoindent " 新しい行のインデントを現在行と同じにする
set list " タブ文字、行末など不可視文字を表示
"set listchars=tab:>-,trail:<
set showmatch " 閉じ括弧が入力されたとき、対応する括弧を表示する
set smartindent " 新しい行を作ったときに高度な自動インデントを行う
set shiftwidth=2 " シフト移動幅
set backspace=2 " スペース幅
set tabstop=2 " タブ幅
set smartindent " 行頭の余白内でTabを打ち込むと、'shiftwidth'の数だけインデントする
set expandtab " タブの代わりに空白文字を指定する



" ---------- Backup ----------
set noswapfile " swapファイルを作らない
"set nowritebackup " バックアップファイルを作らない
"set nobackup " バックアップをしない


" ---------- Keymap ----------
" 挿入モード
" 閉じ補完
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap ' ''<LEFT>
"inoremap < <> <LEFT>
" inoremap () () <LEFT>

"
" 挿入モードでjjでモード終了
inoremap <silent> jj <ESC>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>


" ノーマルモード,ビジュアルモード
" カーソル位置の単語を検索
nnoremap <Space>/ *

" Escでハイライト消去
nnoremap <silent> <C-j><C-j> :<C-u>nohlsearch<CR>

" : を ;に
nnoremap : ;

" ; を :に
nnoremap ; :


" 画面分割
" sキーを潰す
nnoremap s <Nop>

" 垂直分割
nnoremap sv :<C-u>vs<CR>
" nnoremap ss :<C-u>sp<CR>

" 画面移動
" ウィンドウを下に移動
nnoremap sj <C-w>j

" ウィンドウを上に移動
nnoremap sk <C-w>k

" ウィンドウを右に移動
nnoremap sl <C-w>l

" ウィンドウを左に移動
nnoremap sh <C-w>h


" Tab
" タブを新しく作る
nnoremap st :<C-u>tabnew<CR>

" カレントタブを閉じる
nnoremap sx :<C-u>tabclose<CR>

" 次のタブへ移動
nnoremap sn gt

" 前のタブへ戻る
nnoremap sp gT


" 閉じる
" ウィンドウを閉じる
nnoremap sq :<C-u>q<CR>

" バッファを閉じる
nnoremap sQ :<C-u>bd<CR>


" ノーマルモード
" 対応する括弧に移動
noremap <Space>m %

" Enterで改行
noremap <CR> o<ESC>

" 行頭に戻るをスペース+h
noremap <Space>h ^

" 行末に飛ぶをスペース+l
noremap <Space>l $


" ---------- Search ----------
set incsearch " インクリメンタルサーチを有効にする
set ignorecase " 大文字小文字を区別しない
set smartcase " 大文字で検索されたら対象を大文字限定にする
set wrapscan " 行末まで検索したら行頭に戻る


" ---------- Look ----------
set title " 編集中のファイル名を表示
set number " 行番号の表示
set cursorline " 行を強調表示
set background=dark " 暗い背景色に合わせた配色にする
set hlsearch "検索結果をハイライトする
set ruler " ルーラーを表示
set nowrap " 行を折り返さない
set wildmenu " コマンドライン補完を便利に
set showcmd " タイプ途中のコマンドを画面最下行に表示
set laststatus=2 "ステータスラインを常に表示する
set cmdheight=5 " コマンドラインの高さ


" 全角スペースの表示
j" http://inari.hatenablog.com/entry/2014/05/05/231307
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
" }}}



"  NeoBundleの設定 {{{
if has('vim_starting')
" neobudle.vimの関数を呼ぶためにインストールしたディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/')) " プラグインインストールディレクトリを指定


" ---------- Plugin ----------
" NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" HTML/CSS
NeoBundle 'mattn/emmet-vim' " HTML/CSSコーディングを簡単に
NeoBundle 'https://github.com/miripiruni/CSScomb-for-Vim.git' " CSSプロパティの整列

" Utillity
NeoBundle 'tpope/vim-surround' " テキストオブジェクトの拡張
NeoBundle 'bronson/vim-trailing-whitespace' " 行末の半角スペースを可視化
NeoBundle 'tpope/vim-endwise' " Ruby向けにendを自動挿入してくれる
NeoBundle 'tomtom/tcomment_vim' " コメントON/OFFを手軽に実行
NeoBundle 'kana/vim-submode' " http://d.hatena.ne.jp/thinca/20130131/1359567419
NeoBundle 'terryma/vim-multiple-cursors' " SublimeTextのcmd+dと同じ動きをする
NeoBundle 'Yggdroot/indentLine' " コードのインデントを可視化
NeoBundle 'jiangmiao/auto-pairs' " 記号のペアを自動挿入

" Yank
NeoBundle 'vim-scripts/YankRing.vim' " Yankの履歴管理
"NeoBundle 'open-browser.vim' " VimでURLやキーワードに対してブラウザで表示したり検索が出来る
"NeoBundle 'mattn/webapi-vim' " Vim上からGETやPOSTなどのリクエストをサーバーに送ることが出来る
"NeoBundle 'tell-k/vim-browsereload-mac' " Vimで保存したらブラウザを更新

" Syntax
NeoBundle 'hail2u/vim-css3-syntax' " CSS3のシンタックス
NeoBundle 'cakebaker/scss-syntax.vim' " Sassシンタックス
NeoBundle 'othree/html5.vim' " HTML5のシンタックス
NeoBundle 'pangloss/vim-javascript' " Javascriptのシンタックス
NeoBundle 'kchmck/vim-coffee-script' " Coffeescriptのシンタックス
NeoBundle 'tpope/vim-haml' " Hamlのシンタックス
NeoBundle 'vim-ruby/vim-ruby' " Rubyのシンタックス
NeoBundle 'vim-scripts/AnsiEsc.vim' " ログファイルを色づけしてくれる

" Failler
NeoBundle 'scrooloose/nerdtree' " サイドバー風にファイルの一覧を表示
NeoBundle 'Shougo/unite.vim' " ファイル検索を便利に
NeoBundle 'Shougo/neomru.vim' " Unite.vimでfile_mruするのに必要 http://jsapachehtml.hatenablog.com/entry/2014/03/14/135458

" Statusline
NeoBundle 'bling/vim-airline' " ステータスラインをかっこ良く

" Color schema
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'cocopon/iceberg.vim'
NeoBundle 'nanotech/jellybeans.vim'

" Git
NeoBundle 'tpope/vim-fugitive'

" Rails
"NeoBundle 'tpope/vim-rails'

" ファイル名と内容によってファイルタイプを判別し、ファイルタイププラグインを有効にする
" NeoBundleよりも下にないとシンタックスが効かない？
filetype plugin indent on

NeoBundleCheck " インストールチェック
" }}}



" NeoBundleプラグインの設定 {{{
" ---------- NERDTree ----------
" prefixキーの設定
nnoremap [nerdtree] <Nop>
nmap <Space>n [nerdtree]

" <Space>uoでNERDTreeを表示をトグル
nnoremap <silent> [nerdtree]t :<C-u>NERDTreeToggle<CR>

" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1

" デフォルトでツリーを表示させる
autocmd VimEnter * execute 'NERDTree'
nnoremap sb :<C-u>Bookmark<Space>
nnoremap ob :<C-u>OpenBookmark<Space>

" ---------- Unite.vim ----------
let g:unite_enable_start_insert=1 "インサートモードで開始
let g:unite_source_history_yank_enable=1 "ヒストリー/ヤンク機能を有効化
call unite#custom_default_action('file', 'tabopen') " ファイルはタブで開くをデフォルトに

nnoremap [unite] <Nop>
nmap <Space>u [unite]

" カレントディレクトリを表示
nnoremap <silent> [unite]a :<C-u>UniteWithBufferDir -buffer-name=files file<CR>

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

nnoremap <silent> [unite]o :<C-u>Unite<Space>outline<CR>

" ENTERキーでfile_rec:!
nnoremap <silent> [unite]<CR> :<C-u>Unite<Space>file_rec:!<CR>

"unite.vimを開いている間のキーマッピング
autocmd FileType unite call s:unite_my_settings()

function! s:unite_my_settings()"{{{
" ESCでuniteを終了
nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction"}}}


" ---------- vim-submode ---------
" Windowサイズの変更
call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>') " s> >連打で幅を広げる
call submode#map('bufmove', 'n', '', '<', '<C-w><') " s< <連打で幅を減らす
call submode#map('bufmove', 'n', '', '+', '<C-w>+') " s+ +連打で高さを広げる
call submode#map('bufmove', 'n', '', '-', '<C-w>-') " s- -連打で高さを減らす

" undo/redo
call submode#enter_with('undo/redo', 'n', '', 'g-', 'g-')
call submode#enter_with('undo/redo', 'n', '', 'g+', 'g+')
call submode#map('undo/redo', 'n', '', '-', 'g-') " g- -連打でundo
call submode#map('undo/redo', 'n', '', '+', 'g+') " g+ +連打でredo


" ---------- YankRimg.vim ----------
"prefix keyの設定
nnoremap [yank] <Nop>
nmap <Space>y [yank]
nnoremap <silent> [yank] :<C-u>YRShow<CR>


" ---------- vim-airline  ----------
" let g:airline_enable_branch = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#readonly#enabled = 1
let g:airline#extensions#tabline#enabled = 1 " タブラインにもairlineを適用
let g:airline#extensions#tabline#show_buffers = 0 " （タブが一個の場合）バッファのリストをタブラインに表示する機能をオフ
let g:airline#extensions#tabline#tab_nr_type = 1 " 0でそのタブで開いてるウィンドウ数、1で左のタブから連番

let g:airline_section_b = "%t %M"
let g:airline#extensions#tabline#fnamemod = ':t' " タブに表示する名前（fnamemodifyの第二引数）

" airlineのカラーテーマ
" let g:airline_theme='wombat'
let g:airline_theme='badwolf'

let g:Powerline_symbols = 'fancy' " fancyテーマに切り替え

let g:airline#extensions#tabline#enabled = 1 " タブラインにもairlineを適用
set guifont=RictyDiscord-Regular-Powerline.ttf:h14 " airlineのフォントを指定(:h14はフォントサイズ)

" ステータスラインの区切り文字を指定
let g:airline_left_sep = '⮀'
let g:airline_right_sep = '⮂'

" タブラインのクリ切り文字を指定
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮀'

" ステータスラインのbranchなどの絵文字を指定｀
let g:airline_linecolumn_prefix = '⭡'
" let g:airline_branch_prefix = '⭠'
let g:airline_branch_symbol = '⭠'
let g:airline_readonly_symbol = '⭤'


" --------- CSScomb -----------
nnoremap [comb] <Nop>
nmap <Space>c [comb]
nnoremap <silent> [comb] :<C-u>CSScomb<CR>
"
"
" ---------- ----------
" ---------- ----------
" ---------- ----------
" ---------- ----------
" ---------- ----------
" ---------- ----------
" ---------- ----------
" ---------- ----------
" }}}



" カラースキームの設定 {{{
" colorscheme solarized
" colorscheme molokai
colorscheme monokai
" colorscheme jellybeans
" colorscheme iceberg
" colorscheme railscasts

