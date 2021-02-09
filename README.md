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

## Ship geometry
We also provide the geometry for the ship as CAD files, mesh files and Blender files.

The CAD geometry was created with Onshape, and the complete model can also be found at the following link: **COMMING**.

Blender was used to apply patch information to the geometry and handle the geometry variations during the simulation setup.
