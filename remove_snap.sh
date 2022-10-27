#!/bin/bash

snap remove lxd
snap remove core20
snap remove snapd
apt purge snapd
