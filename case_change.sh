#!/bin/bash

# Create a script that meets the following requirements:

# Script Name is exactly: /usr/local/bin/case_change
# The script may be in any language as long as it can be executed by running /usr/local/bin/case_change
# The script should accept the command line option -c with possible values of upper or lower (for example: case_change -c upper).
# When the value passed to the -c option is upper, the script should change all filenames in the directory /var/tmp/hacker_data/ to upper case.
# When the value passed to the -c option is lower, the script should change all filenames in the directory /var/tmp/hacker_data/ to lower case.
#
#
# For example, a given a filename of TestFile123 the following would happen:
#
# /usr/local/bin/case_change -c upper #changes the filename to TESTFILE123
# /usr/local/bin/case_change -c lower #changes the filename to testfile123

MyPATH=$(ls -c1 /var/tmp/hacker_data/)
FILES=$( ls -c1 /var/tmp/hacker_data/ | wc -l )
echo $FILES


LOWERCASE(){

    for i in $MyPATH
    do
        cd /var/tmp/hacker_data/
        # a minusculas
        NEW=$(echo $i | tr '[:upper:]' '[:lower:]')
        echo $NEW
        mv $i $NEW

        # Counter
        counter=$(( $counter + 1 ))
        [[ $counter == $FILES ]] && exit 0
    done
}

UPPERCASE(){

    for i in $MyPATH
    do
        cd /var/tmp/hacker_data/
        # a mayusculas
        NEW=$(echo $i | tr '[:lower:]' '[:upper:]')
        echo $NEW
        mv $i $NEW

        # Counter
        counter=$(( $counter + 1 ))
        [[ $counter == $FILES ]] && exit 0
    done
}

main(){
    while [ $1 == "-c" ]
    do

        case  $2  in
                upper)
                            UPPERCASE
                    ;;
                lower)
                            LOWERCASE
                    ;;
                *)
                echo ERROR
                exit 1
                ;;
        esac
    done
}

SALIR(){
    exit 0
}


ls -c1 /var/tmp/hacker_data/
main $1 $2
echo "###############"
ls -c1 /var/tmp/hacker_data/

