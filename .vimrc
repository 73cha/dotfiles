"  Vimの環境設定 {{{
" ---------------------------------------------------------------------------------
" 基本設定
" ---------------------------------------------------------------------------------
set nocompatible " vi互換しない


" ---------------------------------------------------------------------------------
" フォーマット
" ---------------------------------------------------------------------------------
set autoindent " 新しい行のインデントを現在行と同じにする
set list " タブ文字、行末など不可視文字を表示
set showmatch " 閉じ括弧が入力されたとき、対応する括弧を表示する
set smartindent " 新しい行を作ったときに高度な自動インデントを行う

set shiftwidth=2 " シフト移動幅
set backspace=2 " スペース幅
set tabstop=2 " タブ幅

set smartindent " 行頭の余白内でTabを打ち込むと、'shiftwidth'の数だけインデントする
set expandtab " タブの代わりに空白文字を指定する


" ---------------------------------------------------------------------------------
" システム
" ---------------------------------------------------------------------------------
set noswapfile " swapファイルを作らない
set nowritebackup " バックアップファイルを作らない
set nobackup " バックアップをしない

set noerrorbells " エラー音抑止(gvimはgvimrcで指定)
set novisualbell " ビジュアルベル抑止(gvimはgvimrcで指定)
set visualbell t_vb= " ビープ音抑止(gvimはgvimrcで指定)
set wildmenu " コマンドライン補完を便利に

set clipboard+=unnamed " OSのクリップボードを使用する
set whichwrap=b,s,h,l,<,>,[,] " カーソルを行頭、行末で止まらないようにする

set confirm " 保存されていないファイルがあるとき、終了前に保存確認
set hidden " 保存されていないファイルがあるときでも、保存しないで他のファイルを表示
set autoread " 外部でファイルに変更がされた場合は読みなおす
set browsedir=buffer " ファイル保存時の場所を、開いているファイルが有る場所に設定


" ---------------------------------------------------------------------------------
" キーマッピング
" ---------------------------------------------------------------------------------
" 閉じ補完
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap ' ''<LEFT>
"inoremap < <> <LEFT>
" inoremap () () <LEFT>

" 挿入モードでjjでモード終了
inoremap <silent> jj <ESC>

" ウィンドウの移動
" inoremap <C-h> <Left>
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-l> <Right>


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


" 垂直分割
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
nnoremap sn gt

" 前のタブへ戻る
nnoremap sp gT

" ウィンドウを閉じる
nnoremap sq :<C-u>q<CR>

" バッファを閉じる
nnoremap sQ :<C-u>bd<CR>

" 対応する括弧に移動
noremap <Space>m %

" Enterで改行
noremap <CR> o<ESC>

" 行頭に戻るをスペース+h
noremap <Space>h ^

" 行末に飛ぶをスペース+l
noremap <Space>l $


" ---------------------------------------------------------------------------------
" 検索
" --------------------------------------------------------------------------------
set incsearch " インクリメンタルサーチを有効にする
set ignorecase " 大文字小文字を区別しない
set smartcase " 大文字で検索されたら対象を大文字限定にする
set wrapscan " 行末まで検索したら行頭に戻る


" ---------------------------------------------------------------------------------
" 表示
" --------------------------------------------------------------------------------
syntax on " シンタックスを有効にする
set title " 編集中のファイル名を表示
set number " 行番号の表示
set cursorline " 行を強調表示
set background=dark " 暗い背景色に合わせた配色にする
set hlsearch "検索結果をハイライトする
set ruler " ルーラーを表示
set nowrap " 行を折り返さない
" set colorcolumn=80 " 80行目に色を付ける
set showcmd " タイプ途中のコマンドを画面最下行に表示
set laststatus=2 "ステータスラインを常に表示する
set cmdheight=5 " コマンドラインの高さ
set scrolloff=5 " 上下5行の視界を確保
set sidescrolloff=16 " 左右スクロール時の視界を確保
set backspace=indent,eol,start " バックスペースでインデントや改行を削除可能

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
" }}}



