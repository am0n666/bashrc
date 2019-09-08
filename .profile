# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

export PATH="$HOME/bin:$PATH"

export COMPOSER_HOME=/etc/composer

#if [ -d "$COMPOSER_HOME/vendor/bin" ]
#then
#	export PATH="$COMPOSER_HOME/vendor/bin:$PATH"
#fi

source ~/.includes/remove_duplicates_from_path

mesg n

# run inxi information tool
if [ -x "`which inxi 2>&1`" ]; then
    inxi -IpRS -v0 -c5
fi

clear
echo
echo Hello `whoami`
echo
