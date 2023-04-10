all:
	runestone build; runestone deploy
sync:
	rsync -az build/Remezcla01 root@remoodle.fun:/var/www/html/moodle/rune/tmp
