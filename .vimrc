runtime! userautoload/*.vim


" NeoBundleの設定 
" ---------------------------------------------------------------------------------
" ランタイムパスの設定
" ---------------------------------------------------------------------------------
if has('vim_starting') " neobudle.vimの関数を呼ぶためにインストールしたディレクトリを指定
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

" コメントON/OFFを手軽に実行
NeoBundleLazy 'tomtom/tcomment_vim'

" http://d.hatena.ne.jp/thinca/20130131/1359567419
NeoBundle 'kana/vim-submode' 

" SublimeTextのcmd+dと同じ動きをする
NeoBundleLazy 'terryma/vim-multiple-cursors'

" コードのインデントを可視化
if has('conceal')
  NeoBundleLazy 'Yggdroot/indentLine', {
  \   'autoload' : {
  \     'commands' : ['IndentLinesReset', 'IndentLinesToggle'],
  \     'filetypes': ['html', 'slim', 'eruby', 'css', 'scss', 'sass', 'php', 'javascripts', 'coffee', 'ruby']
  \   }
  \ }
endif

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

" Slimのシンタックス
NeoBundleLazy 'slim-template/vim-slim', {
\   'autoload': { 'filetypes': ['slim'] }
\ }

" Jadeのシンタックス
NeoBundleLazy 'digitaltoad/vim-jade', {
\   'autoload': { 'filetypes': ['jade', 'pug'] }
\ }

NeoBundleLazy 'othree/yajs.vim', {
\   'autoload': { 'filetypes': ['javascript'] }
\ }

" JSXシンタックス
NeoBundleLazy 'mxw/vim-jsx', {
\   'autoload': { 'filetypes': ['javascript.jsx'] }
\ }

" PostCSSシンタックス
NeoBundleLazy 'alexlafroscia/postcss-syntax.vim', {
\   'autoload': { 'filetypes': ['css'] }
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
NeoBundleLazy 'junegunn/vim-easy-align'

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

" prettier
NeoBundle 'prettier/vim-prettier', {
\   'do': 'npm install',
\   'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue']
\ }

call neobundle#end()
NeoBundleCheck " インストールチェック


" ---------------------------------------------------------------------------------
" CSS3シンタックスの設定
" https://github.com/hail2u/vim-css3-syntax#notes
" ---------------------------------------------------------------------------------
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

" ---------------------------------------------------------------------------------
" PostCSSシンタックスの設定
" ---------------------------------------------------------------------------------
augroup PostCSSSyntax
  autocmd!

  autocmd FileType css set iskeyword+=-
augroup END

" ---------------------------------------------------------------------------------
" Riotシンタックス色付け
" ---------------------------------------------------------------------------------
augroup RiotTag
  autocmd!

  autocmd BufRead,BufNewFile *.tag :set filetype=html
augroup END




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
" VimFiler
" ---------------------------------------------------------------------------------
nnoremap [filer] <Nop>
nmap <Space>f [filer]


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
" Emmet 
" ---------------------------------------------------------------------------------
" let g:user_emmet_mode = 'iv' " Emmetをinsert, visualモードだけ実行
let g:user_emmet_expandabbr_key = '<c-e>' " 展開を<CTRL>+eに


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
" Prettier
" ---------------------------------------------------------------------------------
let g:prettier#autoformat = 0
let g:prettier#quickfix_enabled = 0
let g:prettier#exec_cmd_async = 1 " require vim8+

augroup Prettier
  autocmd!
  autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
augroup END


" ---------------------------------------------------------------------------------
" ALE
" ---------------------------------------------------------------------------------
let g:ale_linters = {
\ 'html': ['htmlhint'],
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
