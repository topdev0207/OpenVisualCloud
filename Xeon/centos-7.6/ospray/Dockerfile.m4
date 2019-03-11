
FROM centos:7.6.1810 AS build
WORKDIR /home
define(`BUILD_LINKAGE',shared)dnl

include(build-tools.m4)
include(ispc.m4)
include(embree.m4)
include(ospray.m4)
include(ospray-example_xfrog.m4)

FROM centos:7.6.1810
LABEL Description="This is the base image for ospray CentOS 7.6"
LABEL Vendor="Intel Corporation"
WORKDIR /home
