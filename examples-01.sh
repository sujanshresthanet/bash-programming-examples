#!/bin/bash

# Function to display the menu
display_menu() {
    echo -e "\n=============================================="
    echo -e "        BASH SCRIPTING EXAMPLES MENU"
    echo -e "=============================================="
    echo -e "1. Hello World"
    echo -e "2. Echo Command"
    echo -e "3. Comments"
    echo -e "4. Multi-line Comment"
    echo -e "5. While Loop"
    echo -e "6. For Loop"
    echo -e "7. Get User Input"
    echo -e "8. If Statement"
    echo -e "9. And Condition if Statement"
    echo -e "10. Or Condition if Statement"
    echo -e "11. Else if and Else Condition"
    echo -e "12. Case Condition"
    echo -e "13. Get Arguments from Command Line"
    echo -e "14. Get Arguments from Command Line with Names"
    echo -e "15. Combine Two Strings in a Variable"
    echo -e "16. Get Substring of Strings"
    echo -e "17. Add 2 Numbers into a Variable"
    echo -e "18. Create a Function"
    echo -e "19. Use Function Parameters"
    echo -e "20. Pass Return Value from Script"
    echo -e "21. Make Directory"
    echo -e "22. Make Directory by Checking Existence"
    echo -e "23. Read a File"
    echo -e "24. Delete a File"
    echo -e "25. Append to File"
    echo -e "26. Test if File Exists"
    echo -e "27. Send Email Example"
    echo -e "28. Get Current Date"
    echo -e "29. Wait Command"
    echo -e "30. Sleep Command"
    echo -e "31. Exit"
    echo -e "==============================================\n"
}

# Function to handle user input for the selected option
execute_option() {
    case $1 in
        1)
            echo -e "\nHello, World!"
            ;;
        2)
            echo -e "\nThis is an echo command example."
            ;;
        3)
            # Single-line comment
            echo -e "\nThis is a single-line comment example."
            ;;
        4)
            # Multi-line comment
            echo -e "\nMulti-line comment executed."
            : '
            This is a multi-line comment example.
            It spans multiple lines.
            '
            ;;
        5)
            count=1
            echo -e "\nExecuting while loop:"
            while [ $count -le 3 ]; do
                echo "Loop iteration: $count"
                ((count++))
            done
            ;;
        6)
            echo -e "\nExecuting for loop:"
            for i in {1..3}; do
                echo "Loop iteration: $i"
            done
            ;;
        7)
            read -p "Enter your name: " name
            echo -e "\nHello, $name!"
            ;;
        8)
            number=5
            echo -e "\nExecuting If Statement:"
            if [ $number -gt 3 ]; then
                echo "Number is greater than 3"
            else
                echo "Number is less than or equal to 3"
            fi
            ;;
        9)
            number=5
            echo -e "\nExecuting And Condition if Statement:"
            if [ $number -gt 10 ] && [ $number -lt 20 ]; then
                echo "Number is between 10 and 20"
            else
                echo "Number is not in the range."
            fi
            ;;
        10)
            number=5
            echo -e "\nExecuting Or Condition if Statement:"
            if [ $number -lt 3 ] || [ $number -gt 10 ]; then
                echo "Number is outside the range 3 to 10."
            else
                echo "Number is between 3 and 10."
            fi
            ;;
        11)
            number=5
            echo -e "\nExecuting Else if and Else Condition:"
            if [ $number -gt 10 ]; then
                echo "Number is greater than 10."
            elif [ $number -gt 3 ]; then
                echo "Number is between 3 and 10."
            else
                echo "Number is less than or equal to 3."
            fi
            ;;
        12)
            read -p "Enter a color (red/blue/green): " color
            echo -e "\nExecuting Case Condition:"
            case $color in
                red) echo "You chose red." ;;
                blue) echo "You chose blue." ;;
                green) echo "You chose green." ;;
                *) echo "Unknown color." ;;
            esac
            ;;
        13)
            echo -e "\nCommand-line argument 1: $1"
            echo -e "Command-line argument 2: $2"
            ;;
        14)
            echo -e "\nName: $1, Age: $2"
            ;;
        15)
            string1="Hello"
            string2="World"
            combined="$string1 $string2"
            echo -e "\nCombined string: $combined"
            ;;
        16)
            text="Hello, World!"
            substring=${text:0:5}
            echo -e "\nSubstring: $substring"
            ;;
        17)
            num1=5
            num2=3
            sum=$((num1 + num2))
            echo -e "\nSum of $num1 and $num2 is $sum"
            ;;
        18)
            hello_world() {
                echo "Hello from the function!"
            }
            echo -e "\nCreating and calling a function:"
            hello_world
            ;;
        19)
            greet_user() {
                echo "Hello, $1!"
            }
            echo -e "\nPassing parameter to function:"
            greet_user "John"
            ;;
        20)
            get_number() {
                echo "42"
            }
            number=$(get_number)
            echo -e "\nReturned value from function: $number"
            ;;
        21)
            mkdir new_directory
            echo -e "\nDirectory 'new_directory' created."
            ;;
        22)
            if [ ! -d "existing_directory" ]; then
                mkdir existing_directory
                echo -e "\nDirectory 'existing_directory' created."
            else
                echo -e "\nDirectory 'existing_directory' already exists."
            fi
            ;;
        23)
            if [ -f "sample.txt" ]; then
                cat sample.txt
            else
                echo -e "\nFile does not exist."
            fi
            ;;
        24)
            rm sample.txt
            echo -e "\nFile 'sample.txt' deleted."
            ;;
        25)
            echo "Append this line to file" >> sample.txt
            echo -e "\nData appended to 'sample.txt'."
            ;;
        26)
            if [ -f "sample.txt" ]; then
                echo -e "\nFile 'sample.txt' exists."
            else
                echo -e "\nFile 'sample.txt' does not exist."
            fi
            ;;
        27)
            # Send Email (example with 'mail' command)
            echo "This is the email body" | mail -s "Test Subject" user@example.com
            echo -e "\nEmail sent."
            ;;
        28)
            current_date=$(date)
            echo -e "\nCurrent date and time: $current_date"
            ;;
        29)
            echo -e "\nWaiting for 5 seconds..."
            wait
            echo "Wait completed."
            ;;
        30)
            echo -e "\nSleeping for 3 seconds..."
            sleep 3
            echo "Sleep completed."
            ;;
        31)
            echo -e "\nExiting script."
            exit 0
            ;;
        *)
            echo -e "\nInvalid option. Please try again."
            ;;
    esac
}

# Main script
while true; do
    display_menu
    read -p "Enter your choice (1-31): " choice
    
    # Error handling for invalid input
    if ! [[ "$choice" =~ ^[1-9]$|^[1-2][0-9]$|^30$|^31$ ]]; then
        echo -e "\nInvalid input! Please select a valid option between 1 and 31."
        continue
    fi
    
    execute_option $choice
    
    # Two new lines before the "Do you want to continue" prompt
    echo -e "\n\nDo you want to continue? (y/n): "
    read -p "" continue_choice
    if [[ "$continue_choice" != "y" && "$continue_choice" != "Y" ]]; then
        echo -e "\nExiting script."
        break
    fi
done
