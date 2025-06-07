#!/bin/env bash

# this script assumes the following directory structure, you can just call this script from ./
# .
# ├── hdl
# 

# directory of this script
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

for i in "$@"; do
	case $i in
	-c=*|--clock_period=*|--period=*|--clock=*)
		CLOCK_PERIOD="${i#*=}"
		shift # past argument=value
	;;
	-t=*|--top=*|--top_level=*|--top-level=*|--module=*)
		TOP="${i#*=}"
		shift
	;;
	*)
	;;
	esac
done

#==========================================================#

#[ -z $TOP ] && { echo error - top-level file is not set!; exit; }
#
#[ -z $CLOCK_PERIOD ] && { echo error - clock period is not set!; exit; }
#
#[ -z $REMARK ] && { echo error - extra message is not set!; exit; }

# if info are not provided, attempt to parse the directory name to get the information (remark is optional):
[ -z $TOP ] && { echo error - top-level file is not set!; exit; }
[ -z $CLOCK_PERIOD ] && { echo error - clock period is not set!; exit; }

#==========================================================#

#
# clock period for timing constraint file
FLOAT_CLOCK=$(python -c "print(\"{:.3f}\".format(float(${CLOCK_PERIOD})))")
FLOAT_HALF_CLOCK=$(python -c "print(\"{:.3f}\".format(float(${CLOCK_PERIOD}) / 2))")

echo $FLOAT_CLOCK
echo $FLOAT_HALF_CLOCK

HDL_DIRECTORY="./hdl"
FLOAT_DIRECTORY="${SCRIPT_DIR}/float_components"
TEMPLATES="${SCRIPT_DIR}/templates"

#==========================================================#

[ -d $HDL_DIRECTORY ] || { echo error - no hdl directory found!; exit; }

[ -d $FLOAT_DIRECTORY ] || { echo error - no float components directory found!; exit; }

[ -d $TEMPLATES ] || { echo error - no tcl script directory found!; exit; }

[ -f $TEMPLATES/_period.xdc ] || exit

[ -f $TEMPLATES/_synthesis.tcl ] || exit

#==========================================================#

TCL_SCRIPT="./synthesis.tcl" # tcl commands

XDC_SCRIPT="./period.xdc" # xdc constraints

#XDC_AP_SCRIPT="./period_AP.xdc"

printf "" > $TCL_SCRIPT

printf "" > $XDC_SCRIPT

#==========================================================#

mkdir -p ./hdl ./float_components ./rpts

# remove duplicated IP wrappers (used for simulation)
rm ./hdl/array_RAM_*.vhd ./hdl/*.tcl ./hdl/glbl.v &> /dev/null

# copy the wrappers
cp $FLOAT_DIRECTORY/*.{vhd,v,tcl} ./float_components &> /dev/null

#==========================================================#

# add all hdl source files
ls ./hdl -1 | while read line; do
	echo $line | grep ".bak" > /dev/null && continue
	echo $line | grep ".vhd" > /dev/null && { echo "read_vhdl -vhdl2008 ./hdl/$line;" >> $TCL_SCRIPT; continue; } 
	echo $line | grep ".v"   > /dev/null && { echo "read_verilog ./hdl/$line;" >> $TCL_SCRIPT; continue; }
done

# append template to the synthesis script
sed "s/TOP_DESIGN/$TOP/g;s/CLOCK/${CLOCK_PERIOD}NS/g" $TEMPLATES/_synthesis.tcl >> $TCL_SCRIPT

cp $TEMPLATES/include_float.tcl ./

# write the timing script for two different clock names
sed "s/?CLOCK?/$FLOAT_CLOCK/g;s/?HALF_CLOCK?/$FLOAT_HALF_CLOCK/g" $TEMPLATES/_period.xdc  >> $XDC_SCRIPT
