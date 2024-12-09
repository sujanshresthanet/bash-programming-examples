#!/bin/bash

# 1. Right Triangle
right_triangle() {
    echo "Enter number of rows:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=1; j<=i; j++)); do
            echo -n "*"
        done
        echo ""
    done
}

# 2. Inverted Right Triangle
inverted_right_triangle() {
    echo "Enter number of rows:"
    read n
    for ((i=n; i>=1; i--)); do
        for ((j=1; j<=i; j++)); do
            echo -n "*"
        done
        echo ""
    done
}

# 3. Square of Stars
square_of_stars() {
    echo "Enter size of the square:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=1; j<=n; j++)); do
            echo -n "*"
        done
        echo ""
    done
}

# 4. Pyramid
pyramid() {
    echo "Enter number of rows:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=i; j<n; j++)); do
            echo -n " "
        done
        for ((j=1; j<=((2*i-1)); j++)); do
            echo -n "*"
        done
        echo ""
    done
}

# 5. Diamond
diamond() {
    echo "Enter the size (odd number):"
    read n
    mid=$(( (n+1)/2 ))

    for ((i=1; i<=mid; i++)); do
        for ((j=i; j<mid; j++)); do
            echo -n " "
        done
        for ((j=1; j<=((2*i-1)); j++)); do
            echo -n "*"
        done
        echo ""
    done

    for ((i=mid-1; i>=1; i--)); do
        for ((j=i; j<mid; j++)); do
            echo -n " "
        done
        for ((j=1; j<=((2*i-1)); j++)); do
            echo -n "*"
        done
        echo ""
    done
}

# 6. Fibonacci Triangle
fibonacci_triangle() {
    echo "Enter number of rows:"
    read n
    a=0
    b=1
    for ((i=1; i<=n; i++)); do
        for ((j=1; j<=i; j++)); do
            echo -n "$a "
            temp=$((a + b))
            a=$b
            b=$temp
        done
        echo ""
    done
}

# 7. Hollow Square
hollow_square() {
    echo "Enter size of the square:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=1; j<=n; j++)); do
            if ((i == 1 || i == n || j == 1 || j == n)); then
                echo -n "*"
            else
                echo -n " "
            fi
        done
        echo ""
    done
}

# 8. Number Pyramid
number_pyramid() {
    echo "Enter number of rows:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=i; j<n; j++)); do
            echo -n " "
        done
        for ((j=1; j<=i; j++)); do
            echo -n "$i "
        done
        echo ""
    done
}

# 9. Inverted Pyramid
inverted_pyramid() {
    echo "Enter number of rows:"
    read n
    for ((i=n; i>=1; i--)); do
        for ((j=n; j>i; j--)); do
            echo -n " "
        done
        for ((j=1; j<=((2*i-1)); j++)); do
            echo -n "*"
        done
        echo ""
    done
}

# 10. X Shape
x_shape() {
    echo "Enter size of X (odd number):"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=1; j<=n; j++)); do
            if ((j == i || j == (n-i+1))); then
                echo -n "*"
            else
                echo -n " "
            fi
        done
        echo ""
    done
}

# 11. Hollow Right Triangle
hollow_right_triangle() {
    echo "Enter number of rows:"
    read n
    for ((i=1; i<=n; i++)); do
        if ((i == n)); then
            for ((j=1; j<=i; j++)); do
                echo -n "*"
            done
        else
            echo -n "*"
            for ((j=2; j<i; j++)); do
                echo -n " "
            done
            echo -n "*"
        fi
        echo ""
    done
}

# 12. Odd Number Pyramid
odd_number_pyramid() {
    echo "Enter number of rows:"
    read n
    num=1
    for ((i=1; i<=n; i++)); do
        for ((j=i; j<n; j++)); do
            echo -n " "
        done
        for ((j=1; j<=i; j++)); do
            echo -n "$num "
            num=$((num + 2))
        done
        echo ""
    done
}

# 13. Even Number Pyramid
even_number_pyramid() {
    echo "Enter number of rows:"
    read n
    num=2
    for ((i=1; i<=n; i++)); do
        for ((j=i; j<n; j++)); do
            echo -n " "
        done
        for ((j=1; j<=i; j++)); do
            echo -n "$num "
            num=$((num + 2))
        done
        echo ""
    done
}

