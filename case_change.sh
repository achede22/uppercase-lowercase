#!/bin/bash

# Ensure the script is run with appropriate permissions
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 
    exit 1
fi

# Function to convert filenames to lowercase
lowercase() {
    for file in /var/tmp/hacker_data/*; do
        if [[ -f "$file" ]]; then
            local new_file=$(basename "$file" | tr '[:upper:]' '[:lower:]')
            if [[ "$file" != "$file/$new_file" ]]; then
                mv "$file" "/var/tmp/hacker_data/$new_file"
                echo "Renamed $file to $new_file"
            fi
        fi
    done
}

# Function to convert filenames to uppercase
uppercase() {
    for file in /var/tmp/hacker_data/*; do
        if [[ -f "$file" ]]; then
            local new_file=$(basename "$file" | tr '[:lower:]' '[:upper:]')
            if [[ "$file" != "$file/$new_file" ]]; then
                mv "$file" "/var/tmp/hacker_data/$new_file"
                echo "Renamed $file to $new_file"
            fi
        fi
    done
}

# Main function to handle the argument and call respective function
main() {
    if [[ "$1" == "-c" && -n "$2" ]]; then
        case "$2" in
            upper)
                uppercase
                ;;
            lower)
                lowercase
                ;;
            *)
                echo "Invalid argument. Use 'upper' or 'lower'."
                exit 1
                ;;
        esac
    else
        echo "Usage: $0 -c <upper|lower>"
        exit 1
    fi
}

# Execute the main function with command-line arguments
main "$@"