#!/bin/bash -e

IMAGE="vcaca-ubuntu1604-analytics-ffmpeg"
VERSION="20.1"
DIR=$(dirname $(readlink -f "$0"))

. "${DIR}/../../../../script/build.sh"