"  NeoBundleの設定 {{{
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
call neobundle#rc(expand('~/.vim/bundle/')) " プラグインインストールディレクトリを指定

" NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" HTML/CSS
NeoBundle 'mattn/emmet-vim' " HTML/CSSコーディングを簡単に
NeoBundle 'https://github.com/miripiruni/CSScomb-for-Vim.git' " CSSプロパティの整列

" Utillity
NeoBundle 'tpope/vim-surround' " テキストオブジェクトの拡張
" NeoBundle 'bronson/vim-trailing-whitespace' " 行末の半角スペースを可視化
"
NeoBundle 'tpope/vim-endwise' " Ruby向けにendを自動挿入してくれる
NeoBundle 'tomtom/tcomment_vim' " コメントON/OFFを手軽に実行
NeoBundle 'kana/vim-submode' " http://d.hatena.ne.jp/thinca/20130131/1359567419
NeoBundle 'terryma/vim-multiple-cursors' " SublimeTextのcmd+dと同じ動きをする
NeoBundle 'Yggdroot/indentLine' " コードのインデントを可視化
" NeoBundle 'jiangmiao/auto-pairs' " 記号のペアを自動挿入

" Shell
NeoBundle 'Shougo/vimshell' " Vimからshellを使えるようにする

" Asynchronous
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'tpope/vim-dispatch'

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
NeoBundle "slim-template/vim-slim" " Slimのシンタックス

" Failler
NeoBundle 'Shougo/unite.vim' " ファイル検索を便利に
NeoBundle 'Shougo/neomru.vim' " Unite.vimでfile_mruするのに必要 http://jsapachehtml.hatenablog.com/entry/2014/03/14/135458
NeoBundle 'Shougo/vimfiler'

" Rspec
NeoBundle 'thoughtbot/vim-rspec'

" Statusline
NeoBundle 'bling/vim-airline' " ステータスラインをかっこ良く

" Color schema
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'cocopon/iceberg.vim'
NeoBundle 'nanotech/jellybeans.vim'

" Vimjazz
NeoBundleLazy 'supermomonga/jazzradio.vim', { 'depends' : [ 'Shougo/unite.vim' ] }

NeoBundleCheck " インストールチェック


" ---------------------------------------------------------------------------------
" ファイルタイプ設定(on)
" ---------------------------------------------------------------------------------
" プラグインの設定を反映させるために、ファイルタイプを一旦offにして、プラグインのロード後にonにする。
filetype plugin indent on
" }}}


" プラグインのマッピングプレフィックス {{{
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
" VimShell
" ---------------------------------------------------------------------------------
nnoremap [shell] <Nop>
nmap <Space>s [shell]


" ---------------------------------------------------------------------------------
" VimFiler
" ---------------------------------------------------------------------------------
nnoremap [filer] <Nop>
nmap <Space>f [filer]
" }}}



" autocmnd {{{
" ---------------------------------------------------------------------------------
" augroupの設定
" ---------------------------------------------------------------------------------
augroup my_auto_cmd
  autocmd!
augroup END
" }}}



" NeoBundleプラグインの設定 {{{
" ---------------------------------------------------------------------------------
" Unite.vim
" ---------------------------------------------------------------------------------
let g:unite_enable_start_insert = 1 "インサートモードで開始
let g:unite_source_history_yank_enable = 1 "ヒストリー/ヤンク機能を有効化
" let g:unite_source_bookmark_directory = $HOME . '/.unite/bookmark' " bookmarkだけホームディレクトリに保存
" call unite#custom_default_action('file', 'tabopen') " ファイルはタブで開くをデフォルトに

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
" Windowサイズの変更
call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')

call submode#map('bufmove', 'n', '', '>', '<C-w>>') " s> >連打で幅を広げる
call submode#map('bufmove', 'n', '', '<', '<C-w><') " s< <連打で幅を減らす
call submode#map('bufmove', 'n', '', '+', '<C-w>+') " s+ +連打で高さを広げる
call submode#map('bufmove', 'n', '', '-', '<C-w>-') " s- -連打で高さを減らす


