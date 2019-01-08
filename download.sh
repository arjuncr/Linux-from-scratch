#!/bin/bash

mkdir archive

cd archive

rm -r *

wget https://ftp.gnu.org/gnu/binutils/binutils-2.30.tar.xz

wget https://busybox.net/downloads/busybox-1.28.3.tar.bz2

wget ftp.osuosl.org/pub/clfs/conglomeration/clfs-embedded-bootscripts/clfs-embedded-bootscripts-1.0-pre5.tar.bz2

wget http://cdimage.debian.org/mirror/gnu.org/gnu/gcc/gcc-7.3.0/gcc-7.3.0.tar.xz

wget https://ftp.gnu.org/gnu/glibc/glibc-2.27.tar.xz

wget https://ftp.gnu.org/gnu/gmp/gmp-6.1.2.tar.bz2

wget ftp.ntu.edu.tw/linux/kernel/v4.x/linux-4.16.3.tar.xz

wget https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz

wget https://www.mpfr.org/mpfr-current/mpfr-4.0.1.tar.xz 

wget https://zlib.net/zlib-1.2.11.tar.gz

echo "extracting packages ...."

tar -xf   binutils-2.30.tar.xz

tar -xvjf busybox-1.28.3.tar.bz2

tar -xvjf clfs-embedded-bootscripts-1.0-pre5.tar.bz2

tar -xf   gcc-7.3.0.tar.xz

tar -xf   glibc-2.27.tar.xz

tar -xvjf gmp-6.1.2.tar.bz2

tar -xf   linux-4.16.3.tar.xz

tar -xvzf mpc-1.1.0.tar.gz

tar -xf mpfr-4.0.1.tar.xz

tar -xvzf zlib-1.2.11.tar.gz

echo "packages extracted"

cd ..

mkdir work

rm -r work/*

echo "copying packages from archive to work"

cp -r archive/binutils-2.30 work/binutil/

echo "copied binutil"

cp -r archive/busybox-1.28.3 work/busybox/


echo "copied busy box"

cp -r archive/clfs-embedded-bootscripts-1.0-pre5 work/clfs-embedded-bootscripts/


echo "copied clfs-embedded-bootscripts"

cp -r archive/gcc-7.3.0 work/gcc/

echo "copied gcc"

cp -r archive/glibc-2.27 work/glibc/

echo "copied glibc"

cp -r archive/gmp-6.1.2 work/gmp/

echo "copied gmp"

cp -r archive/linux-4.16.3 work/linux/

echo "copied linux kernal"

cp -r archive/mpc-1.1.0 work/mpc/

echo "copied mpc"

cp -r archive/mpfr-4.0.1 work/mpfr/

echo "copied mpfr"

cp -r archive/zlib-1.2.11 work/zlib/

echo "copied zlib"

ls work

echo "copying completed"

