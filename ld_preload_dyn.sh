#!/bin/bash

# before load ld_preload
./demo_dyn

# after load ld_preload
export LD_PRELOAD="./preload.so"
./demo_dyn
