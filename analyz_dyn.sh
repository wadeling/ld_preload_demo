#!/bin/bash

# can see TYPE: DYN
readelf -h demo_dyn

# can see link to libc.so.xx
ldd demo_dyn

# can see: 
# 1. call libc.so: openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6",
# 2. use ld_preload: access("/etc/ld.so.preload"
strace ./demo_dyn
