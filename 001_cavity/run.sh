#!/bin/bash
#
#---------------------------------------------------#
# Contributor: shuo yue                             #
# Updated on:  2023-03-23                           #
#---------------------------------------------------#
# Topic:       boundary layer and post processing   #
# OpenFOAM:    version 10 (Foundation)              #
#---------------------------------------------------#


#---------------------------------------------------
foamVersion="OpenFOAM-10"


#---------------------------------------------------
cd ${0%/*} || exit 1
clear
source clean
source .color
source .preamble


#---------------------------------------------------
echo -e "\n${ORANGE}Start meshing${NC}"
blockMesh
echo -e "${ORANGE}End Meshing${NC}"


#---------------------------------------------------
echo -e "\n
${ORANGE}Start simulation${NC}\n
${ORANGE}Call icoFoam and start the simulation (~5 - 10 seconds)${NC}
"
icoFoam > log.icoFoam


#---------------------------------------------------
echo -e "${ORANGE}Simulation finished, use 'paraFoam' to check the results${NC}"


