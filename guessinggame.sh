#!/usr/bin/env bash

# FUNCTIONS
function ask_number_of_files {
	# GET NUMBER OF FILES ON CURRENT DIRECTORY (HIDDEN INCLUDED)
	let n_files=$(ls -A -1 | wc -l)
	
	# ASK NUMBER OF FILE TO USER
	echo "***************"
	echo "** Guess the number of files in the current directory:"
	read n_files_guess
	
	if [[ $n_files_guess =~ ^[0-9]+$ ]]
	then
		return $n_files_guess
	else
		echo $'\n-----> Please only integers are allowed!!\n'
		ask_number_of_files
	fi
}

# MAIN PROCEDURE
echo "***************"
echo $'\n** Welcome to the Guessing game !! **'
echo $'Test your habilities and guess the right number of files!!\n'

ask_number_of_files

while [[ $n_files -ne $n_files_guess ]]
do
	if [[ $n_files -lt $n_files_guess ]] 
	then
		echo $'\n-----> Guess too HIGH, try again!!\n'
	else
		echo $'\n-----> Guess too LOW , try again!!\n'
	fi
	ask_number_of_files
done

echo $'\n** WELL DONE!!' $n_files $'file(s) is the correct answer, here is the list of files:\n'
echo "---" && ls -A -1
echo "***************"
