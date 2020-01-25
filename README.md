# ZFPLab Fiscal Devices related files

## General Info

* Copy and extract zfplab server files in `zfplabserver` directory beside the Dockerfile
* Build the docker image

``` bash
docker run -p 127.0.0.1:1234:4444 -d --rm zfplab:0.1
```

## Installation on Linux machine

* Create user

``` bash
sudo useradd -d /opt/zfplab -m -k /dev/null zfplab
sudo usermod -aG docker zfplab
```

## Create, enable and start systemd service zfplab

``` bash
sudo cp zfplab.service /etc/systemd/system/zfplab.service
sudo systemctl daemon-reload
sudo systemctl enable --now zfplab.service
```

