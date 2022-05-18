#!/bin/bash
gcc preload_crackme.c -o preload_crackme.so -fPIC -shared -ldl
