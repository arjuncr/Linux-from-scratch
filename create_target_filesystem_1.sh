#! /bin/bash

. ./build_env_0.sh

echo "creating basic file system"

mkdir -pv ${LJOS}/{bin,boot{,grub},dev,{etc/,}opt,home,lib/{firmware,modules},lib64,mnt}

mkdir -pv ${LJOS}/{proc,media/{floppy,cdrom},sbin,srv,sys}

mkdir -pv ${LJOS}/var/{lock,log,mail,run,spool}

mkdir -pv ${LJOS}/var/{opt,cache,lib/{misc,locate},local}

install -dv -m 0750 ${LJOS}/root

install -dv -m 1777 ${LJOS}{/var,}/tmp

install -dv ${LJOS}/etc/init.d

mkdir -pv ${LJOS}/usr/{,local/}{bin,include,lib{,64},sbin,src}

mkdir -pv ${LJOS}/usr/{,local/}share/{doc,info,locale,man}

mkdir -pv ${LJOS}/usr/{,local/}share/{misc,terminfo,zoneinfo}

mkdir -pv ${LJOS}/usr/{,local/}share/man/man{1,2,3,4,5,6,7,8}

for dir in ${LJOS}/usr{,/local}; do
     ln -sv share/{man,doc,info} ${dir}
   done

echo "file system created"

ls ${LJOS}

