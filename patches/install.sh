echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="external/skia frameworks/base frameworks/opt/net/wifi"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/oppo/CPH1859/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
