#!/bin/bash

export ARCH=arm64
export PLATFORM_VERSION=13
export ANDROID_MAJOR_VERSION=T

make ARCH=arm64 exynos9610-a51xx_defconfig
make ARCH=arm64 -j16
