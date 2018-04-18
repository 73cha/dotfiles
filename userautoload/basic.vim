" ---------------------------------------------------------------------------------
" 基本設定
" ---------------------------------------------------------------------------------
" エンコーディングをUTF8に設定
" set encoding=UTF-8

" vi互換しない
set nocompatible

" 色付けを300文字までに制限
set synmaxcol=200

" ターミナル接続を高速にする
set ttyfast

" マクロなどの途中経過を描写しない
set lazyredraw

" フォントを指定(:h15はフォントサイズ)
" set guifont=RictyDiscord-Regular-Powerline:h15
" set guifont=Roboto\ Mono\ Nerd\ Font\ Complete:h15

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
