#!/bin/bash -e

IMAGE="xeon-ubuntu1804-ffmpeg"
VERSION="1.0"
DIR=$(dirname $(readlink -f "$0"))

. "${DIR}/../../../script/build.sh"
