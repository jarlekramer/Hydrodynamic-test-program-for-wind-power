#!/bin/bash

applyBoundaryLayer -ybl 0.301452

decomposePar

mv system/controlDict system/controlDict.sim
mv system/fvSchemes system/fvSchemes.sim
mv system/fvSolution system/fvSolution.sim
mv constant/turbulenceProperties constant/turbulenceProperties.sim

mv system/controlDict.preSim system/controlDict
mv system/fvSchemes.preSim system/fvSchemes
mv system/fvSolution.preSim system/fvSolution
mv constant/turbulenceProperties.preSim constant/turbulenceProperties

mpirun -np 28 simpleFoam -parallel

reconstructPar
rm -fr processor*
cp -r 0/include 200/include
rm -fr 0
rm -fr 100
mv 200 0
rm -fr 0/uniform
mv system/controlDict system/controlDict.preSim
mv system/fvSchemes system/fvSchemes.preSim
mv system/fvSolution system/fvSolution.preSim
mv constant/turbulenceProperties constant/turbulenceProperties.preSim

mv system/controlDict.sim system/controlDict
mv system/fvSchemes.sim system/fvSchemes
mv system/fvSolution.sim system/fvSolution
mv constant/turbulenceProperties.sim constant/turbulenceProperties

decomposePar
mpirun -np 28 simpleFoam -parallel
reconstructPar
rm -fr processor*
