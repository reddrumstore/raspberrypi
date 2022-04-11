#!/bin/bash

# ver. 1.0
#  runs update commands

apt update

apt list --upgradeable

apt upgrade -y
