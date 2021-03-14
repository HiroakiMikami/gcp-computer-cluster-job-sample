#! /bin/bash
set -u

artifact=$1

if [ -e $artifact/task_1 ]
then
    echo "Do Task 2"
    touch $artifact/task_2
    echo "Complete"
    exit 0
else
    echo "Do Task 0"
    touch $artifact/task_0
    sleep 90
    echo "Do Task 1"
    touch $artifact/task_1
    echo "Suspend"
    exit 1
fi
