#!/usr/bin/env bash
cd $(dirname "${0}")
hugo --cleanDestinationDir --destination ../master
cd ../blog
hugo --cleanDestinationDir --destination ../master/blog
cd ../master
git add -A
git commit -m "Publishes"
