#!/bin/bash

apt-ftparchive packages . | gzip > Packages.gz
zcat Packages.gz > Packages
apt-ftparchive release . > Release
