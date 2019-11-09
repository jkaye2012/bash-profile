# bash-profile

My personal Bash configuration, batteries included and designed for bootstrapping.

* [Overview](#overview)
* [Installation](#installation)
* [Usage](#usage)
* [Included packages](#included-packages)

## Overview

After spending many hours tweaking and reconfiguring multiple hosts that I often work on,
I've come to the conclusion that it makes more sense to fully automate this process so that
I can continue to update my Bash environment and have the changes propagate to all Linux machines
that I use.

Others are more than welcome to use this configuration as their own. If you're planning on using the configuration directly
from this repository without forking, there are a few things you should know:

* Dependencies will not be added to this configuration. Raw Bash only.
  * This is primarily for simplicity and portability purposes.
* I cannot guarantee that there will never be a breaking change, though I will try to handle them.
* Many decisions made in this repository will be based purely on my personal preference. If you don't like them,
  please fork the repository and maintain your own configuration. I am happy to answer any questions you may have.

## Installation

The profile is built to bootstrap itself; all you have to do is get the profile and tell it to set itself up.

1. Clone the repository to any directory of your choosing (I prefer to place it directly in `~`, but it will work from anywhere)
2. Run the setup script from the repository root (`bootstrap.sh`)

**Please note:** If you have an existing bash profile in place while attempting to install, the bootstrap will abort itself
(otherwise, it could overwrite something important). Ensuring that you do not have an existing Bash profile is the only
manual step required for installation.

TL;DR:

```shell
git clone https://github.com/jkaye2012/bash-profile ~/bash-profile
cd ~/bash-profile
./bootstrap.sh
```

## Usage

## Included packages
