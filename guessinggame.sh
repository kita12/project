function guess {
	n=$(ls -l | grep "^-" | wc -l)
	while true
	do
		echo "Enter your guess:"
		read nuser
		if [[ $nuser -gt $n ]]
		then
			echo "Guess too big"
		elif [[ $nuser -lt $n ]]
		then 
			echo "Guess too small"
		else
			echo "Congratulations"
			break
		fi
	done
}



echo "How many files are there in the current directory?"
guess

