#! /bin/bash

cd Timer
make TEST_GRAPH TO_TEST=${1}
cd ..
echo ${1}/${1}.tau2015 ${1}/${1}.timing ${1}/${1}.ops ${1}/${1}.output
./ui-timer.exe ${1}/${1}.tau2015 ${1}/${1}.timing ${1}/${1}.ops ${1}/${1}.output