#!/bin/bash

gcc preload.c -o preload.so -fPIC -shared -ldl
