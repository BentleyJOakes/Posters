#!/bin/bash


#in Simulink, to export models: print -dsvg -sFlatten1/Subsystem Flatten1_subsystem.svg

#usage: ./convert.sh *
for var in "$@"

do

	s=${var##*/}

	base=${s%.svg}

	echo 'converting' $var

	inkscape -f $var --verb=EditSelectAll --verb=ObjectRotate90 --verb=FileSave  --verb=FileClose -E $base.eps

	echo 'done!'

	echo '*****'

done
