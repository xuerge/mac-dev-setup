#!/bin/bash

target_version=8
target_file_path="/Library/Java/JavaVirtualMachines/"


echo -e "Begin to download JDK $target_version from $target_download_url"
echo -e "rm -rf  ${target_file_path}zulu-${target_version}.jdk"