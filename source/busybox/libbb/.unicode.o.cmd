cmd_libbb/unicode.o := x86_64-unknown-linux-gnu-gcc -Wp,-MD,libbb/.unicode.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.28.3)"  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Os     -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(unicode)"  -D"KBUILD_MODNAME=KBUILD_STR(unicode)" -c -o libbb/unicode.o libbb/unicode.c

deps_libbb/unicode.o := \
  libbb/unicode.c \
    $(wildcard include/config/unicode/using/locale.h) \
    $(wildcard include/config/feature/check/unicode/in/env.h) \
    $(wildcard include/config/last/supported/wchar.h) \
    $(wildcard include/config/unicode/bidi/support.h) \
    $(wildcard include/config/unicode/neutral/table.h) \
    $(wildcard include/config/unicode/combining/wchars.h) \
    $(wildcard include/config/unicode/wide/wchars.h) \
    $(wildcard include/config/subst/wchar.h) \
  /root/lj-os/usr/include/stdc-predef.h \
  include/libbb.h \
    $(wildcard include/config/feature/shadowpasswds.h) \
    $(wildcard include/config/use/bb/shadow.h) \
    $(wildcard include/config/selinux.h) \
    $(wildcard include/config/feature/utmp.h) \
    $(wildcard include/config/locale/support.h) \
    $(wildcard include/config/use/bb/pwd/grp.h) \
    $(wildcard include/config/lfs.h) \
    $(wildcard include/config/feature/buffers/go/on/stack.h) \
    $(wildcard include/config/feature/buffers/go/in/bss.h) \
    $(wildcard include/config/feature/verbose.h) \
    $(wildcard include/config/feature/ipv6.h) \
    $(wildcard include/config/feature/seamless/xz.h) \
    $(wildcard include/config/feature/seamless/lzma.h) \
    $(wildcard include/config/feature/seamless/bz2.h) \
    $(wildcard include/config/feature/seamless/gz.h) \
    $(wildcard include/config/feature/seamless/z.h) \
    $(wildcard include/config/feature/check/names.h) \
    $(wildcard include/config/feature/prefer/applets.h) \
    $(wildcard include/config/long/opts.h) \
    $(wildcard include/config/feature/pidfile.h) \
    $(wildcard include/config/feature/syslog.h) \
    $(wildcard include/config/feature/individual.h) \
    $(wildcard include/config/echo.h) \
    $(wildcard include/config/printf.h) \
    $(wildcard include/config/test.h) \
    $(wildcard include/config/test1.h) \
    $(wildcard include/config/test2.h) \
    $(wildcard include/config/kill.h) \
    $(wildcard include/config/killall.h) \
    $(wildcard include/config/killall5.h) \
    $(wildcard include/config/chown.h) \
    $(wildcard include/config/ls.h) \
    $(wildcard include/config/xxx.h) \
    $(wildcard include/config/route.h) \
    $(wildcard include/config/feature/hwib.h) \
    $(wildcard include/config/desktop.h) \
    $(wildcard include/config/feature/crond/d.h) \
    $(wildcard include/config/feature/securetty.h) \
    $(wildcard include/config/pam.h) \
    $(wildcard include/config/use/bb/crypt.h) \
    $(wildcard include/config/feature/adduser/to/group.h) \
    $(wildcard include/config/feature/del/user/from/group.h) \
    $(wildcard include/config/ioctl/hex2str/error.h) \
    $(wildcard include/config/feature/editing.h) \
    $(wildcard include/config/feature/editing/history.h) \
    $(wildcard include/config/feature/editing/savehistory.h) \
    $(wildcard include/config/feature/tab/completion.h) \
    $(wildcard include/config/feature/username/completion.h) \
    $(wildcard include/config/feature/editing/vi.h) \
    $(wildcard include/config/feature/editing/save/on/exit.h) \
    $(wildcard include/config/pmap.h) \
    $(wildcard include/config/feature/show/threads.h) \
    $(wildcard include/config/feature/ps/additional/columns.h) \
    $(wildcard include/config/feature/topmem.h) \
    $(wildcard include/config/feature/top/smp/process.h) \
    $(wildcard include/config/pgrep.h) \
    $(wildcard include/config/pkill.h) \
    $(wildcard include/config/pidof.h) \
    $(wildcard include/config/sestatus.h) \
    $(wildcard include/config/unicode/support.h) \
    $(wildcard include/config/feature/mtab/support.h) \
    $(wildcard include/config/feature/clean/up.h) \
    $(wildcard include/config/feature/devfs.h) \
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
  /root/lj-os/usr/include/ctype.h \
  /root/lj-os/usr/include/bits/types/locale_t.h \
  /root/lj-os/usr/include/bits/types/__locale_t.h \
  /root/lj-os/usr/include/dirent.h \
  /root/lj-os/usr/include/bits/dirent.h \
  /root/lj-os/usr/include/errno.h \
  /root/lj-os/usr/include/bits/errno.h \
  /root/lj-os/usr/include/linux/errno.h \
  /root/lj-os/usr/include/asm/errno.h \
  /root/lj-os/usr/include/asm-generic/errno.h \
  /root/lj-os/usr/include/asm-generic/errno-base.h \
  /root/lj-os/usr/include/fcntl.h \
  /root/lj-os/usr/include/bits/fcntl.h \
  /root/lj-os/usr/include/bits/fcntl-linux.h \
  /root/lj-os/usr/include/bits/types/struct_iovec.h \
  /root/lj-os/usr/include/linux/falloc.h \
  /root/lj-os/usr/include/bits/types/struct_timespec.h \
  /root/lj-os/usr/include/bits/stat.h \
  /root/lj-os/usr/include/inttypes.h \
  /root/lj-os/usr/include/netdb.h \
  /root/lj-os/usr/include/netinet/in.h \
  /root/lj-os/usr/include/sys/socket.h \
  /root/lj-os/usr/include/bits/socket.h \
  /root/lj-os/usr/include/sys/types.h \
  /root/lj-os/usr/include/bits/types/clock_t.h \
  /root/lj-os/usr/include/bits/types/clockid_t.h \
  /root/lj-os/usr/include/bits/types/time_t.h \
  /root/lj-os/usr/include/bits/types/timer_t.h \
  /root/lj-os/usr/include/sys/select.h \
  /root/lj-os/usr/include/bits/select.h \
  /root/lj-os/usr/include/bits/types/sigset_t.h \
  /root/lj-os/usr/include/bits/types/__sigset_t.h \
  /root/lj-os/usr/include/bits/types/struct_timeval.h \
  /root/lj-os/usr/include/sys/sysmacros.h \
  /root/lj-os/usr/include/bits/sysmacros.h \
  /root/lj-os/usr/include/bits/pthreadtypes.h \
  /root/lj-os/usr/include/bits/thread-shared-types.h \
  /root/lj-os/usr/include/bits/pthreadtypes-arch.h \
  /root/lj-os/usr/include/bits/socket_type.h \
  /root/lj-os/usr/include/bits/sockaddr.h \
  /root/lj-os/usr/include/asm/socket.h \
  /root/lj-os/usr/include/asm-generic/socket.h \
  /root/lj-os/usr/include/asm/sockios.h \
  /root/lj-os/usr/include/asm-generic/sockios.h \
  /root/lj-os/usr/include/bits/types/struct_osockaddr.h \
  /root/lj-os/usr/include/bits/in.h \
  /root/lj-os/usr/include/rpc/netdb.h \
  /root/lj-os/usr/include/bits/types/sigevent_t.h \
  /root/lj-os/usr/include/bits/types/__sigval_t.h \
  /root/lj-os/usr/include/bits/netdb.h \
  /root/lj-os/usr/include/setjmp.h \
  /root/lj-os/usr/include/bits/setjmp.h \
  /root/lj-os/usr/include/signal.h \
  /root/lj-os/usr/include/bits/signum.h \
  /root/lj-os/usr/include/bits/signum-generic.h \
  /root/lj-os/usr/include/bits/types/sig_atomic_t.h \
  /root/lj-os/usr/include/bits/types/siginfo_t.h \
  /root/lj-os/usr/include/bits/siginfo-arch.h \
  /root/lj-os/usr/include/bits/siginfo-consts.h \
  /root/lj-os/usr/include/bits/siginfo-consts-arch.h \
  /root/lj-os/usr/include/bits/types/sigval_t.h \
  /root/lj-os/usr/include/bits/sigevent-consts.h \
  /root/lj-os/usr/include/bits/sigaction.h \
  /root/lj-os/usr/include/bits/sigcontext.h \
  /root/lj-os/usr/include/bits/types/stack_t.h \
  /root/lj-os/usr/include/sys/ucontext.h \
  /root/lj-os/usr/include/bits/sigstack.h \
  /root/lj-os/usr/include/bits/ss_flags.h \
  /root/lj-os/usr/include/bits/types/struct_sigstack.h \
  /root/lj-os/usr/include/bits/sigthread.h \
  /root/lj-os/usr/include/paths.h \
  /root/lj-os/usr/include/stdio.h \
  /root/lj-os/usr/include/bits/types/__FILE.h \
  /root/lj-os/usr/include/bits/types/FILE.h \
  /root/lj-os/usr/include/bits/libio.h \
  /root/lj-os/usr/include/bits/_G_config.h \
  /root/lj-os/usr/include/bits/types/__mbstate_t.h \
  /root/lj-os/cross-tools/lib/gcc/x86_64-unknown-linux-gnu/7.3.0/include/stdarg.h \
  /root/lj-os/usr/include/bits/stdio_lim.h \
  /root/lj-os/usr/include/bits/sys_errlist.h \
  /root/lj-os/usr/include/stdlib.h \
  /root/lj-os/usr/include/bits/waitflags.h \
  /root/lj-os/usr/include/bits/waitstatus.h \
  /root/lj-os/usr/include/bits/floatn.h \
  /root/lj-os/usr/include/bits/floatn-common.h \
  /root/lj-os/usr/include/alloca.h \
  /root/lj-os/usr/include/bits/stdlib-float.h \
  /root/lj-os/usr/include/string.h \
  /root/lj-os/usr/include/strings.h \
  /root/lj-os/usr/include/libgen.h \
  /root/lj-os/usr/include/poll.h \
  /root/lj-os/usr/include/sys/poll.h \
  /root/lj-os/usr/include/bits/poll.h \
  /root/lj-os/usr/include/sys/ioctl.h \
  /root/lj-os/usr/include/bits/ioctls.h \
  /root/lj-os/usr/include/asm/ioctls.h \
  /root/lj-os/usr/include/asm-generic/ioctls.h \
  /root/lj-os/usr/include/linux/ioctl.h \
  /root/lj-os/usr/include/asm/ioctl.h \
  /root/lj-os/usr/include/asm-generic/ioctl.h \
  /root/lj-os/usr/include/bits/ioctl-types.h \
  /root/lj-os/usr/include/sys/ttydefaults.h \
  /root/lj-os/usr/include/sys/mman.h \
  /root/lj-os/usr/include/bits/mman.h \
  /root/lj-os/usr/include/bits/mman-linux.h \
  /root/lj-os/usr/include/bits/mman-shared.h \
  /root/lj-os/usr/include/sys/stat.h \
  /root/lj-os/usr/include/sys/time.h \
  /root/lj-os/usr/include/sys/wait.h \
  /root/lj-os/usr/include/termios.h \
  /root/lj-os/usr/include/bits/termios.h \
  /root/lj-os/usr/include/time.h \
  /root/lj-os/usr/include/bits/time.h \
  /root/lj-os/usr/include/bits/timex.h \
  /root/lj-os/usr/include/bits/types/struct_tm.h \
  /root/lj-os/usr/include/bits/types/struct_itimerspec.h \
  /root/lj-os/usr/include/sys/param.h \
  /root/lj-os/usr/include/bits/param.h \
  /root/lj-os/usr/include/linux/param.h \
  /root/lj-os/usr/include/asm/param.h \
  /root/lj-os/usr/include/asm-generic/param.h \
  /root/lj-os/usr/include/pwd.h \
  /root/lj-os/usr/include/grp.h \
  /root/lj-os/usr/include/mntent.h \
  /root/lj-os/usr/include/sys/statfs.h \
  /root/lj-os/usr/include/bits/statfs.h \
  /root/lj-os/usr/include/utmp.h \
  /root/lj-os/usr/include/bits/utmp.h \
  /root/lj-os/usr/include/utmpx.h \
  /root/lj-os/usr/include/bits/utmpx.h \
  /root/lj-os/usr/include/arpa/inet.h \
  include/pwd_.h \
  include/grp_.h \
  include/shadow_.h \
  include/xatonum.h \
  include/unicode.h \

libbb/unicode.o: $(deps_libbb/unicode.o)

$(deps_libbb/unicode.o):
