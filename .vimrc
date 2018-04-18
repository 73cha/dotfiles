" ---------------------------------------------------------------------------------
" .vimrc
" ---------------------------------------------------------------------------------

" 分割した設定を読み込む
" ---------------------------------------------------------------------------------
set runtimepath+=~/.vim/
runtime! userautoload/*.vim


" python3のパスを設定
" deniteやdeopleteに必要
" ---------------------------------------------------------------------------------
let g:python3_host_prog = expand('/usr/local/bin/python3')


" ファイルタイプ設定(off)
" ---------------------------------------------------------------------------------
filetype off " ファイル形式の検出を無効化


" deinの設定
" https://qiita.com/delphinus/items/00ff2c0ba972c6e41542
" ---------------------------------------------------------------------------------
if &compatible
  set nocompatible
endif

" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let g:rc_dir    = expand('~/.vim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif


" ファイルタイプ設定(on)
" ---------------------------------------------------------------------------------
" プラグインの設定を反映させるために、ファイルタイプを一旦offにして、プラグインのロード後にonにする。
filetype plugin indent on


" カラースキームの設定 
" ---------------------------------------------------------------------------------
colorscheme monokai
" colorscheme tender
" colorscheme gruvbox 
" colorscheme dracula
" colorscheme solarized
" colorscheme jellybeans
" colorscheme iceberg
" colorscheme railscasts
