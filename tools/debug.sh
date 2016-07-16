#!/bin/bash
BUILD="`dirname $0`/../build"
mkdir -p "$BUILD"
cd "$BUILD"
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX="./install" .. || exit $?
make || exit $?
CTEST_OUTPUT_ON_FAILURE=1 make test || exit $?
