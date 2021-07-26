mkdir include

cd mimalloc

cp ./include ../ -R

mkdir -p out/release
cd out/release
cmake ../.. -DCMAKE_SYSTEM_NAME=Android -DCMAKE_ANDROID_API=24 -DCMAKE_ANDROID_ARCH_ABI=arm64-v8a -DMI_USE_CXX=ON -DCMAKE_ANDROID_NDK=$ANDROID_NDK_ROOT
make
export repoPath=../../../
cp ./libmimalloc.a $repoPath