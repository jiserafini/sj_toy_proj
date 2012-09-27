#!/bin/bash
# Written by Sangjung Woo / again4you@gmail.com

download_dir=download
src_dir=src
toolchain_dir=toolchain

install_requried_package()
{
	echo "Install necessary package"
	sudo apt-get update > /dev/null
	sudo apt-get install mercurial -y > /dev/null
	echo "Install necessary package complete!"
}

install_toolchain()
{
	mkdir $download_dir
	pushd $download_dir

	# Android NDK
	echo "Downloading Android NDK r8b"
	wget http://dl.google.com/android/ndk/android-ndk-r8b-linux-x86.tar.bz2 > /dev/null
	echo "Downloading Android NDK r8b complete!"
	popd > /dev/null

	# Install toolchain
	echo "Install Android NDK"
	mkdir $toolchain_dir
	cp $download_dir/android-ndk-r8b-linux-x86.tar.bz2 $toolchain_dir
	pushd $toolchain_dir
	tar xvf android-ndk-r8b-linux-x86.tar.bz2 > /dev/null
	echo "Install Android NDK complete!"
	popd > /dev/null

	# export necessary symbol
	export ANDROID_NDK=$toolchain_dir/android-ndk-r8b
	export PATH=$ANDROID_NDK:$ANDROID_NDK/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86/bin:$PATH
}

get_python4android()
{
	mkdir $src_dir
	pushd $src_dir

	echo "Downloading Python for Android source code"
	hg clone https://code.google.com/p/python-for-android/
	echo "Downloading Python for Android source code complete!"
	popd > /dev/null
}

build_python4android()
{
	# export necessary symbol
	export ANDROID_NDK=$toolchain_dir/android-ndk-r8b
	export PATH=$ANDROID_NDK:$ANDROID_NDK/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86/bin:$PATH

	# modify build script bug
	pushd src/python-for-android/python-build
	pwd
	mv python-src python-src.bak -f
	./build.sh 2> /dev/null
	echo "========================================================================="
	echo "Build complete!"
	echo "output file: $src_dir/python-for-android/python-build/output/usr"
	echo "========================================================================="
	popd > /dev/null
}


# start point
install_requried_package
install_toolchain
build_python4android
get_python4android
build_python4android
