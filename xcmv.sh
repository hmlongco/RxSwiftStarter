#!/usr/bin/env bash

LC_ALL=C find ./ -type f -not -path "./.git*" -exec sed -i '' "s/${1}/${2}/g" {} +

mv $1 $2
mv $1.xcodeproj $2.xcodeproj
mv $1.xcworkspace $2.xcworkspace
