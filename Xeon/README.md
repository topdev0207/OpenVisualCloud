
This folder contains docker files to build CPU software stack for Intel(R) Xeon(R) -SP or -D scalable processors.

### Setup host platform:

No special setup is needed except to install the docker.ce service and setup proxy if you are behind a firewall. See [../README.md](../README.md) for instructions.

### Docker Images:

|Image|Dockerfile|Docker Image|
|:-:|---|---|
|analytics-dev|[centos-7/analytics/dev](centos-7/analytics/dev)<br>[ubuntu-20.04/analytics/dev](ubuntu-20.04/analytics/dev)|[openvisualcloud/xeon-centos7-analytics-dev](https://hub.docker.com/r/openvisualcloud/xeon-centos7-analytics-dev)<br>[openvisualcloud/xeon-ubuntu2004-analytics-dev](https://hub.docker.com/r/openvisualcloud/xeon-ubuntu2004-analytics-dev)|
|analytics-ffmpeg|[centos-7/analytics/ffmpeg](centos-7/analytics/ffmpeg)<br>[ubuntu-20.04/analytics/ffmpeg](ubuntu-20.04/analytics/ffmpeg)|[openvisualcloud/xeon-centos7-analytics-ffmpeg](https://hub.docker.com/r/openvisualcloud/xeon-centos7-analytics-ffmpeg)<br>[openvisualcloud/xeon-ubuntu2004-analytics-ffmpeg](https://hub.docker.com/r/openvisualcloud/xeon-ubuntu2004-analytics-ffmpeg)|
|analytics-gst|[centos-7/analytics/gst](centos-7/analytics/gst)<br>[ubuntu-20.04/analytics/gst](ubuntu-20.04/analytics/gst)|[openvisualcloud/xeon-centos7-analytics-gst](https://hub.docker.com/r/openvisualcloud/xeon-centos7-analytics-gst)<br>[openvisualcloud/xeon-ubuntu2004-analytics-gst](https://hub.docker.com/r/openvisualcloud/xeon-ubuntu2004-analytics-gst)|
|media-dev|[centos-7/media/dev](centos-7/media/dev)<br>[ubuntu-20.04/media/dev](ubuntu-20.04/media/dev)|[openvisualcloud/xeon-centos7-media-dev](https://hub.docker.com/r/openvisualcloud/xeon-centos7-media-dev)<br>[openvisualcloud/xeon-ubuntu2004-media-dev](https://hub.docker.com/r/openvisualcloud/xeon-ubuntu2004-media-dev)|
|media-ffmpeg|[centos-7/media/ffmpeg](centos-7/media/ffmpeg)<br>[ubuntu-20.04/media/ffmpeg](ubuntu-20.04/media/ffmpeg)|[openvisualcloud/xeon-centos7-media-ffmpeg](https://hub.docker.com/r/openvisualcloud/xeon-centos7-media-ffmpeg)<br>[openvisualcloud/xeon-ubuntu2004-media-ffmpeg](https://hub.docker.com/r/openvisualcloud/xeon-ubuntu2004-media-ffmpeg)|
|media-gst|[centos-7/media/gst](centos-7/media/gst)<br>[ubuntu-20.04/media/gst](ubuntu-20.04/media/gst)|[openvisualcloud/xeon-centos7-media-gst](https://hub.docker.com/r/openvisualcloud/xeon-centos7-media-gst)<br>[openvisualcloud/xeon-ubuntu2004-media-gst](https://hub.docker.com/r/openvisualcloud/xeon-ubuntu2004-media-gst)|
|media-nginx|[centos-7/media/nginx](centos-7/media/nginx)<br>[ubuntu-20.04/media/nginx](ubuntu-20.04/media/nginx)|[openvisualcloud/xeon-centos7-media-nginx](https://hub.docker.com/r/openvisualcloud/xeon-centos7-media-nginx)<br>[openvisualcloud/xeon-ubuntu2004-media-nginx](https://hub.docker.com/r/openvisualcloud/xeon-ubuntu2004-media-nginx)|
|media-srs|[centos-7/media/srs](centos-7/media/srs)<br>[ubuntu-20.04/media/srs](ubuntu-20.04/media/srs)|[openvisualcloud/xeon-centos7-media-srs](https://hub.docker.com/r/openvisualcloud/xeon-centos7-media-srs)<br>[openvisualcloud/xeon-ubuntu2004-media-srs](https://hub.docker.com/r/openvisualcloud/xeon-ubuntu2004-media-srs)|
|media-svt|[centos-7/media/svt](centos-7/media/svt)<br>[ubuntu-20.04/media/svt](ubuntu-20.04/media/svt)|[openvisualcloud/xeon-centos7-media-svt](https://hub.docker.com/r/openvisualcloud/xeon-centos7-media-svt)<br>[openvisualcloud/xeon-ubuntu2004-media-svt](https://hub.docker.com/r/openvisualcloud/xeon-ubuntu2004-media-svt)|
|service-owt-dev|[centos-7/service/owt-dev](centos-7/service/owt-dev)|[openvisualcloud/xeon-centos7-service-owt-dev](https://hub.docker.com/r/openvisualcloud/xeon-centos7-service-owt-dev)|
|service-owt|[centos-7/service/owt](centos-7/service/owt)|[openvisualcloud/xeon-centos7-service-owt](https://hub.docker.com/r/openvisualcloud/xeon-centos7-service-owt)|
|service-owt360|[centos-7.6/service/owt360](centos-7.6/service/owt360)|[openvisualcloud/xeon-centos7-service-owt360](https://hub.docker.com/r/openvisualcloud/xeon-centos7-service-owt360)|
