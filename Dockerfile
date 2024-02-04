# Start with a base image that includes Conda. Miniconda is a lightweight option.
FROM continuumio/miniconda3

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in environment.yml
RUN conda env create -f environment.yml

# Make RUN commands use the new environment:
SHELL ["conda", "run", "-n", "parkinson_project_env", "/bin/bash", "-c"]

# The code to run when container is started:
ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "parkinson_project_env", "jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
