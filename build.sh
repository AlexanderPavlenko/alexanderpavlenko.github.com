#!/usr/bin/env bash
cd $(dirname "${0}")
hugo --cleanDestinationDir
cd ../homepage-blog
hugo --cleanDestinationDir

