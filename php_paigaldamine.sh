# php paigaldusskript
#
#kontrollime, mitu korda php7.4 korral ok installed
# sõnad on leitud ja vastus salvestame
# muutuja sisse:
PHP=$ (dpkg-querty -W -f='${Status}' php7.4 2>/dev/null | grep -c 'ok installed' )
# kui PHP muutuja väärtus võrdub 0-ga
if [ $PHP -eq 0 ]; then
	# siis ok installed ei ole leitud
	# ja väljastame vastava teate
	# paigaldame teenuse
	echo "Paigaldame php ja vajalikud lisad"
	apt install php7.4 libapache2-mod-php php7.4-mysql
	echo "php on paigaldatud"
# kui PHP muutuja väärtus võrdub 1-ga
elif [ $PHP -eq 1 ]; then
	# siis ok install on leitud
	# ja teenus on paigaldatud
	echo "php on juba paigaldatud"
	# kontrollime olemasolu
	which php
# lõpetame tingimuslause
fi
# end
