#!/bin/bash

# shellcheck disable=SC2039
this_script="$(readlink -f "${BASH_SOURCE[0]}")"
BASHPROF_ROOT="$(dirname "$this_script")"
BASHPROF_LIB="$BASHPROF_ROOT/lib"
export BASHPROF_ROOT
export BASHPROF_LIB

## Import the prelude for use in all profile modules.

# shellcheck source=lib/prelude
. "$BASHPROF_LIB/prelude"

## Provides configuration values for all modules.
#  By importing configuration in the entrypoint, we do not have to include it in
#  each individual module.

import configuration

## Individual profile modules.
#  Each of these provide a single aspect of profile functionality.
#  The import loads the appropriate code based upon the user's configuration.
#  The user may also have disabled module functionality, so an import here does
#  not mean that the module will actually take effect, only that it will be inspected.
#  Note that the order of these may be important; for example, many modules
#  depend on Python, which requires the "python" module to be imported before
#  necessary functionality is enabled.

import python
import powerline
