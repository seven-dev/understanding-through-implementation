# Understanding through implementation

The goal of this repository is to understand Data Science algorithms through
implementation.
It also includes a generic docker image with tensorflow GPU to avoid package
conflicts.  

In order to use the GPU version, the nvidia runtime has to be
installed and linked to docker. For that you need to install their drivers,
`nvidia-docker2`, and link some configurations. You can find more detais in the
links at the end.  

To run:

```sh
    ./run
    # Other options
    # docker-compose up -d
    # docker compose up --build
    # Build the docker image
    # docker build -t data_science .
    # Run the container
    # docker run -it -p 8888:8888 -v data_science_volume:/workspace --name data_science_container data_science bash
    # Access jupyter lab at the url
```

### Dependencies

- Nvidia drivers
- Docker
- Docker compose (plugin)
- Nvidia Container Toolkit


### Useful links

https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html
https://hub.docker.com/r/nvidia/cuda
https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0)
https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/user-guide.html
https://github.com/compose-spec/compose-spec/blob/master/deploy.md#devices
https://www.tensorflow.org/install/pip#hardware_requirements

### Useful commands

```
nvidia-smi
nvidia-smi -lms 100
gpustat -cp --watch
```

### ToDo list

- Multivariate linear regression
- Simple neural network
