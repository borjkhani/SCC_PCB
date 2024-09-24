

<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Computational Model of A Single Cortical Column</h1>


<p align="center">
  <img src="https://github.com/borjkhani/SCC/blob/main/Model.png" alt="Alt text" width="400"/>
</p>


## Introduction
This repository contains the source code and documentation for building, simulating, and analyzing a single cortical column model. The model leverages cutting-edge tools in computational neuroscience to provide insights into cortical dynamics and neural network functionality. The primary tools used in this project include:

### Brain Modeling Toolkit (BMTK):
A Python-based software package for building and simulating large-scale neural network models. BMTK provides an interface for utilizing [NEURON](https://neuron.yale.edu/neuron/) and [NEST](https://www.nest-simulator.org/) simulators, enabling researchers to create models ranging from detailed multi-compartment neuron networks to abstract population-level simulations. For more information, visit the [BMTK documentation](https://alleninstitute.github.io/bmtk/), [Published paper](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1008386) and the [BMTK GitHub repository](https://github.com/AllenInstitute/bmtk).  

### NEURON Simulators:
NEURON was used for conducting the simulations of the network models. To learn more about it, visit the [NEURON documentation](https://nrn.readthedocs.io/en/8.2.6/).

### SONATA Format:
Model outputs and network structures were stored using the SONATA (Standardized Ontology of Neural Assemblies) data format, a widely used standard for large-scale neural simulations. For more details on SONATA, refer to the [SONATA data format](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1007696) and [SONATA GitHub](https://github.com/AllenInstitute/sonata) pages.

### Visual Neuronal Dynamics (VND):
VND was used to visualize the cortical column's structure and dynamics. It provides 3D visualization capabilities for neuronal networks and supports the SONATA format, making it ideal for examining and presenting neuronal simulations. VND is a repackaged adaptation of VMD, specifically tailored for neuroscience. More information can be found on the [VND website](https://www.ks.uiuc.edu/Research/vnd/).

### MATLAB:
The data analysis, including post-processing of simulation results and statistical analysis, was performed in [MATLAB](https://www.mathworks.com/). MATLAB's extensive toolbox and capabilities were leveraged to analyze the output data, providing detailed insights into the neural dynamics and network behaviors.

This repository showcases the simulation pipeline, from building the network with BMTK to visualizing the output using VND, and final data analysis in MATLAB. All essential tools and detailed guides are available through their respective links, providing the necessary resources for others to replicate or build upon this work.

## User Guide
### Prerequisites
1. Install __BMTK__ and __NEURON__ simulators. The latest versions and installation guides can be found [here](https://alleninstitute.github.io/bmtk/installation.html).

2. Install __MATLAB__ for analyzing output data and running post-processing scripts. Installation guide can be found [here](https://www.mathworks.com/help/install/install-products.html). 

## Running the Model
To run a single trial simulation of baseline cortical column activity under the control condition, you can access the code [here](https://github.com/borjkhani/SCC_PCB/tree/main/Model/Control/FT1.ipynb). This Jupyter notebook provides a comprehensive example of simulating baseline activity without external modulation.
before running any of the simulations make sure that *components* folder, *config.bionetFT1.flash.json* file, and *FT1.ipynb* file be in your running path. the output of the simulation are stored in the *inputsFT1*, *networkFT1*, and *output_flashFT1* folders.  

for each trial you can change the the name of the files like this that for example for creating the data for the second trial of simulation you can either re-run the same simulation but at the end change the output folders name and save it or for simultanous simulations you can change the name of the folders as follows for the second trail: *FT2.ipynb*, and *config.bionetFT2.flash*. it is apparent that if you decided to change the names of the trials you should change the nams also inside the FT1.ipynb code. an example code for this can be found [here]().     

For additional simulations where interneurons are either activated or suppressed, refer to the corresponding script in the repository [here](https://github.com/borjkhani/SCC_PCB/tree/main/Model). These scripts model how changes in interneuron dynamics affect the network’s overall behavior.

## Data Analysis
Once the simulations are complete, you can perform detailed analysis using the tools provided in the __Analysis__ folder. For example, you can analyze the control condition data by following the instructions in the *Run_All.m* script, which compiles and runs all the necessary steps for processing the simulation results and extracting key metrics. You can find the script [here](https://github.com/borjkhani/SCC_PCB/blob/main/Analysis/Control%20Analysis/Run_All.m). 
Alternatively, you can use the [GUI](https://github.com/borjkhani/SCC_PCB/blob/main/Analysis/Control%20Analysis/GUI_v3.m). First, the data needs to be loaded and sorted. Then, calculate the HWHH (Half Width at Half Height) for the data. Finally, the GUI illustrates comparisons between different groups.

Additional analysis scripts for different conditions and statistical comparisons are also available in the __Analysis__ section of the repository.

Please feel free to explore the code, contribute, or contact me with any questions.


## Acknowledgments
This work was supported by The "[International Centre for Translational Eye Research (ICTER)](https://icter.pl/)". Project is carried out within the MAB FENG action 02.01. of the Foundation for Polish Science co-financed by the European Union under the European Regional Development Fund, European Funds for Smart Economy, agreement no. FENG.02.01-IP.05-T005/23.

National Science Center, Poland (2019/34/E/NZ5/00434) for ATF

National Science Center, Poland (2020/39/D/NZ4/01881)for ATF

National Science Center, Poland (2022/47/B/NZ5/03023) for ATF




