FROM quay.io/centos-bootc/centos-bootc:stream10 AS builder
RUN rm -rf /etc/yum.repos.d
COPY almalinux.repo /etc/yum.repos.d/almalinux.repo
RUN /usr/libexec/bootc-base-imagectl build-rootfs --manifest=standard /out
FROM scratch AS almalinux-bootc
COPY --from=builder /out /
LABEL containers.bootc 1
LABEL ostree.bootable true
LABEL bootc.diskimage-builder quay.io/centos-bootc/bootc-image-builder
ENV container=oci
STOPSIGNAL SIGRTMIN+3
CMD ["/sbin/init"]