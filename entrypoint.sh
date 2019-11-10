#!/bin/bash

# shellcheck disable=SC2039
this_script="$(readlink -f "${BASH_SOURCE[0]}")"
BASHPROF_ROOT="$(dirname "$this_script")"
BASHPROF_LIB="$BASHPROF_ROOT/lib"
export BASHPROF_ROOT
export BASHPROF_LIB

# shellcheck source=lib/prelude
. "$BASHPROF_LIB/prelude"

import configuration
