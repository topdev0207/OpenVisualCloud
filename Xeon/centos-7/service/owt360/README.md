This docker image is part of Open Visual Cloud software stacks. Optimized for video conferencing service based on the WebRTC technology and Open WebRTC Toolkit (OWT). Docker image optimized for ultra-high resolution immersive video low latency streaming, based on the WebRTC technology and the Open WebRTC Toolkit. Included SVT-HEVC tile-based 4K and 8K transcoding and field of view (FoV) adaptive streaming. The docker image can be used in the FROM field of a downstream Dockerfile. 

## Supported tags and respective Dockerfile links
 - [xeon-centos-7-service-owt360](https://github.com/OpenVisualCloud/Dockerfiles/blob/v22.3/Xeon/centos-7/service/owt360/Dockerfile)

## Quick reference
- #### Supported platform and OS
  Intel&reg; Xeon&reg; platform, CentOS-7

- #### Usage instructions:
  [OWT360](https://github.com/OpenVisualCloud/Dockerfiles/blob/master/doc/owt360.md)	


- #### Getting started with Dockerfiles:
  [OpenVisualCloud Dockerfiles Wiki](https://github.com/OpenVisualCloud/Dockerfiles/wiki)

- #### File issues:
  [OpenVisualCloud Dockerfiles Issues](https://github.com/OpenVisualCloud/Dockerfiles/issues)


## License
This docker installs third party components licensed under various open source licenses.  The terms under which those components may be used and distributed can be found with the license document that is provided with those components.  Please familiarize yourself with those terms to ensure your distribution of those components complies with the terms of those licenses.


| Components | License |
| ----- | ----- |
|CentOS| [Various](https://hub.docker.com/_/centos) |
|OpenSSL|Apache License 2.0|
|Intel SVT-HEVC|BSD-2-Clause Plus Patent License|
|libvpx|BSD 3-clause "New" or "Revised" License|
|x264|GNU General Public License v2.0 or later|
|OpenCV|BSD 3-clause "New" or "Revised" License|
|OpenVINO|Apache License v2.0|
|FFmpeg|GNU General Public License v2.0 or later|
|360SCVP|BSD 3-clause "New" or "Revised" License|
|owt-server|Apache License v2.0|
|owt-sdk|Apache License v2.0|
|owt-deps-webrtc|BSD 3-clause License|


More license information can be found in [components source package](https://github.com/OpenVisualCloud/Dockerfiles-Resources).   
As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses and potential fees for all software contained within. We will have no indemnity or warranty coverage from suppliers.
