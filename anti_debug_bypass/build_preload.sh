#!/bin/bash

gcc preload_debugme.c -o preload_debugme.so -fPIC -shared -ldl
