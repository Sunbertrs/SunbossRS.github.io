#!/bin/bash

DATE=$(date "+%Y-%m-%d")

TIME=$(date "+%H:%M:%S")

git add .

git commit -a -m "$DATE $TIME"

git push