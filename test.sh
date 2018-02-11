#! /bin/bash

cd Timer
make TEST_GRAPH TO_TEST=${1}
cd ..
./ui-timer.exe ${1}/${1}.tau2015 ${1}/${1}.timing ${1}/${1}.ops ${1}/${1}.output