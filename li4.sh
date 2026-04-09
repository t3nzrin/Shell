#!/bin/bash
display_menu() {
    echo "select a command to execute"
    echo "1.display current date and time"
    echo "2.list files in current directory"
    echo "3.show current working directory"
    echo "4.display disk usage"
    echo "5.show system information"
    echo "6.display head"
    echo "7.display tail"
    echo "8.display file"
    echo "9.show running process"
    echo "10 exit"
}
while true; do
display_menu
read -p "enter your choice(1-10):" choice
case $choice in
1) echo "current date and time : $(date)"
;;
2) echo "files in current directory:" 
ls -1
;;
3) echo "current working directory :" $(pwd)
;;
4)echo "disk usage:"
df -h
;;
5) echo "system information:"
uname -a
;;
6) echo "head"
    head p4.sh
;;
7) echo "tail"
tail p4.sh    
;;
8)echo "file"
    file p4.sh
;;
9)echo "running process"
ps aux
;;
10)echo "exiting..."
break
;;
*)echo "invalid option"
;;
esac
echo #print a blank line for better readability
done
