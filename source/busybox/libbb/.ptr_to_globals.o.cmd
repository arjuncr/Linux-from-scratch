cmd_libbb/ptr_to_globals.o := x86_64-unknown-linux-gnu-gcc -Wp,-MD,libbb/.ptr_to_globals.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.28.3)"  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Os     -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(ptr_to_globals)"  -D"KBUILD_MODNAME=KBUILD_STR(ptr_to_globals)" -c -o libbb/ptr_to_globals.o libbb/ptr_to_globals.c

deps_libbb/ptr_to_globals.o := \
  libbb/ptr_to_globals.c \
  /root/lj-os/usr/include/stdc-predef.h \
  /root/lj-os/usr/include/errno.h \
  /root/lj-os/usr/include/features.h \
  /root/lj-os/usr/include/sys/cdefs.h \
  /root/lj-os/usr/include/bits/wordsize.h \
  /root/lj-os/usr/include/bits/long-double.h \
  /root/lj-os/usr/include/gnu/stubs.h \
  /root/lj-os/usr/include/gnu/stubs-64.h \
  /root/lj-os/usr/include/bits/errno.h \
  /root/lj-os/usr/include/linux/errno.h \
  /root/lj-os/usr/include/asm/errno.h \
  /root/lj-os/usr/include/asm-generic/errno.h \
  /root/lj-os/usr/include/asm-generic/errno-base.h \

libbb/ptr_to_globals.o: $(deps_libbb/ptr_to_globals.o)

$(deps_libbb/ptr_to_globals.o):
