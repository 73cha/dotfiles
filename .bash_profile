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
# bookmarks
################################################
source ~/.local/bin/bashmarks.sh



################################################
# alias
################################################

## rm ##
alias rm="rm -i"
alias rmt="rmtrash"


## mv ##
alias mv="mv -i"


## ls ##
#alias ls="ls -l -G"
alias ls="gls -l --color=auto"


## bundler ##
alias be="bundle exec"
alias bi="bundle install --path vendor/bundle"


## source .bash_profile ##
alias sb="source ~/.bash_profile"


## vim .bash_profile ##
alias vb="vim ~/.bash_profile"


## rbenv ##
alias re="rbenv exec"
alias rv="rbenv version"
alias rvs="rbenv versions"
alias regi="rbenv exec gem install"
alias regl="rbenv exec gem list"
alias rg2="rbenv global 2.0.0-p353"
alias rg1="rbenv global 1.9.3-p484"


## mysql ##
alias msstp="mysql.server stop"
alias msstt="mysql.server strat"


## appache ##
alias apstt="apachectl start"
alias apstp="apachectl stop"


## shell script ##
alias rm_pr="~/shell_scripts/rm_build_project_files.sh"
alias init_pr="~/shell_scripts/init_project.sh"
alias bk_kbt="~/shell_scripts/bk_kobito.sh"
alias bk_bkmk="~/shell_scripts/bk_bookmark.sh"


## git ##
alias ga="git add"
alias gaa="git add ."
alias gcm="git commit"
alias gp="git push"
alias gs="git status"
alias gl="git log --oneline"
alias grf="git reflog"
alias gmv="git mv"
alias grh="git reset --hard"
alias grmc="git rm chached"
alias gco="git checkout"
alias gcob="git checkout -b"



#############################################
# bash prompt format
#############################################
export PS1='\[\e]0;i \u@localhost: \W \a\]\[\033[0;32m\][\u@localhost \w]$\[\033[0m\] '



#############################################
# ls color format
#############################################
#export LSCOLORS="gxfxcxdxbxegedabagacad"
eval $(gdircolors ~/terminal_color/dircolors-solarized/dircolors.ansi-universal)


################################################
# Rails project ENV
################################################

## test ##
export K_DB_TEST="katsuhisa_me_test"
export K_DB_TEST_USER="nami_test"
export K_DB_TEST_PASSWORD="Uj2du0App9ek4wY2"


## development ##
export K_DB_DEVELOPMENT="katsuhisa_me_development"
export K_DB_DEVELOPMENT_USER="nami_development"
export K_DB_DEVELOPMENT_PASSWORD="eUd8aN6Hoj9tHuv3"


## production ##
export K_DB_PRODUCTION="katsuhisa_me_production"
export K_DB_PRODUCTION_USER="nami_production"
export K_DB_PRODUCTION_PASSWORD="Ij1dY7wYft1Ib3tI"



# node_modules path 2014/04/02
#export NODE_PATH="/usr/local/lib/node_modules"

# node 2014/01/01
#export PATH="/usr/local/share/npm/bin:$PATH"
