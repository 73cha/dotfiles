" ---------------------------------------------------------------------------------
" 雑多
" ---------------------------------------------------------------------------------

" 全角スペースの表示
" ---------------------------------------------------------------------------------
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


" HTML,PHPを保存したら自動で整形
" ---------------------------------------------------------------------------------
function! s:pretty_html()
  let cursor = getpos(".")

  :normal gg=G

  call setpos(".", cursor)

  unlet cursor
endfunction

augroup HTML
  autocmd!

  autocmd BufWritePre *.html call <SID>pretty_html()
augroup END


" CSS3シンタックスハイライト
" https://github.com/hail2u/vim-css3-syntax#notes
" ---------------------------------------------------------------------------------
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END


" PostCSSシンタックスハイライト
" ---------------------------------------------------------------------------------
augroup PostCSSSyntax
  autocmd!

  autocmd FileType css set iskeyword+=-
augroup END


" Riotシンタックスハイライト
" ---------------------------------------------------------------------------------
augroup RiotTag
  autocmd!

  autocmd BufRead,BufNewFile *.tag :set filetype=html
augroup END


" TypeScriptシンタックスハイライト
" ---------------------------------------------------------------------------------
augroup TypeScript
  autocmd!

  autocmd BufRead,BufNewFile *.ts :set filetype=typescript
augroup END
