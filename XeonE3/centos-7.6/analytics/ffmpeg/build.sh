#!/bin/bash -e

IMAGE="xeone3-centos76-analytics-ffmpeg"
VERSION="1.1"
DIR=$(dirname $(readlink -f "$0"))

. "${DIR}/../../../../script/build.sh"
