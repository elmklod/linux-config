# Don't forget to provide $HOME variable to sudo
# And $USRNAME to give the right ownership to directories
if [ ! -d "$HOME/Tools" ]; then
	mkdir $HOME/Tools
	chown $USRNAME:$USRNAME $HOME/Tools
fi

if [ ! -d "$HOME/.config" ]; then
	mkdir $HOME/.config
	chown $USRNAME:$USRNAME $HOME/.config
fi


cp --preserve=all $PWD/keyboard/00-keyboard.conf /usr/share/X11/xorg.conf.d/
cp --preserve=all $PWD/modem/reset_modem.sh $HOME/Tools
cp --preserve=all $PWD/screen/def_layout.sh $HOME/Tools
cp --preserve=all $PWD/screen/redshift.conf $HOME/.config/
cp --preserve=all $PWD/screen/.Xdefaults $HOME/
