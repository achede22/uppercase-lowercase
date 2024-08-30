# Uppercase-Lowercase
This project includes a script that changes all filenames in a specified directory to either uppercase or lowercase.

## Script Functionality

The script meets the following requirements:
- The script name is exactly: `/usr/local/bin/case_change`
- The script can be in any language as long as it can be executed by running `/usr/local/bin/case_change`
- The script accepts the command line option `-c` with possible values of `upper` or `lower`

### When the value passed to the `-c` option is `upper`
The script changes all filenames in the directory `/var/tmp/hacker_data/` to uppercase.

### When the value passed to the `-c` option is `lower`
The script changes all filenames in the directory `/var/tmp/hacker_data/` to lowercase.

## Examples
Given a filename of `TestFile123`, the following will happen:

### To change the filename to uppercase:
```sh
/usr/local/bin/case_change -c upper # changes the filename to TESTFILE123
```
### To change the filename to lowercase:
/usr/local/bin/case_change -c lower # changes the filename to testfile123

## Installation
Ensure you have the necessary permissions to add scripts to /usr/local/bin.
Save your script as case_change and place it in /usr/local/bin/.
Make the script executable:
```sh
    chmod +x /usr/local/bin/case_change
```

## Usage
Run the script using the following syntax:
Where <mode> can be either upper or lower.

###Example:
To change all filenames to uppercase:
```sh
    /usr/local/bin/case_change -c upper
```

To change all filenames to lowercase:
```sh
    /usr/local/bin/case_change -c lower
```

## Improvements Made
The script has been improved with the following updates:

####  Run as Root Check:
Added a check to ensure the script is run with root permissions.

#### Readable Functions:
Improved the function names and logic for better readability and maintenance.

#### Avoiding Redundancies:
Removed redundant cd commands and combined actions within the loop as necessary.
Removed unnecessary counters and exit statements inside loops.

####  Input Validation:
Added validation to ensure the correct usage of command-line arguments.

####  File Check:
Ensure only files (not directories) are processed.

## Notes
The script currently operates only on the directory /var/tmp/hacker_data/.

Ensure that the directory exists and contains the files you want to rename before running the script.

License
This project is licensed under the MIT License - see the LICENSE file for details.


## Contributing
Pull requests are welcome.
For major changes, please open an issue first to discuss what you would like to change. Feel free to contribute to this project by submitting issues or pull requests. Your feedback and contributions are welcome!


# HD


