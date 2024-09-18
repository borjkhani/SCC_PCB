

<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Computational Model of A Single Cortical Column</h1>


<p align="center">
  <img src="https://github.com/borjkhani/SCC/blob/main/Model.png" alt="Alt text" width="400"/>
</p>

## Introduction

You can find the code for running the simulations [here](https://github.com/borjkhani/SCC_PCB/tree/main/Model/Control/FT1.ipynb) 
Then you may run the analysis [here](https://github.com/borjkhani/SCC_PCB/tree/main/Analysis). for example the analysis related to the control condition is [here](https://github.com/borjkhani/SCC_PCB/blob/main/Analysis/Control%20Analysis/Run_All.m)

the necessity information about the tools that have been used in this work can be found [here](https://alleninstitute.github.io/bmtk/). user guide about and source files of the brain modeling tool kit can be found [here](https://github.com/AllenInstitute/bmtk). 
visualisation process of the model is demonstrated [here](https://www.ks.uiuc.edu/Research/vnd/) 

Cortical Column Model
This repository contains the source code and documentation for building, simulating, and analyzing a single cortical column model. The model leverages cutting-edge tools in computational neuroscience to provide insights into cortical dynamics and neural network functionality. The primary tools used in this project include:

Brain Modeling Toolkit (BMTK): A Python-based software package for building and simulating large-scale neural network models. BMTK provides an interface for utilizing NEURON and NEST simulators, enabling researchers to create models ranging from detailed multi-compartment neuron networks to abstract population-level simulations. For more information, visit the [BMTK documentation](https://alleninstitute.github.io/bmtk/) and the [BMTK GitHub repository](https://github.com/AllenInstitute/bmtk).

NEURON Simulators: NEURON was used for conducting the simulations of the network models. To learn more about it, visit [NEURON documentation](https://nrn.readthedocs.io/en/8.2.6/).

SONATA Format: Model outputs and network structures were stored using the SONATA (Standardized Ontology of Neural Assemblies) data format, a widely used standard for large-scale neural simulations. For more details on SONATA, refer to the [SONATA GitHub](https://github.com/AllenInstitute/sonata) page.

Visual Neuronal Dynamics (VND): VND was used to visualize the cortical column's structure and dynamics. It provides 3D visualization capabilities for neuronal networks and supports the SONATA format, making it ideal for examining and presenting neuronal simulations. VND is a repackaged adaptation of VMD, specifically tailored for neuroscience. More information can be found on the [VND website](https://www.ks.uiuc.edu/Research/vnd/).

MATLAB: The data analysis, including post-processing of simulation results and statistical analysis, was performed in [MATLAB](https://www.mathworks.com/). MATLAB's extensive toolbox and capabilities were leveraged to analyze the output data, providing detailed insights into the neural dynamics and network behaviors.

This repository showcases the simulation pipeline, from building the network with BMTK to visualizing the output using VND, and final data analysis in MATLAB. All essential tools and detailed guides are available through their respective links, providing the necessary resources for others to replicate or build upon this work.

Please feel free to explore the code, contribute, or contact me with any questions. 








