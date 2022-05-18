#!/bin/bash

# run static binary before ld_preload
./demo_stc


# after ld_preload,not change anything
export LD_PRELOAD="./preload.so"
./demo_stc
