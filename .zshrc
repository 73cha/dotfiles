
# License : MIT
# http://mollifier.mit-license.org/

########################################
# 環境変数
export LANG=ja_JP.UTF-8


# 色を使用出来るようにする
autoload -Uz colors
colors

# emacs 風キーバインドにする
bindkey -e

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# プロンプト
# 1行表示
# PROMPT="%~ %# "
# 2行表示
# PROMPT="%{${fg[red]}%}[%n@%m]%{${reset_color}%} %~
PROMPT="%{${fg[green]}%}[%n@localhost]%{${reset_color}%} %~
%# " 


# PROMPT="%{${fg[green]}%}[%n@localhost]%{${reset_color}%} $([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD") %~
# %# " 


# 単語の区切り文字を指定する
autoload -Uz select-word-style
select-word-style default
# ここで指定した文字は単語区切りとみなされる
# / も区切りと扱うので、^W でディレクトリ１つ分を削除できる
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified



########################################
# 補完
# 補完機能を有効にする

# zsh-completions
# autoload -Uz compinitよりも上に記述
fpath=(/usr/local/share/zsh-completions $fpath)

autoload -Uz compinit
compinit

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

# sudo の後ろでコマンド名を補完する
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'


########################################
# vcs_info
autoload -Uz vcs_info
autoload -Uz add-zsh-hook

zstyle ':vcs_info:*' formats '%F{green}(%s)-[%b]%f'
zstyle ':vcs_info:*' actionformats '%F{red}(%s)-[%b|%a]%f'

function _update_vcs_info_msg() {
    LANG=en_US.UTF-8 vcs_info
    RPROMPT="${vcs_info_msg_0_}"
}
add-zsh-hook precmd _update_vcs_info_msg


########################################
# オプション
# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# beep を無効にする
setopt no_beep

# フローコントロールを無効にする
setopt no_flow_control

# '#' 以降をコメントとして扱う
setopt interactive_comments

# ディレクトリ名だけでcdする
setopt auto_cd

# cd したら自動的にpushdする
setopt auto_pushd
# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 高機能なワイルドカード展開を使用する
setopt extended_glob

########################################
# キーバインド

# ^R で履歴検索をするときに * でワイルドカードを使用出来るようにする
bindkey '^R' history-incremental-pattern-search-backward

########################################
# エイリアス

# グローバルエイリアス
alias -g L='| less'
alias -g G='| grep'

# C で標準出力をクリップボードにコピーする
# mollifier delta blog : http://mollifier.hatenablog.com/entry/20100317/p1
if which pbcopy >/dev/null 2>&1 ; then
    # Mac
    alias -g C='| pbcopy'
elif which xsel >/dev/null 2>&1 ; then
    # Linux
    alias -g C='| xsel --input --clipboard'
elif which putclip >/dev/null 2>&1 ; then
    # Cygwin
    alias -g C='| putclip'
fi
# vim:set ft=zsh:



### Add my setteings ###

################################################
# rbenv
################################################
export PATH="$HOME/.rbenv/bin:$PATH"

if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi



################################################
# nodebrew
################################################
export PATH="$HOME/.nodebrew/current/bin:$PATH"



################################################
# bashmarks
################################################
source ~/.local/bin/bashmarks.sh



################################################
# iTerm 
################################################
# iTerm2のタブ名を変更する
function title {
    echo -ne "\033]0;"$*"\007"
}



################################################
# alias
################################################

## rm ##
# bashmarksがブックマークを消すときにrmを使っていて
# aliasで上書きしたrmtrashの存在しないオプション付きで
# 実行されて警告がでてしまうのでrmのaliasは戻した
alias rm="rm -i"

# ファイルをゴミ箱に置きたい時使う
alias rmt="rmtrash"


## mv ##
alias mv="mv -i"


## ls ##
# alias ls="ls -l -G"
#alias ls="gls -l --color=auto"
alias ls="gls --color=auto"


## bundler ##
alias be="bundle exec"
alias bi="bundle install --path vendor/bundle"


## source .zshrc##
alias sz="source ~/.zshrc"
#alias sz="exec $SHELL"


## vim .zshrc ##
alias vz="vim ~/.zshrc"


## rbenv ##
alias re="rbenv exec"
alias rv="rbenv version"
alias rvs="rbenv versions"
alias regi="rbenv exec gem install"
alias regl="rbenv exec gem list"
alias rg1="rbenv global 1.9.3-p484"
alias rg2="rbenv global 2.0.0-p353"
alias rg2_1="rbenv global 2.1.0"


## mysql ##
alias msstp="mysql.server stop"
alias msstt="mysql.server start"


## appache ##
alias apstt="apachectl start"
alias apstp="apachectl stop"


## shell script ##
alias rm_rp="~/shell_scripts/rm_build_project_files.sh"
alias init_rp="~/shell_scripts/init_project.sh"
alias bk_kbt="~/shell_scripts/bk_kobito.sh"
alias bk_bkmk="~/shell_scripts/bk_bookmark.sh"
alias surl="~/project/api/google_api/url_shortener.sh"

## git ##
alias ga="git add"
alias gaa="git add ."
alias gcm="git commit"
alias gp="git push"
alias gs="git status"
alias gl="git log --pretty=format:'[%ad] %h %an : %s'"
alias grf="git reflog"
alias gmv="git mv"
alias grmc="git rm chached"
alias gco="git checkout"
alias gcob="git checkout -b"


#############################################
# ls color setting
#
# lsコマンドの結果を色付けする
# $HOMEディレクトリにあるterminal_color/dircolorsに
# 色付け用のカラースキームがある
# http://qiita.com/Humangas/items/848f0318dfc3c6f5b8e2
#############################################
eval $(gdircolors ~/terminal_color/dircolors-solarized/dircolors.ansi-universal)



#############################################
# zsh-syntax-highlight
# http://blog.glidenote.com/blog/2012/12/15/zsh-syntax-highlighting/
#############################################
if [ -f ~/.zsh/functions/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source ~/.zsh/functions/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi



# node_modules path 2014/04/02
#export NODE_PATH="/usr/local/lib/node_modules"

# node 2014/01/01
#export PATH="/usr/local/share/npm/bin:$PAT
