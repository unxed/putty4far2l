# sudo apt install mingw-w64
#this will build x64
#make TOOLPATH=x86_64-w64-mingw32- -f Makefile.mgw putty.exe
make TOOLPATH=i686-w64-mingw32- -f Makefile.mgw putty.exe
