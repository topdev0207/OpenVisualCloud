#!/bin/bash -e

IMAGE="xeon-ubuntu1604-analytics-dev"
DIR=$(dirname $(readlink -f "$0"))

. "${DIR}/../../../../script/build.sh"
