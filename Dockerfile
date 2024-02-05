FROM continuumio/miniconda3:latest

WORKDIR /app

# Update Conda and install Mamba
RUN conda update -n base -c defaults conda && \
    conda install mamba -n base -c conda-forge && \
    conda clean --all

COPY . /app

# Use Mamba to create the environment with verbose output
RUN mamba env create -f environment.yml -vv

# Install ipykernel in your environment and register it as a kernel
RUN mamba install -n parkinson_project_env ipykernel -c conda-forge && \
    conda run -n parkinson_project_env python -m ipykernel install --user --name parkinson_project_env --display-name "Python (parkinson_project_env)"

# Change the shell to activate the conda environment automatically
SHELL ["conda", "run", "-n", "parkinson_project_env", "/bin/bash", "-c"]

# The code to run when container is started
ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "parkinson_project_env", "jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]

