pgrep -x Xorg > /dev/null
if [ $? -eq 0 ] || [ "$(tty)" != "/dev/tty1" ]; then
		:
else
		exec startx
fi