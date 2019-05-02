# ![logo][]  Dockerfiles
[![Travis Build Status](https://travis-ci.com/OpenVisualCloud/Dockerfiles.svg?branch=master)](https://travis-ci.com/OpenVisualCloud/Dockerfiles)
[![Development Test Status](https://img.shields.io/badge/Test-Result-green.svg)](https://github.com/jhou5/Dockerfiles/blob/master/doc/test.md)
[![Stable release](https://img.shields.io/badge/latest_release-v1.0-blue.svg)](https://github.com/OpenVisualCloud/Dockerfiles/releases/tag/v1.0)
[![HOMEPAGE](https://img.shields.io/badge/HOMEPAGE-01.org-brightblue.svg)](https://01.org/OpenVisualCloud)
[![License](https://img.shields.io/badge/license-BSD_3_Clause-yellow.svg)](https://github.com/OpenVisualCloud/Dockerfiles/blob/master/LICENSE)
[![Contributions](https://img.shields.io/badge/contributions-welcome-orange.svg)](https://github.com/OpenVisualCloud/Dockerfiles/wiki)

[logo]: https://avatars3.githubusercontent.com/u/46843401?s=90&v=4

This repository hosts docker build files of software stacks and services, designed to enable Open Visual Cloud prioritized use cases such as media delivery, media analytics, cloud gaming and cloud graphics, and immersive media.

## Software Stack Images

The software stack images provide ready to use software stacks for application deployment. You can call the software executables or link with the software libraries.   

#### Media Delivery   

|Image Name| Description |
| ----- | ----- | 
|[FFmpeg](doc/ffmpeg.md)|Image optimized for media creation and delivery. Included codecs: aac, mp3, opus, ogg, vorbis, x264, x265, vp8/9, av1 and SVT-HEVC. The GPU images are accelerated with vaapi and qsv. See [ffmpeg.md](doc/ffmpeg.md) for details.|
|[GStreamer](doc/gst.md)|Image optimized for media creation and delivery. Included the base, good, bad, ugly and libav set of plugins. The GPU images are accelerated with vaapi. See [gst.md](doc/gst.md) for details.|
|[NGINX+RTMP](doc/nginx.md)|Image optimized for web hosting and caching. Based on FFmpeg, included NGINX the web server and RTMP the RTMP, DASH and HLS streaming module. See [nginx.md](doc/nginx.md) for details.|

#### Media Analytics   

|Image Name| Description |
| ----- | ----- | 
|[DLDT+FFmpeg](doc/ffmpeg.md)|Image optimized for media analytics. Included what are in the FFmpeg image. Inferencing engine and tracking plugins to be included. See [ffmpeg.md](doc/ffmpeg.md) for details.|
|[DLDT+GStreamer](doc/gst.md)|Image optimized for media analytics. Included what are in the GStreamer image. Inferencing engine and tracking plugins to be included. See [gst.md](doc/gst.md) for details.|

#### Cloud Gaming and Graphics

|Image Name| Description |
| ----- | ----- | 
|[ospray](doc/ospray.md)|Image optimized for intel ray tracing api. Based on embree, included ospray Ray Tracing engine and examples. See [ospray.md](doc/ospray.md) for details.|
|[ospray+OpenImageIO+ mpi](doc/ospray+OpenImageIO+mpi.md)|Image optimized for intel ray tracing api. Based on embree, included ospray Ray Tracing engine with examples(which require OpenImageIO) and multi-host connection via MPI. See [ospray+OpenImageIO+mpi.md](ospray+OpenImageIO+mpi.md) for details.|

## Development Images     

The development images enable application compilation, debugging (with the debugging, profiling tools) and optimization (with the ptimization tools.) You can compile C++ applications with these images and then copy the applications to the corresponding deployment images for deployment.       

|Image Name| Description |
| ----- | ----- | 
|[FFmpeg](doc/ffmpeg.md)+[GStreamer](doc/gst.md)+dev|FFmpeg + GStreamer + C++ development files. Model optimizer to be included. See [ffmpeg.md](doc/ffmpeg.md) and [gst.md](doc/gst.md) for details.|

## Service Images:

The service images provides ready to use services. See their image descriptions for exposed service interfaces.    

|Image Name| Description |
| ----- | ----- | 
| Coming Soon | Coming Soon |

## Support Matrix

See [development and test status](doc/test.md) for the support matrix and their testing statuses.    

## Host Platform Setup:

- Update kernels and firmwares: Please see each platform folder README for instructions.    
- Follow the [instructions](https://www.digitalocean.com/community/tutorials/how-to-set-up-time-synchronization-on-ubuntu-18-04) to setup host date and time.
- Follow the [instructions](https://docs.docker.com/install) to install docker.ce.    
- If you are behind a firewall, setup proxy as follows:    

```bash
(1) sudo mkdir -p /etc/systemd/system/docker.service.d    
(2) printf "[Service]\nEnvironment=\"HTTPS_PROXY=$https_proxy\" \"NO_PROXY=$no_proxy\"\n" | sudo tee /etc/systemd/system/docker.service.d/proxy.conf    
(3) sudo systemctl daemon-reload     
(4) sudo systemctl restart docker     
```

## Build docker image: 

```bash
(1) mkdir build    
(2) cd build     
(3) cmake ..    
(4) cd Xeon/ubuntu-16.04/ffmpeg # please build your specific <_platform_>/<_OS_>/<_image_> only as a full build takes a long time.     
(5) make # build on the target processor for best performance.    
(6) ctest   
```

## Run shell:

```bash
Xeon/ubuntu-16.04/ffmpeg/shell.sh #<_platform_>/<_OS_>/<_image_>
```

## Customize:

You can modify any Dockerfile.m4 template for customization.     
For example, uncomment #include(transform360.m4) in Xeon/ubuntu-16.04/ffmpeg/Dockerfile.m4 to add essential 360 video transformation in the FFmpeg build.    
After modification, please rerun cmake and make.     

## Use alternative repo:

Certain source repo might be blocked in certain network. You can specify alternative repos before the build command as follows:

```bash
export AOM_REPO=...       
export VPX_REPO=...     
make
```

For a list of all REPOs and their versions, run the following command:

```bash
grep -E '_(REPO|VER)=' template/*.m4         
```

## Use Dockerfile in other project:

It is recommended that you copy the Dockerfile(s) of your platform, OS and image directly into your other project. The following shell scripts show how to sync (if needed) and build the NGINX+RTMP Dockerfile (and its dependency FFmpeg):

update.sh:   
```bash
DOCKER_REPO=${DOCKER_REPO="https://raw.githubusercontent.com/OpenVisualCloud/Dockerfiles/master/Xeon/ubuntu-18.04"}    
(echo "# xeon-ubuntu1804-ffmpeg" && curl ${DOCKER_REPO}/ffmpeg/Dockerfile) > Dockerfile.2    
(echo "# xeon-ubuntu1804-nginx-rtmp" && curl ${DOCKER_REPO}/nginx+rtmp/Dockerfile) > Dockerfile.1    
```
build.sh:   
```bash
for dep in .2 .1; do   
    image=$(grep -m1 '#' "Dockerfile$dep" | cut -d' ' -f2)   
    sudo docker build --network=host --file="Dockerfile$dep" -t "$image:latest" . $(env | grep -E '_(proxy)=' | sed 's/^/--build-arg /')   
done  
```
