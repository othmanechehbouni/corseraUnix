#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
    local count=$(ls -l | grep "^-" | wc -l)
    echo "$count"
}

# Main function to run the guessing game
run_guessing_game() {
    local actual_count=$(count_files)
    local guess=-1

    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"

    while [ $guess -ne $actual_count ]; do
        read -p "Enter your guess: " guess

        if [ $guess -lt $actual_count ]; then
            echo "Too low! Try again."
        elif [ $guess -gt $actual_count ]; then
            echo "Too high! Try again."
        fi
    done

    echo "Congratulations! You guessed correctly. There are $actual_count files in the current directory."
}

# Run the guessing game
run_guessing_game
