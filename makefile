all: README.md

README.md: guessinggame.sh
	echo "# GuesSing Game" > README.md
	echo "" >> README.md
	echo "The date and time at which make was run:" >> README.md
	LANG=en_EN date >> README.md
	echo "" >> README.md
	echo "The number of lines of code contained in *guessinggame.sh*:" >> README.md
	wc -l < guessinggame.sh >> README.md

clean:
	rm README.md
