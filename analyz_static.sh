#!/bin/bash

# can see: TYPE: EXEC
readelf -h demo_stc

# can see: not a dynamic executable
ldd demo_stc

# no call to any .so
strace ./demo_stc
