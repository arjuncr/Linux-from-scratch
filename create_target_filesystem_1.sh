#! /bin/bash

. ./build_env_0.sh

echo "creating basic file system"

mkdir -pv ${OS}/{bin,boot/{,grub},dev,{etc/,}opt,home,lib/{firmware,modules},lib64,mnt}

mkdir -pv ${OS}/{proc,media/{floppy,cdrom},sbin,srv,sys}

mkdir -pv ${OS}/var/{lock,log,mail,run,spool}

mkdir -pv ${OS}/var/{opt,cache,lib/{misc,locate},local}

install -dv -m 0750 ${OS}/root

install -dv -m 1777 ${OS}{/var,}/tmp

install -dv ${OS}/etc/init.d

mkdir -pv ${OS}/usr/{,local/}{bin,include,lib{,64},sbin,src}

mkdir -pv ${OS}/usr/{,local/}share/{doc,info,locale,man}

mkdir -pv ${OS}/usr/{,local/}share/{misc,terminfo,zoneinfo}

mkdir -pv ${OS}/usr/{,local/}share/man/man{1,2,3,4,5,6,7,8}

for dir in ${OS}/usr{,/local}; do
     ln -sv share/{man,doc,info} ${dir}
   done

echo "file system created"

ls ${OS}
