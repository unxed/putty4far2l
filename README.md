
[PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html) 0.73 downstream fork with [far2l](https://github.com/elfmz/far2l) terminal
extensions (keyboard and clipboard support for now).

Ready to use [x86 binary](https://github.com/unxed/putty4far2l/raw/master/windows/putty.exe) is available for download.

---

Cross-compilation on Ubuntu 18.04:
```
sudo apt install mingw-w64
git clone https://github.com/unxed/putty4far2l.git
cd putty4far2l/windows
```

And then, for x86:

`make TOOLPATH=i686-w64-mingw32- -f Makefile.mgw putty.exe`

Or for x86_64:

`make TOOLPATH=x86_64-w64-mingw32- -f Makefile.mgw putty.exe`

---

If you plan to build PuTTY on Linux and test in wine (as do I), you may need to [uncheck](https://bugs.winehq.org/show_bug.cgi?id=48196) all checkboxes in Connection-SSH-Auth-GSSAPI to avoid pagefaults.

---

`__attribute__((packed))` is used in the code, which is GCC-only. For MSVC alternatives look [here](https://stackoverflow.com/questions/1537964/visual-c-equivalent-of-gccs-attribute-packed
).

---

Known bugs:
- PuTTY crashes on paste if there are some 0x00 characters in clipboard

Things that can be made better (I have no concrete plans on it all, though):
- Better errors processing
- Better clipboard support (option to allow sync permanently for specific clients)
- Deal with clipboard formats (not sure if this part is actually needed)
- Dynamic APC buffer allocation (current clipboard size download limit is ~680Kb)
- Other requests implementation (mouse, etc)
- Display line drawing characters with antialiasing disabled (or just use [Consolas](https://en.wikipedia.org/wiki/Consolas) font on Windows :)

---

For additional stuff see original putty [README](https://github.com/unxed/putty4far2l/blob/master/README).

