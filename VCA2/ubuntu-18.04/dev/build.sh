#!/bin/bash -e

IMAGE="vca2-ubuntu1804-dev"
VERSION="1.1"
DIR=$(dirname $(readlink -f "$0"))

. "${DIR}/../../../script/build.sh"
