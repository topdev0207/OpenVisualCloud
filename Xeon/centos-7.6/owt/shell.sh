#!/bin/bash -e

IMAGE="xeon-centos76-service-owt"
DIR=$(dirname $(readlink -f "$0"))

. "${DIR}/../../../script/shell.sh"
