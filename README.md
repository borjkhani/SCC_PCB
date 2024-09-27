

<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Computational Model of A Single Cortical Column</h1>


<p align="center">
  <img src="https://github.com/borjkhani/SCC/blob/main/Model.png" alt="Alt text" width="400"/>
</p>

# Introduction
This repository contains the source code and documentation for building, simulating, and analyzing a single cortical column model. The model leverages cutting-edge tools in computational neuroscience to provide insights into cortical dynamics and neural network functionality. The primary tools used in this project include:

## Brain Modeling Toolkit (BMTK)
A Python-based software package for building and simulating large-scale neural network models. BMTK provides an interface for utilizing [NEURON](https://neuron.yale.edu/neuron/) and [NEST](https://www.nest-simulator.org/) simulators, enabling researchers to create models ranging from detailed multi-compartment neuron networks to abstract population-level simulations. For more information, visit the [BMTK documentation](https://alleninstitute.github.io/bmtk/), the [published paper](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1008386), and the [BMTK GitHub repository](https://github.com/AllenInstitute/bmtk).

## NEURON Simulator
[NEURON](https://nrn.readthedocs.io/en/latest/) is a powerful simulation environment for modeling individual neurons and networks of neurons. It was used for conducting the simulations of the network models in this project.

## SONATA Format
Model outputs and network structures are stored using the SONATA (Standardized Ontology of Neural Assemblies) data format, a widely used standard for large-scale neural simulations. For more details on SONATA, refer to the [SONATA data format paper](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1007696) and the [SONATA GitHub repository](https://github.com/AllenInstitute/sonata).

## Visual Neuronal Dynamics (VND)
[VND](https://www.ks.uiuc.edu/Research/vnd/) was used to visualize the cortical column's structure and dynamics. It provides 3D visualization capabilities for neuronal networks and supports the SONATA format, making it ideal for examining and presenting neuronal simulations. VND is a repackaged adaptation of VMD, specifically tailored for neuroscience.

## MATLAB
[MATLAB](https://www.mathworks.com/) was used for analyzing the output data and running post-processing scripts, including statistical analyses. MATLAB's extensive toolbox and capabilities were leveraged to analyze the simulation results, providing detailed insights into neural dynamics and network behaviors.

This repository showcases the simulation pipeline, from building the network with BMTK to visualizing the output using VND, and final data analysis in MATLAB. All essential tools and detailed guides are available through their respective links, providing the necessary resources for others to replicate or build upon this work.

# Getting Started
This section provides detailed instructions on how to set up the environment, run simulations, and analyze the results.

## Prerequisites
Before you begin, ensure that you have the necessary software installed and files properly configured.

### 1. Install Required Software
__a. BMTK and NEURON Simulators__
- __BMTK (Brain Modeling ToolKit)__ and __NEURON__ are essential for running the simulations.

- Follow the installation guide provided by the Allen Institute [here](https://alleninstitute.github.io/bmtk/installation.html) to install the latest versions.

### Brief Installation Steps:

- __Install NEURON__:

```bash
pip install neuron
```

- __Install BMTK__:

```bash
pip install bmtk
```

- __Verify Installations__:
```bash 
python -c "import neuron; print('NEURON installed')" 
python -c "import bmtk; print('BMTK installed')"
```

 __b. MATLAB__
 
- __MATLAB__ is required for analyzing output data and running post-processing scripts.
- Installation guide can be found [here](https://www.mathworks.com/help/install/install-products.html).
- Ensure you have a valid MATLAB license or access through your institution.

### 2. Install Python and Jupyter Notebook

- __Python 3.x__: Required for running the Jupyter notebooks.

- __Jupyter Notebook__: To execute and interact with the *.ipynb* files.

- Install via *pip*:
```bash
pip install jupyter
```

## Setting Up the Simulation Environment
__1. Clone the Repository__
Clone this repository to your local machine:
```bash
git clone https://github.com/borjkhani/SCC_PCB.git
cd SCC_PCB
```

__2. Organize Simulation Files__

Ensure the following files and folders are present in your working directory:

- `components` folder: Contains essential components required for the simulation, such as neuron models and synapse definitions.
- `config.bionetFT1.flash.json`: A configuration file specifying parameters and settings for the simulation.
- `FT1.ipynb`: The Jupyter notebook that you will execute to run the simulation.

__3. Create a Virtual Environment (Optional but Recommended)__ 

Creating a virtual environment helps manage dependencies without affecting system-wide packages.
```bash
python -m venv sim_env
source sim_env/bin/activate # On Windows, use `sim_env\Scripts\activate`
```

__4. Install Required Python Packages__

With the virtual environment activated, install necessary Python libraries:

```bash
pip install numpy matplotlib neuron bmtk jupyter*
```

__5. Verify Installations__
Run the following commands to ensure all packages are correctly installed:

```bash
python -c "import numpy; print('NumPy installed')"
python -c "import matplotlib; print('Matplotlib installed')"
python -c "import neuron; print('NEURON installed')"
python -c "import bmtk; print('BMTK installed')"
```

## Running a Single Trial Simulation
To run a single trial simulation of baseline cortical column activity under the control condition:

### 1. Open the Jupyter Notebook
- Navigate to your working directory in the terminal.

- Start Jupyter Notebook:
```bash
  jupyter notebook*
```

- Open `FT1.ipynb` from the Jupyter interface.

### 2. Execute the Notebook
Run the notebook cells sequentially by selecting each cell and clicking the "Run" button or using the shortcut `Shift + Enter`.
The notebook includes code for setting up the network, running the simulation, and analyzing the results.
Monitor the output for any errors or prompts.

### 3. Simulation Outputs
The simulation generates outputs stored in the following folders:

`inputsFT1`: Contains input configurations for the simulation.
`networkFT1`: Stores network data, including neuron and synapse information.
`output_flashFT1`: Holds the simulation results, such as spike trains and recorded data.

## Running Multiple Trials
To perform multiple simulations (trials), you can create copies of the original files with new names to prevent overwriting data.

### Option 1: Sequential Simulations with Renamed Output Folders
__Re-run the Simulation:__
- After each simulation, manually rename the output folders to preserve the results.
  - For example, after the first run, rename `output_flashFT1` to `output_flash_trial1`.
__Run the Simulation Again:__
- Execute `FT1.ipynb` again for the next trial.
- Repeat the renaming process after each run.

### Option 2: Simultaneous Simulations with Renamed Files and Folders
To run simulations simultaneously or streamline the process:

__1. Copy and Rename Files:__

  - Duplicate `FT1.ipynb` and rename it to `FT2.ipynb`.
  - Copy `config.bionetFT1.flash.json` and rename it to `config.bionetFT2.flash.json`.
  
__2. Update File References in the Notebook:__

- Open `FT2.ipynb`.
Use the "Find and Replace" feature to replace all instances of `FT1` with `FT2` in code cells specifying file paths.
Ensure outputs are directed to `inputsFT2`, `networkFT2`, and `output_flashFT2`.

__3. Run the New Simulation:__

- Execute `FT2.ipynb` in Jupyter Notebook.
The simulation will run independently, generating outputs in the new directories.

__4. Repeat for Additional Trials:__

For a third trial, create `FT3.ipynb` and `config.bionetFT3.flash.json`, updating references accordingly.

## Example Code
An example of setting up and running multiple trials can be found [here](https://github.com/borjkhani/SCC_PCB/tree/main/Model/Control/FT1.ipynb).

.
.
.
For additional simulations where interneurons are either activated or suppressed, refer to the corresponding script in the repository [here](https://github.com/borjkhani/SCC_PCB/tree/main/Model). These scripts model how changes in interneuron dynamics affect the network’s overall behavior.
.
.
.
.

# Analyzing Simulation Results with MATLAB

## Data Analysis
Once the simulations are complete, you can perform detailed analysis using the tools provided in the __Analysis__ folder. For example, you can analyze the control condition data by following the instructions in the *Run_All.m* script, which compiles and runs all the necessary steps for processing the simulation results and extracting key metrics. You can find the script [here](https://github.com/borjkhani/SCC_PCB/blob/main/Analysis/Control%20Analysis/Run_All.m). 
Alternatively, you can use the [GUI](https://github.com/borjkhani/SCC_PCB/blob/main/Analysis/Control%20Analysis/GUI_v3.m). First, the data needs to be loaded and sorted. Then, calculate the HWHH (Half Width at Half Height) for the data. Finally, the GUI illustrates comparisons between different groups.

Additional analysis scripts for different conditions and statistical comparisons are also available in the __Analysis__ section of the repository.
.
.
.


## Additional Tools
### Visual Neuronal Dynamics (VND)
- Use VND to visualize the cortical column's structure and dynamics.
- Supports 3D visualization and the SONATA format.
- Download and installation instructions are available on the [VND website](https://www.ks.uiuc.edu/Research/vnd/).


## Important Considerations
### Consistency in Naming
- Always ensure that filenames and folder names are consistent across all references in your code.
- Mismatches can lead to file not found errors or data being written to incorrect locations.

### Resource Management
- Running multiple simulations simultaneously can be demanding on system resources.
- Monitor CPU and memory usage to prevent system overloads.
- If you encounter performance issues, consider running simulations sequentially.

### Data Backup
- Regularly back up your simulation data to prevent loss.
- Use version control systems like Git for code and configuration files.

## Troubleshooting
### Simulation Errors
- If the simulation fails to run, check for error messages in the notebook output.
- Common issues include missing files, incorrect file paths, or library dependencies.

### Dependency Issues
- Ensure all required Python packages are installed and up to date.
- If using a virtual environment, confirm it is activated when running simulations.

.
. 
.
Please feel free to explore the code, contribute, or contact me with any questions.

## Acknowledgments
This work was supported by The "[International Centre for Translational Eye Research (ICTER)](https://icter.pl/)". Project is carried out within the MAB FENG action 02.01. of the Foundation for Polish Science co-financed by the European Union under the European Regional Development Fund, European Funds for Smart Economy, agreement no. FENG.02.01-IP.05-T005/23.

National Science Center, Poland (2019/34/E/NZ5/00434) for ATF

National Science Center, Poland (2020/39/D/NZ4/01881)for ATF

National Science Center, Poland (2022/47/B/NZ5/03023) for ATF


![FNP](https://github.com/user-attachments/assets/916fa227-0e8d-473e-901f-e15159b10bc3)

