#!/bin/sh

set -e

sh -c /usr/bin/configure.sh

amplify $@
