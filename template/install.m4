COPY --from=build /home/build /
ENV LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib:/usr/local/ifelse(index(DOCKER_IMAGE,ubuntu),-1,lib64,lib/x86_64-linux-gnu)
defn(`INSTALL_NGINX',`INSTALL_MEDIA_DRIVER',`INSTALL_OPENCL',`INSTALL_GST_PLUGIN_VAAPI',`INSTALL_IE',`INSTALL_MO',`INSTALL_OPENVINO',`INSTALL_VA_GST_PLUGINS')dnl
