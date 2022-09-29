dnl BSD 3-Clause License
dnl
dnl Copyright (c) 2021, Intel Corporation
dnl All rights reserved.
dnl
dnl Redistribution and use in source and binary forms, with or without
dnl modification, are permitted provided that the following conditions are met:
dnl
dnl * Redistributions of source code must retain the above copyright notice, this
dnl   list of conditions and the following disclaimer.
dnl
dnl * Redistributions in binary form must reproduce the above copyright notice,
dnl   this list of conditions and the following disclaimer in the documentation
dnl   and/or other materials provided with the distribution.
dnl
dnl * Neither the name of the copyright holder nor the names of its
dnl   contributors may be used to endorse or promote products derived from
dnl   this software without specific prior written permission.
dnl
dnl THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
dnl AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
dnl IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
dnl DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
dnl FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
dnl DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
dnl SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
dnl CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
dnl OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
dnl OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
dnl
include(begin.m4)

DECLARE(`GSTCORE_VER',1.20.3)

ifelse(OS_NAME,ubuntu,`
define(`GSTCORE_BUILD_DEPS',`ca-certificates ifdef(`BUILD_MESON',,meson) tar g++ wget pkg-config libglib2.0-dev flex bison gobject-introspection libgirepository1.0-dev python3-dev')
define(`GSTCORE_INSTALL_DEPS',`libglib2.0-0 libegl1')
')

ifelse(OS_NAME,centos,`
define(`GSTCORE_BUILD_DEPS',`ifdef(`BUILD_MESON',,meson) wget tar gcc-c++ glib2-devel bison flex gobject-introspection-devel')
define(`GSTCORE_INSTALL_DEPS',`glib2 gobject-introspection')
')

define(`BUILD_GSTCORE',`
# build gst-core
ARG GSTCORE_REPO=https://github.com/GStreamer/gstreamer/archive/GSTCORE_VER.tar.gz
RUN cd BUILD_HOME && \
    wget -O - ${GSTCORE_REPO} | tar xz
RUN cd BUILD_HOME/gstreamer-GSTCORE_VER && \
    meson build --libdir=BUILD_LIBDIR --libexecdir=BUILD_LIBDIR \
    --prefix=BUILD_PREFIX --buildtype=plain \
    -Dexamples=disabled \
    -Dtests=disabled \
    -Ddoc=disabled \
    -Dintrospection=enabled \
    -Dgtk_doc=disabled \
    -Dpython=enabled \
    -Dgst-python:libpython-dir=BUILD_LIBDIR \
    -Dcustom_subprojects="gst-libav,gst-plugins-base,gst-plugins-good,gst-plugins-bad,gst-plugins-ugly,gst-python" \
    -Dlibsoup:sysprof=disabled \
    -Dgpl=enabled && \
    cd build && \
    ninja install && \
    DESTDIR=BUILD_DESTDIR ninja install
')

define(`ENV_VARS_GSTCORE',`dnl
ENV GST_PLUGIN_PATH=BUILD_LIBDIR/gstreamer-1.0
ENV GST_PLUGIN_SCANNER=BUILD_LIBDIR/gstreamer-1.0/gst-plugin-scanner
')

REG(GSTCORE)

include(end.m4)
