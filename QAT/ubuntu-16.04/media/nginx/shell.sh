#!/bin/bash -e

IMAGE="qat-ubuntu1604-media-nginx"
DIR=$(dirname $(readlink -f "$0"))

. "${DIR}/../../../../script/qatshell.sh"
