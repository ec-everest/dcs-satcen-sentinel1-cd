#!/bin/bash

export ciop_job_include="/usr/lib/ciop/libexec/ciop-functions.sh"
source ./test_common.sh

test_bash_n()
{

pwd
  bash -n ../main/app-resources/change_detection/run
  res=$?
  assertEquals "bash -n validation failed" \
  "0" "${res}"
}


. ${SHUNIT2_HOME}/shunit2