" ---------------------------------------------------------------------------------
" vim-airline
" ---------------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1 " タブラインにもairlineを適用
let g:airline#extensions#tabline#show_buffers = 0 " （タブが一個の場合）バッファのリストをタブラインに表示する機能をオフ
let g:airline#extensions#tabline#tab_nr_type = 1 " 0でそのタブで開いてるウィンドウ数、1で左のタブから連番

let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '%t'

let g:airline#extensions#tabline#fnamemod = ':t' " タブに表示する名前（fnamemodifyの第二引数）

" airlineのカラーテーマ
let g:airline_theme='badwolf'
" let g:airline_theme='wombat'

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
let g:airline_branch_prefix = '⭠'
let g:airline_readonly_symbol = '⭤'



" ---------------------------------------------------------------------------------
" CSSComb
" ---------------------------------------------------------------------------------
nnoremap <silent> [comb] :<C-u>CSScomb<CR>


" ---------------------------------------------------------------------------------
" VimShell
" ---------------------------------------------------------------------------------
nnoremap <silent> [shell] :<C-u>VimShell<CR>


" ---------------------------------------------------------------------------------
" Dispach
" ---------------------------------------------------------------------------------
let g:rspec_command = "Dispatch bundle exec spring rspec {spec}"

" ---------------------------------------------------------------------------------
" VimRspec
" ---------------------------------------------------------------------------------
nmap <silent><leader>c :call RunCurrentSpecFile()<CR>
nmap <silent><leader>n :call RunNearestSpec()<CR>
nmap <silent><leader>l :call RunLastSpec()<CR>
nmap <silent><leader>a :call RunAllSpecs()<CR>


" ---------------------------------------------------------------------------------
" Emmet 
" ---------------------------------------------------------------------------------
let g:user_emmet_mode = 'iv' " Emmetをinsert, visualモードだけ実行
let g:user_emmet_expandabbr_key = '<c-e>' " 展開を<CTRL>+eに


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
  autocmd FileType vimfiler call s:vimfiler_my_settings()
augroup END

function! s:vimfiler_my_settings()
  " qで終了（バッファに残らない）
  nmap <buffer> q <Plug>(vimfiler_exit)
  " Qで隠す（バッファに残る）
  nmap <buffer> Q <Plug>(vimfiler_hide)
endfunction


" ---------------------------------------------------------------------------------
" Jazzradio.vim 
" ---------------------------------------------------------------------------------
if neobundle#tap('jazzradio.vim')
    call neobundle#config({
    \   'autoload' : {
    \     'unite_sources' : [
    \       'jazzradio'
    \     ],
    \     'commands' : [
    \       'JazzradioUpdateChannels',
    \       'JazzradioStop',
    \       {
    \         'name' : 'JazzradioPlay',
    \         'complete' : 'customlist,jazzradio#channel_id_complete'
    \       }
    \     ],
    \     'function_prefix' : 'jazzradio'
    \   }
    \ })
endif


" ---------------------------------------------------------------------------------
" Vimgrepで検索結果をQuickFixで開く設定Vimgrepで検索結果をQuickFixで開く設定
" ---------------------------------------------------------------------------------
autocmd QuickFixCmdPost *grep* cwindow " Vimgrepで検索結果をQuickFixで開く設定Vimgrepで検索結果をQuickFixで開く設定

" 検索結果を前へ
nnoremap [q :cprevious<CR>

" 検索結果を次へ
nnoremap ]q :cnext<CR>

" 検索結果を最初へ
nnoremap [Q :<C-u>cfirst<CR>

" 検索結果を最後へ
nnoremap ]Q :<C-u>clast<CR>
" }}}



" カラースキームの設定 {{{
colorscheme monokai
" colorscheme solarized
" colorscheme molokai
" colorscheme jellybeans
" colorscheme iceberg
" colorscheme railscasts
" }}}
