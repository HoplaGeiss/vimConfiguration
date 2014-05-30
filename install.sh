#!/bin/sh

# Definition of a few fonction

info () {
  printf " [ \033[00;34m..\033[0m ] $1\n"
}

success () {
  printf "\r\033[2K [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}


# Actual code

echo ''
info 'Setting up the personnal VIM configuration'
info '============================================='
echo ''

info 'Backing up current vim config'
info '-----------------------------'
today=`date +%Y%m%d`
for file in $HOME/.vimrc $HOME/.gvimrc $DDPATH; do
    [ -e $file ] && mv -v $file $file.$today
done
mv -v $HOME/.vim $HOME/.vim.$today

echo ''
info 'Downloading the configuration'
info '-----------------------------'

if [ -x "/usr/bin/git" ] ; then
  git clone --quiet --recursive 'https://github.com/HoplaGeiss/vimConfiguration' "$HOME/.vim"
  cd $HOME/.vim
else
  fail 'Please install git'
fi
echo '.vim imported'

echo ''
info 'Linking .vimrc to .vim/vimrc'
info '----------------------------'

if test $(which rake)
then
  rake vim:link
else
  fail 'Install Ruby and Rake to continue'
fi

echo ''
info 'Installing Vundle'
info '-----------------'
git clone --quiet --recursive http://github.com/gmarik/vundle.git bundle/vundle

echo ''
info 'Installing plugins'
info '------------------'
if test $(which gvim)
then
  vim +PluginInstall +qall
else
  fail 'gvim not found in path.'
fi


success 'Setup complete. Enjoy!!'
