#!/bin/bash

target_version=8
target_download_url=""
target_file_name=""
jdk8_download_url=https://cdn.azul.com/zulu/bin/zulu8.56.0.23-ca-jdk8.0.302-macosx_aarch64.dmg

if [ $target_version -eq 8 ]; then
  target_download_url=$jdk8_download_url
  target_file_name="jdk8.dmg"
else
  echo Only support JDK8
  exit 0
fi

echo -e "Begin to download JDK $target_version from $target_download_url"
curl -o $target_file_name $target_download_url
open ./$target_file_name