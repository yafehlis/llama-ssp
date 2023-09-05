# Create environment for running LLMs

Run below command to download the right docker image that has pytorch and other libraries for ROCm:

```bash
(sudo) docker run -tid --privileged --network=host --shm-size=64GB --ulimit core=-1 --ulimit memlock=-1 --ulimit stack=67108864 --security-opt seccomp=unconfined --ipc=host --device=/dev/kfd --device=/dev/dri --group-add video -v /:/dockerx rocm/pytorch:rocm5.6_ubuntu20.04_py3.8_pytorch_2.0.1 
```


Run docker container:

docker run -it --device=/dev/kfd --device=/dev/dri --security-opt seccomp=unconfined --group-add video -v $(pwd):/workspace --workdir /workspace rocm/pytorch:rocm5.6_ubuntu20.04_py3.8_pytorch_2.0.1 bash

Install Bitsandbytes for ROCm following this page Build-up - Bitsandbytes

git clone https://github.com/agrocylo/bitsandbytes-rocm
cd bitsandbytes-rocm
export ROCM_HOME=/opt/rocm/
make hip -j
python3 setup.py install



Save changes in the docker container into a new LLM image ( https://phoenixnap.com/kb/how-to-commit-changes-to-docker-image )
