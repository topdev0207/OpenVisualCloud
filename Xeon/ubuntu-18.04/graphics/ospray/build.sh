#!/bin/bash -e

IMAGE="xeon-ubuntu1804-graphics-ospray"
VERSION="19.11"
DIR=$(dirname $(readlink -f "$0"))

. "${DIR}/../../../../script/build.sh"
