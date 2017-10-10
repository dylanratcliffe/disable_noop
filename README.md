
# disable_noop

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with disable_noop](#setup)
    * [What disable_noop affects](#what-disable_noop-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with disable_noop](#beginning-with-disable_noop)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Description

This module contains a single task that disables `noop` on nodes. This modifies the `puppet.conf` to remove the `noop` variable under the `[agent]` section.

## Setup

### What disable_noop affects

This task modifies `puppet.conf` to remove the `noop` variable under the `[agent]`.

### Setup Requirements

Relies on Puppet being installed on the target nodes.

### Beginning with disable_noop

Ensure Puppet is installed on the target nodes.

## Usage

This task requires no input and only supplies a simple output.

## Reference

disable_noop has no variables or customisation.

## Limitations

Tested on Linux and Windows.

## Development

Contribution is welcome.

## Release Notes/Contributors/Etc.

This is the initial release
