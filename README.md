# uppercase-lowercase
Change filenames to uppercase and lowercase


 Create a script that meets the following requirements:

 Script Name is exactly: /usr/local/bin/case_change
 
 The script may be in any language as long as it can be executed by running /usr/local/bin/case_change
 
 The script should accept the command line option -c with possible values of upper or lower (for example: case_change -c upper).
 
 When the value passed to the -c option is upper, 
 the script should change all filenames in the directory /var/tmp/hacker_data/ to upper case.
 
 When the value passed to the -c option is lower, 
 the script should change all filenames in the directory /var/tmp/hacker_data/ to lower case.

 For example, a given a filename of TestFile123 the following would happen:

 /usr/local/bin/case_change -c upper #changes the filename to TESTFILE123

/usr/local/bin/case_change -c lower #changes the filename to testfile123
