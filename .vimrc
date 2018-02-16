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

  " deinのtomlに書くと動かない
  call dein#add('kana/vim-submode')

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


" submode
" deinのtomlに書くと動かない
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



" カラースキームの設定 
" ---------------------------------------------------------------------------------
colorscheme monokai
" colorscheme solarized
" colorscheme jellybeans
" colorscheme iceberg
" colorscheme railscasts
