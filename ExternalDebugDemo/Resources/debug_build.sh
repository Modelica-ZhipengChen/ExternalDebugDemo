#!/bin/bash

cd 1_StaticLibrary
bash debug_build.sh
cd ..
cd 2_SharedLibrary
bash debug_build.sh
cd ..
