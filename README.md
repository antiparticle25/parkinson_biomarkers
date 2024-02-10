# Biomarkers in Parkinson's Disease & UPDRS Prediction

## Overview
This project focuses on predicting the Unified Parkinson's Disease Rating Scale (UPDRS) scores based on Mass Spectrometry profiles obtained from cerebrospinal fluid samples of patients. The dataset originates from a [Kaggle competition](https://www.kaggle.com/competitions/amp-parkinsons-disease-progression-prediction), aiming to leverage Mass Spectrometry data from Olink to forecast future UPDRS scores. For detailed information on UPDRS scores, visit [MDS-UPDRS](https://www.movementdisorders.org/MDS/MDS-Rating-Scales/MDS-Unified-Parkinsons-Disease-Rating-Scale-MDS-UPDRS.htm).

![Parkinson's Disease](https://i.guim.co.uk/img/media/62f6334c28ce9076eadf0dc775fcae3d2c00f244/0_347_3568_2141/master/3568.jpg?width=465&dpr=1&s=none)

## Requirements

Before you begin, ensure you have the following installed on your system:

- **Docker**: This project uses Docker. If you don't have Docker installed, please follow the [official Docker installation guide](https://docs.docker.com/get-docker/).

## My interest on the dataset and in the subject
Notably, the top-performing teams in the competition largely bypassed the Mass Spectrometry data! That certainly triggered my interest on the project.
Most annotations relative to the thought process behind certain decisions are still missing, but the notebook provides an amazing starting point for even deeper looks. I have focused mostly on capturing groups of patients with similar peptide/protein and peptide modification profiles - groups of datapoints with similar biomarker profiles - and there is a lot of work to be done still when it comes to UPDRS prediction.

## Quick Start
To set up the project environment and explore the dataset:

1. Clone the repository:
   ```bash
   git clone https://github.com/antiparticle25/parkinson_project
   
2. Build the Docker container:
   ```bash
   docker-compose build

3. Start the container:
   ```bash
   docker-compose up

4. On Jupyter lab, open the Kernel corresponding to parkinson_project.env

5. The Notebooks folder contains all the files needed, most notably parkinson_project.ipynb

## Google Colab - parkinson_project.ipynb

For immediate access to a pre-run version of the notebook, visit the following Google Colab link:
[View Parkinson's Project Notebook on Google Colab](https://colab.research.google.com/drive/1Atp0zOn_TNrCBgfqT1Uoypp4Zug1O6z9?usp=sharing)

This Colab notebook contains the completed analysis and allows you to look at the outputs without running it.
