cmd_libbb/perror_nomsg.o := x86_64-unknown-linux-gnu-gcc -Wp,-MD,libbb/.perror_nomsg.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.28.3)"  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Os     -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(perror_nomsg)"  -D"KBUILD_MODNAME=KBUILD_STR(perror_nomsg)" -c -o libbb/perror_nomsg.o libbb/perror_nomsg.c

deps_libbb/perror_nomsg.o := \
  libbb/perror_nomsg.c \
  /root/lj-os/usr/include/stdc-predef.h \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config/big/endian.h) \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/nommu.h) \
  /root/lj-os/cross-tools/lib/gcc/x86_64-unknown-linux-gnu/7.3.0/include-fixed/limits.h \
  /root/lj-os/cross-tools/lib/gcc/x86_64-unknown-linux-gnu/7.3.0/include-fixed/syslimits.h \
  /root/lj-os/usr/include/limits.h \
  /root/lj-os/usr/include/bits/libc-header-start.h \
  /root/lj-os/usr/include/features.h \
  /root/lj-os/usr/include/sys/cdefs.h \
  /root/lj-os/usr/include/bits/wordsize.h \
  /root/lj-os/usr/include/bits/long-double.h \
  /root/lj-os/usr/include/gnu/stubs.h \
  /root/lj-os/usr/include/gnu/stubs-64.h \
  /root/lj-os/usr/include/bits/posix1_lim.h \
  /root/lj-os/usr/include/bits/local_lim.h \
  /root/lj-os/usr/include/linux/limits.h \
  /root/lj-os/usr/include/bits/posix2_lim.h \
  /root/lj-os/usr/include/bits/xopen_lim.h \
  /root/lj-os/usr/include/bits/uio_lim.h \
  /root/lj-os/usr/include/byteswap.h \
  /root/lj-os/usr/include/bits/byteswap.h \
  /root/lj-os/usr/include/bits/types.h \
  /root/lj-os/usr/include/bits/typesizes.h \
  /root/lj-os/usr/include/bits/byteswap-16.h \
  /root/lj-os/usr/include/endian.h \
  /root/lj-os/usr/include/bits/endian.h \
  /root/lj-os/usr/include/bits/uintn-identity.h \
  /root/lj-os/cross-tools/lib/gcc/x86_64-unknown-linux-gnu/7.3.0/include/stdint.h \
  /root/lj-os/usr/include/stdint.h \
  /root/lj-os/usr/include/bits/wchar.h \
  /root/lj-os/usr/include/bits/stdint-intn.h \
  /root/lj-os/usr/include/bits/stdint-uintn.h \
  /root/lj-os/cross-tools/lib/gcc/x86_64-unknown-linux-gnu/7.3.0/include/stdbool.h \
  /root/lj-os/usr/include/unistd.h \
  /root/lj-os/usr/include/bits/posix_opt.h \
  /root/lj-os/usr/include/bits/environments.h \
  /root/lj-os/cross-tools/lib/gcc/x86_64-unknown-linux-gnu/7.3.0/include/stddef.h \
  /root/lj-os/usr/include/bits/confname.h \
  /root/lj-os/usr/include/bits/getopt_posix.h \
  /root/lj-os/usr/include/bits/getopt_core.h \

libbb/perror_nomsg.o: $(deps_libbb/perror_nomsg.o)

$(deps_libbb/perror_nomsg.o):
