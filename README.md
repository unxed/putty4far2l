
[Putty](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html) 0.73 downstream fork with [far2l](https://github.com/elfmz/far2l) terminal
extensions (only full keyboard support for now; others are WIP).

[x86 binary](https://github.com/unxed/putty4far2l/raw/master/windows/putty.exe)

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

`__attribute__((packed))` is used in the code, which is GCC-only. For MSVC alternatives look [here](https://stackoverflow.com/questions/1537964/visual-c-equivalent-of-gccs-attribute-packed
).

---

For additional stuff see original putty [README](https://github.com/unxed/putty4far2l/blob/master/README).

