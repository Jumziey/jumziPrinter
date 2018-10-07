#!/bin/bash

###########################################################################
#  Get the correct dir of script
###########################################################################
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null && pwd )"
cd $DIR
###########################################################################

ln -s Makefile-AVR ../../Teacup_Firmware/Makefile
ln -s config.h ../../Teacup_Firmware/config.h
ln -s config/board.jumziBoard.h ../../Teacup_Firmware/config/board.jumziBoard.h
ln -s config/printer.jumziPrinter.h ../../Teacup_Firmware/config/printer.jumziPrinter.h

