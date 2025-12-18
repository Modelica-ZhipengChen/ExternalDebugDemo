#!/bin/bash

rm -rf build

cmake -B build -DCMAKE_BUILD_TYPE=Debug -DARCH_BITS=64
cmake --build build
