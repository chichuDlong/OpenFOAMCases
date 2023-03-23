#!/bin/sh
cd ${0%/*} || exit 1    # Run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/RunFunctions

# Set application name
application=$(getApplication)

foamCleanTutorials

fluentMeshToFoam -scale 0.001 karman.msh # 边界条件修改

decomposePar

createPatch -overwrite

mpiexec -n 4 icoFoam -parallel > log.icoFoam

runApplication $application

