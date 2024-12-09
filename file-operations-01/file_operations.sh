#!/bin/bash

# Function to display the menu
show_menu() {
  echo "=========================="
  echo " File and Directory Operations"
  echo "=========================="
  echo "1. Create a new file"
  echo "2. Create a new directory"
  echo "3. List files in current directory"
  echo "4. Rename a file or directory"
  echo "5. Delete a file"
  echo "6. Delete a directory"
  echo "7. Copy a file"
  echo "8. Move a file"
  echo "9. Display contents of a file"
  echo "10. Check file type"
  echo "11. Change file permissions"
  echo "12. Search for a file in the current directory"
  echo "13. Display disk usage"
  echo "14. Find large files"
  echo "15. Check disk space"
  echo "16. Display file properties"
  echo "17. Create an empty directory structure"
  echo "18. Display system uptime"
  echo "19. Find files by name"
  echo "20. Find files by size"
  echo "21. Display the first few lines of a file"
  echo "22. Display the last few lines of a file"
  echo "23. Compare two files"
  echo "24. Display file differences"
  echo "25. Append data to a file"
  echo "26. Create a symbolic link"
  echo "27. Change file ownership"
  echo "28. Change file group"
  echo "29. Check file hash (checksum)"
  echo "30. Exit"
  echo "=========================="
}

# Function to perform the operation based on user's choice
perform_operation() {
  read -p "Enter your choice [1-30]: " choice
  case $choice in
    1) # Create a new file
      read -p "Enter the file name to create: " filename
      touch "$filename"
      echo "File '$filename' created."
      ;;
    2) # Create a new directory
      read -p "Enter the directory name to create: " dirname
      mkdir "$dirname"
      echo "Directory '$dirname' created."
      ;;
    3) # List files in current directory
      echo "Files in the current directory:"
      ls -l
      ;;
    4) # Rename a file or directory
      read -p "Enter the current name: " oldname
      read -p "Enter the new name: " newname
      mv "$oldname" "$newname"
      echo "'$oldname' renamed to '$newname'."
      ;;
    5) # Delete a file
      read -p "Enter the file name to delete: " filename
      rm "$filename"
      echo "File '$filename' deleted."
      ;;
    6) # Delete a directory
      read -p "Enter the directory name to delete: " dirname
      rmdir "$dirname"
      echo "Directory '$dirname' deleted."
      ;;
    7) # Copy a file
      read -p "Enter the file name to copy: " sourcefile
      read -p "Enter the destination file name: " destfile
      cp "$sourcefile" "$destfile"
      echo "File '$sourcefile' copied to '$destfile'."
      ;;
    8) # Move a file
      read -p "Enter the file name to move: " sourcefile
      read -p "Enter the destination directory: " destdir
      mv "$sourcefile" "$destdir"
      echo "File '$sourcefile' moved to '$destdir'."
      ;;
    9) # Display contents of a file
      read -p "Enter the file name to display: " filename
      cat "$filename"
      ;;
    10) # Check file type
      read -p "Enter the file name to check: " filename
      file "$filename"
      ;;
    11) # Change file permissions
      read -p "Enter the file name: " filename
      read -p "Enter the permissions (e.g., 755): " permissions
      chmod "$permissions" "$filename"
      echo "Permissions for '$filename' changed to '$permissions'."
      ;;
    12) # Search for a file in the current directory
      read -p "Enter the file name to search for: " filename
      find . -name "$filename"
      ;;
    13) # Display disk usage
      du -sh *
      ;;
    14) # Find large files
      read -p "Enter size limit (e.g., +100M): " size
      find . -type f -size "$size"
      ;;
    15) # Check disk space
      df -h
      ;;
    16) # Display file properties
      read -p "Enter the file name to display properties: " filename
      stat "$filename"
      ;;
    17) # Create an empty directory structure
      read -p "Enter the directory structure to create (e.g., dir1/dir2/dir3): " structure
      mkdir -p "$structure"
      echo "Directory structure '$structure' created."
      ;;
    18) # Display system uptime
      uptime
      ;;
    19) # Find files by name
      read -p "Enter the name to search for: " name
      find . -name "$name"
      ;;
    20) # Find files by size
      read -p "Enter the size range (e.g., +100M, -500M): " size
      find . -type f -size "$size"
      ;;
    21) # Display the first few lines of a file
      read -p "Enter the file name: " filename
      head "$filename"
      ;;
    22) # Display the last few lines of a file
      read -p "Enter the file name: " filename
      tail "$filename"
      ;;
    23) # Compare two files
      read -p "Enter the first file name: " file1
      read -p "Enter the second file name: " file2
      diff "$file1" "$file2"
      ;;
    24) # Display file differences
      read -p "Enter the first file name: " file1
      read -p "Enter the second file name: " file2
      diff -u "$file1" "$file2"
      ;;
    25) # Append data to a file
      read -p "Enter the file name: " filename
      read -p "Enter the text to append: " text
      echo "$text" >> "$filename"
      echo "Text appended to '$filename'."
      ;;
    26) # Create a symbolic link
      read -p "Enter the target file: " target
      read -p "Enter the link name: " linkname
      ln -s "$target" "$linkname"
      echo "Symbolic link '$linkname' created for '$target'."
      ;;
    27) # Change file ownership
      read -p "Enter the file name: " filename
      read -p "Enter the new owner: " owner
      chown "$owner" "$filename"
      echo "Ownership of '$filename' changed to '$owner'."
      ;;
    28) # Change file group
      read -p "Enter the file name: " filename
      read -p "Enter the new group: " group
      chgrp "$group" "$filename"
      echo "Group of '$filename' changed to '$group'."
      ;;
    29) # Check file hash (checksum)
      read -p "Enter the file name: " filename
      sha256sum "$filename"
      ;;
    30) # Exit the script
      echo "Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid option, please choose again."
      ;;
  esac
}

# Main loop
while true; do
  show_menu
  perform_operation
  echo -e "\n--------------------------------------------------"
  read -p "Do you want to continue? (yes/no): " continue_choice
  if [[ "$continue_choice" != "yes" ]]; then
    echo "Exiting the script. Goodbye!"
    exit 0
  fi
done