# 14. Checkerboard Pattern
checkerboard() {
    echo "Enter size of the grid:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=1; j<=n; j++)); do
            if (( (i+j) % 2 == 0 )); then
                echo -n "*"
            else
                echo -n " "
            fi
        done
        echo ""
    done
}

# 15. Right-Aligned Number Triangle
right_aligned_number_triangle() {
    echo "Enter number of rows:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=i; j<n; j++)); do
            echo -n " "
        done
        for ((j=1; j<=i; j++)); do
            echo -n "$j "
        done
        echo ""
    done
}

# 16. Reverse Number Pyramid
reverse_number_pyramid() {
    echo "Enter number of rows:"
    read n
    for ((i=n; i>=1; i--)); do
        for ((j=n; j>i; j--)); do
            echo -n " "
        done
        for ((j=1; j<=i; j++)); do
            echo -n "$j "
        done
        echo ""
    done
}

# 17. Hollow Diamond
hollow_diamond() {
    echo "Enter an odd number:"
    read n
    mid=$(( (n+1)/2 ))

    for ((i=1; i<=mid; i++)); do
        for ((j=i; j<mid; j++)); do
            echo -n " "
        done
        for ((j=1; j<=((2*i-1)); j++)); do
            if ((j == 1 || j == ((2*i-1)))); then
                echo -n "*"
            else
                echo -n " "
            fi
        done
        echo ""
    done

    for ((i=mid-1; i>=1; i--)); do
        for ((j=i; j<mid; j++)); do
            echo -n " "
        done
        for ((j=1; j<=((2*i-1)); j++)); do
            if ((j == 1 || j == ((2*i-1)))); then
                echo -n "*"
            else
                echo -n " "
            fi
        done
        echo ""
    done
}

# 18. Hollow Pyramid
hollow_pyramid() {
    echo "Enter number of rows:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=i; j<n; j++)); do
            echo -n " "
        done
        for ((j=1; j<=((2*i-1)); j++)); do
            if ((j == 1 || j == ((2*i-1)))); then
                echo -n "*"
            else
                echo -n " "
            fi
        done
        echo ""
    done
}

# 19. Hourglass Pattern
hourglass() {
    echo "Enter number of rows:"
    read n
    for ((i=n; i>=1; i--)); do
        for ((j=n; j>i; j--)); do
            echo -n " "
        done
        for ((j=1; j<=((2*i-1)); j++)); do
            echo -n "*"
        done
        echo ""
    done
    for ((i=2; i<=n; i++)); do
        for ((j=n; j>i; j--)); do
            echo -n " "
        done
        for ((j=1; j<=((2*i-1)); j++)); do
            echo -n "*"
        done
        echo ""
    done
}

# 20. Right-Aligned Pyramid
right_aligned_pyramid() {
    echo "Enter number of rows:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=i; j<n; j++)); do
            echo -n " "
        done
        for ((j=1; j<=((2*i-1)); j++)); do
            echo -n "*"
        done
        echo ""
    done
}

# 21. Zigzag Pattern
zigzag() {
    echo "Enter number of rows:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=1; j<=n; j++)); do
            if (( (i+j) % 2 == 0 )); then
                echo -n "*"
            else
                echo -n " "
            fi
        done
        echo ""
    done
}

# 22. Inverted Number Pyramid
inverted_number_pyramid() {
    echo "Enter number of rows:"
    read n
    for ((i=n; i>=1; i--)); do
        for ((j=n; j>i; j--)); do
            echo -n " "
        done
        for ((j=1; j<=i; j++)); do
            echo -n "$i "
        done
        echo ""
    done
}

# 23. Vertical Line
vertical_line() {
    echo "Enter number of rows:"
    read n
    for ((i=1; i<=n; i++)); do
        echo "*"
    done
}

# 24. Horizontal Line
horizontal_line() {
    echo "Enter length of line:"
    read n
    for ((i=1; i<=n; i++)); do
        echo -n "*"
    done
    echo ""
}

