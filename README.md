
Putty 0.73 with [far2l](https://github.com/elfmz/far2l) terminal
extensions (only full keyboard support for now; others are WIP).

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

For additional stuff see original putty [README](https://github.com/unxed/putty4far2l/blob/master/README).
