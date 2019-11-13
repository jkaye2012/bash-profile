#!/bin/bash

# shellcheck disable=SC2039
this_script="$(readlink -f "${BASH_SOURCE[0]}")"
BASHPROF_ROOT="$(dirname "$this_script")"
BASHPROF_LIB="$BASHPROF_ROOT/lib"
export BASHPROF_ROOT
export BASHPROF_LIB

# shellcheck source=lib/prelude
. "$BASHPROF_LIB/prelude"

## Provides configuration values for all modules.
#  By importing configuration in the entrypoint, we do not have to include it in
#  each individual module.

import configuration

## Individual profile modules.
#  Each of these provide a single aspect of profile functionality.
#  The import loads the appropriate code based upon the user's configuration.

import python

if bp_python_working; then
    echo "yeah"
else
    echo "nope"
fi
