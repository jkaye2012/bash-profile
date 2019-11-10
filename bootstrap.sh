#!/bin/bash

current_path="$(pwd)"
bootstrap_path="$(dirname "$0")"
bash_profile_path="$HOME/.bash_profile"

if [ -f "$bash_profile_path" ]; then
    echo "ERROR: cannot bootstrap with an existing Bash profile."
    echo "Please remove the file at $bash_profile_path and try again."
    exit 1
fi

cd "$bootstrap_path" || { echo "ERROR: Failed to cd to $bootstrap_path"; exit 255; }

ln -s "$(realpath entrypoint.sh)" "$bash_profile_path"
echo "Successfully installed Bash profile. The profile will apply to all newly opened terminals."
echo "It is HIGHLY recommended to open a new terminal before closing this one to ensure that nothing is broken."
echo "If there is any problem opening a new terminal, you can delete the profile by running this command:"
echo "rm -f $bash_profile_path"

cd "$current_path" || echo "WARNING: Failed to return to $current_path"
