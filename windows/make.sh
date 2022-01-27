#
# install compiler first:
# sudo apt install mingw-w64
#
# this will build x64 version:
#make TOOLPATH=x86_64-w64-mingw32- -f Makefile.mgw putty.exe
#
# this will build x32 version:
make -j$(nproc --all) TOOLPATH=i686-w64-mingw32- -f Makefile.mgw putty.exe
