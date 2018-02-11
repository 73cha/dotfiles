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
