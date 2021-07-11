# Simplified test program for hydrodynamic CFD simulations of wind-powered cargo ships

## Introduction
This repository contains OpenFOAM case folders that was used for an article with the same title as this *readme* document. The purpose is to show the specific settings used for the simulations in the article.

The article can be found at the following link: **COMMING**

The simulations test a ship geometry with varying drift angle, rudder angle and propeller loading. Simulations are performed with the steady state solver *simpleFOAM* and the Volume of Fluid solver *interFOAM*.

## Overview of case folders
We performed many simulations for this article. However, most of them used the same settings and we therefore only show a few representative examples, shown in the list below:

- Steady state simulation without rudder and propeller. Drift angle = 6 degrees, model scale = 1:4
- Steady state simulation. Drift angle = 6 degrees, rudder angle = 6 degrees, propeller thrust coefficient = 0.0, model scale 1:4
- Steady state simulation. Drift angle = 6 degrees, rudder angle = 6 degrees, propeller thrust coefficient = 0.5, model scale 1:4

- Unsteady simulation with free surface, without rudder and propeller. Drift angle = 6 degrees, model scale = 1:4

The article also show results from several validation experiments. The purpose was to test the accuarcy of both the calm water resistance and drift-induced forces with our simulation setup. The calm water resistance was tested by comparing CFD simulation with experimental results for the ship geoemtries KCS, KVLCC2 and DTMB 5415. The drift-induced forces was compared against experimental results for the ship geometries KVLCC2 and two special foil-like ship geometries. The OpenFOAM case folders for these validation experiments are also published in this repository.

More details can be found in the article. 

## Ship geometry
We also provide the geometry for the ship as CAD files, mesh files and Blender files.

The CAD geometry was created with Onshape, and the complete model can also be found at the following link: **COMMING**.

Blender was used to apply patch information to the geometry and handle the geometry variations during the simulation setup.
