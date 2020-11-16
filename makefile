all: README.md

README.md: guessinggame.sh
	echo $'
	# COURSERA - The Unix Workbench
	###### by Johns Hopkins University on [coursera.org](https://www.coursera.org/)
	## Peer-graded Assignment: Bash, Make, Git, and GitHub
	' >> README.md

	echo $'\n**File:** [guessinggame.sh](https://github.com/yatzil6/guessing-game)' >> README.md
	echo -n $'\n**Make date**: ' >> README.md
	date >> README.md
	echo -n $'\n**Number of lines in [guessinggame.sh](https://github.com/yatzil6/guessing-game):** ' >> README.md
	grep -c '' guessinggame.sh >> README.md

	echo $'\n
	**Description**: The `guessinggame.sh` is a program that continuously ask the user to guess the number of files in the current directory, until the user guess the correct number.

	The user is informed if their guess is too high or too low, when the user guesses the correct number of files, they are congratulated and the program list the avaliable files in the current directory.

	```
	***************

	** Welcome to the Guessing game !! **
	Test your habilities and guess the right number of files!!

	***************
	** Guess the number of files in the current directory:
	a

	-----> Please only integers are allowed!!

	***************
	** Guess the number of files in the current directory:
	6

	-----> Guess too HIGH, try again!!

	***************
	** Guess the number of files in the current directory:
	4

	-----> Guess too LOW , try again!!

	***************
	** Guess the number of files in the current directory:
	5

	** WELL DONE!! 5 file(s) is the correct answer, here is the list of files:

	---
	guessinggame.sh
	sample-0
	sample-1
	.sample-hidden-0
	.sample-hidden-1
	***************
	``` ' >> README.md
	
clean:
	rm README.md
