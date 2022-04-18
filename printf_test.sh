##! /bin/bash

<<com
TODO
add tested repos include .h to all ft_test.c
com

TEST=$(pwd)
BASE="/Users/rvuorenl/hive/repos"


# setup path function
# setup_path $BASE $TEST $0;
# setup_path()
# {


#     read PATH



#     # LINE1=$(sed -n '/# define BUFF_SIZE /=' $HEAD)
#     # NEWBUFF="# define BUFF_SIZE $BUFF"

#     # sed -e "${LINE1}s/.*/$NEWBUFF/" $HEAD > $HEAD.tmp
#     # mv $HEAD.tmp $HEAD
#     declare -i LINE1

#     LINE1=$(sed -n 'BASE/=' $2/$3)
#     NEWBUFF="BASE=\"$PATH\""

#     sed -e "${LINE1}s/.*/$NEWBUFF/" $2/$3 > $2/$3.tmp
#     mv $2/$3.tmp $2/$3

#     BASE=$PATH
#     # BASE=$(cat $PATH)

#     if [ ! -d $BASE ]
#     then
#         printf "Invalid path! Press 'y' to enter new path, '!y' to quit: "
#         read CONF
#         if [ "$CONF" = "y" ]
#         then
#             setup_path
#         else
#             printf "Exit path\n"
#             exit
#         fi
#     else
#         printf "Path OK!\n"
#         setup_test
#     fi
# }



# setup_test()
# {
#     printf "\n\t--- SETUP TEST_FOLDER ---\n"
#     printf "Enter directory to test:\n"
#     read SRC

#     if [ ! -d "$BASE/$SRC" ]
#     then
#         printf "\"$BASE/$SRC\" not found!\n"
#         while true; do
#             printf "Press [y/Y] to enter test_directory, [q/Q] to quit\n"
#             read -r -p ": " answer
#             case $answer in
#                 [Yy]* ) setup_test;;
#                 [qQ]* ) exit;;
#                 * ) printf "Invalid answer, exit...\n"; exit;;
#             esac
#         done
#     else
#         printf "Directory found, starting tests!\n"
#     fi

#     #     read ANS
#     #     if [ "$ANS" = "y" ]
#     #     then
#     #         setup_test
#     #     else
#     #         printf "Exit test\n"
#     #         exit
#     #     fi
#     # else
#     #     printf "Directory found, starting tests!\n"
#     # fi


# }

# printf "'1' to setup path\n'2' to start test\n'3' to quit\n"
# printf ": "

# read INPUT
# if [ "$INPUT" = "1" ]
# then
#     setup_path

# elif [ "$INPUT" = "2" ]
# then
#     setup_test
# else
#     printf "Exit test\n"
#     exit
# if
printf "Str base $BASE\n"
printf "Str test $TEST\n"

while true; do
    printf "[1]\tSTART TEST\n[2]\tSETUP_PATH (current: $BASE)\n[3]\tQUIT\n"
    read -r -p ": " answer
    case $answer in
        [1]* )  printf "\nStarting test...\n"; break;;
        [2]* )  printf "\n\t--- SETUP PATH ---\n";
                printf "\nEnter the path to folder containing \"ft_printf\" (without trailing slash)\n";
                # printf "Example: /Users/login_handle/eval\n"
                printf "Example: /Users/rvuorenl/hive/repos\n";
                #           /Users/rvuorenl/hive/tests
                read PATHSRC;
                declare -i LINE1;
                # LINE1=$(sed -n '/^BASE/=' $TEST/$0);
                LINE1=$(sed -n '/^BASE/=' $0);
                # LINE1=$(sed -n "/^BASE/=" $SCRIPT)
                # printf "\n line $LINE1\n\n";
                # NEWBASE="BASE=\"$PATHSRC\"";
                # sed -i "s/BASE=.*/BASE=\"${PATHSRC}\"/" $TEST/$0 > $TEST/$0.tmp
                sed -e "${LINE1}s|.*|BASE=\"${PATHSRC}\"|" $0 > $0.tmp;
                chmod 744 $0.tmp;
                mv $0.tmp $0;
                # sed "$LINEs/.*/$NEWBASE/" $TEST/$0 > $TEST/$0.tmp;
                # mv $TEST/$0.tmp $TEST/$0;
                # printf "Setup complete, restarting...\n";
                # ./$0;
                BASE=$PATHSRC
                if [ ! -d $BASE ];
                then
                    printf "Directory not found, terminating...\n";
                    exit;
                else
                    printf "Path OK!\n";
                    # break;;
                fi;
                printf "\nNEW BASE = $BASE\n";
                break;;
                # exit;;
        [3]* ) printf "\nExit test\n"; exit;;
        * ) printf "\nInvalid answer, exit...\n"; exit;;
    esac
done


# while true; do
#     read -r -p "Do you wish to reboot the system? (Y/N): " answer
#     case $answer in
#         [Yy]* ) reboot; break;;
#         [Nn]* ) exit;;
#         * ) echo "Please answer Y or N.";;
#     esac
# done
printf "End base /test $BASE\t\n"
printf "End test $TEST\n"
