#!/bin/bash

# before ld preload,gdb was detected
#gdb -q ./debugme

# result
#Reading symbols from ./debugme...
#(No debugging symbols found in ./debugme)
#(gdb) run
#Starting program: /root/go/src/github.com/wadeling/ld_preload_demo/anti_debug_bypass/debugme
#I can see you GDB !
#[Inferior 1 (process 5762) exited with code 01]
#(gdb) q

# after ld preload,gdb was not detected
export LD_PRELOAD="./preload_debugme.so"
gdb -q ./debugme

# result
#Reading symbols from ./debugme...
#(No debugging symbols found in ./debugme)
#(gdb) run
#Starting program: /root/go/src/github.com/wadeling/ld_preload_demo/anti_debug_bypass/debugme
#No debugger detected !
#During startup program exited with code 23.
#(gdb)
