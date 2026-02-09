
ARCH=$(uname -m)
case $ARCH in
	x86_64)
		echo "x86_64"
		sudo cp ./x64_libpcie.a   /usr/local/lib/libpcie.a 
		;;
	aarch64|arm64)
		echo "aarch64 or arm64"
 		sudo cp ./arm_libpcie.a   /usr/local/lib/libpcie.a 
		;;
	*)
		echo "not supported ARCH "
		exit
		;;
esac

sudo rm -rf ./build 

mkdir build
cd build 
cmake ../
make -j$(nproc)
sudo make install
sudo ldconfig
cd ../
sudo rm -rf ./build 
sudo uhd_find_devices 
sudo uhd_usrp_probe

