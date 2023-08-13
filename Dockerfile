# Start from the official TensorFlow Docker image which has Jupyter included
FROM tensorflow/tensorflow:latest-gpu-jupyter

# Upgrade pip
RUN pip install --upgrade pip

# Install necessary data science libraries
RUN pip install pandas numpy scikit-learn matplotlib seaborn jupyterlab gpustat nvidia-cudnn-cu11==8.6.0.163

# Set the working directory in the container
WORKDIR /workspace

# Expose port for Jupyter Lab
EXPOSE 8888

# Command to run Jupyter Lab on container start
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token=''"]