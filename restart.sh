#!/bin/bash

PROCESS_ID=$(ps --user $UID | grep conky | awk '{print $1}')

if [ $PROCESS_ID ]
then
    echo "process found:" $PROCESS_ID
    $(kill $PROCESS_ID)
    $(conky -d -c $HOME/.conky/arch-gotham/Arch\ Gotham\ WH1000MX4)
else
    echo "process not found"
    $(conky -d -c $HOME/.conky/arch-gotham/Arch\ Gotham\ WH1000MX4)
fi