# 25. Rhombus
rhombus() {
    echo "Enter number of rows:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=i; j<n; j++)); do
            echo -n " "
        done
        for ((j=1; j<=n; j++)); do
            echo -n "*"
        done
        echo ""
    done
}

# 26. Half Diamond
half_diamond() {
    echo "Enter number of rows:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=1; j<=i; j++)); do
            echo -n "*"
        done
        echo ""
    done
    for ((i=n-1; i>=1; i--)); do
        for ((j=1; j<=i; j++)); do
            echo -n "*"
        done
        echo ""
    done
}

# 27. Pyramid of Numbers
number_pyramid_numbers() {
    echo "Enter number of rows:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=i; j<n; j++)); do
            echo -n " "
        done
        for ((j=1; j<=i; j++)); do
            echo -n "$j "
        done
        echo ""
    done
}

# 28. Spacing Between Numbers
spacing_between_numbers() {
    echo "Enter the number of rows:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=1; j<=i; j++)); do
            echo -n "$j  "
        done
        echo ""
    done
}

# 29. Equilateral Triangle
equilateral_triangle() {
    echo "Enter number of rows:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=i; j<n; j++)); do
            echo -n " "
        done
        for ((j=1; j<=((2*i-1)); j++)); do
            echo -n "*"
        done
        echo ""
    done
}

# 30. Boxed Pattern
boxed_pattern() {
    echo "Enter size of box:"
    read n
    for ((i=1; i<=n; i++)); do
        for ((j=1; j<=n; j++)); do
            if ((i == 1 || i == n || j == 1 || j == n)); then
                echo -n "*"
            else
                echo -n " "
            fi
        done
        echo ""
    done
}

# Main menu for pattern selection
while true; do
    echo "Choose a pattern:"
    echo "1. Right Triangle"
    echo "2. Inverted Right Triangle"
    echo "3. Square of Stars"
    echo "4. Pyramid"
    echo "5. Diamond"
    echo "6. Fibonacci Triangle"
    echo "7. Hollow Square"
    echo "8. Number Pyramid"
    echo "9. Inverted Pyramid"
    echo "10. X Shape"
    echo "11. Hollow Right Triangle"
    echo "12. Odd Number Pyramid"
    echo "13. Even Number Pyramid"
    echo "14. Checkerboard Pattern"
    echo "15. Right-Aligned Number Triangle"
    echo "16. Reverse Number Pyramid"
    echo "17. Hollow Diamond"
    echo "18. Hollow Pyramid"
    echo "19. Hourglass Pattern"
    echo "20. Right-Aligned Pyramid"
    echo "21. Zigzag Pattern"
    echo "22. Inverted Number Pyramid"
    echo "23. Vertical Line"
    echo "24. Horizontal Line"
    echo "25. Rhombus"
    echo "26. Half Diamond"
    echo "27. Pyramid of Numbers"
    echo "28. Spacing Between Numbers"
    echo "29. Equilateral Triangle"
    echo "30. Boxed Pattern"

    read -p "Enter your choice (1-30): " choice

    case $choice in
        1) right_triangle ;;
        2) inverted_right_triangle ;;
        3) square_of_stars ;;
        4) pyramid ;;
        5) diamond ;;
        6) fibonacci_triangle ;;
        7) hollow_square ;;
        8) number_pyramid ;;
        9) inverted_pyramid ;;
        10) x_shape ;;
        11) hollow_right_triangle ;;
        12) odd_number_pyramid ;;
        13) even_number_pyramid ;;
        14) checkerboard ;;
        15) right_aligned_number_triangle ;;
        16) reverse_number_pyramid ;;
        17) hollow_diamond ;;
        18) hollow_pyramid ;;
        19) hourglass ;;
        20) right_aligned_pyramid ;;
        21) zigzag ;;
        22) inverted_number_pyramid ;;
        23) vertical_line ;;
        24) horizontal_line ;;
        25) rhombus ;;
        26) half_diamond ;;
        27) number_pyramid_numbers ;;
        28) spacing_between_numbers ;;
        29) equilateral_triangle ;;
        30) boxed_pattern ;;
        *) echo "Invalid choice" ;;
    esac

    read -p "Do you want to continue? (yes/no): " answer
    if [[ "$answer" != "yes" ]]; then
        break
    fi
    echo ""
done
