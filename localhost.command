#!/bin/bash
currentDirectory="$(dirname "$BASH_SOURCE")"
cd $currentDirectory/web/02_threshold
php -S localhost:9999