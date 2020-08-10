# putty4far2l
**Readme in english is below**

Форк [PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html) 0.73 с поддержкой [расширений](https://github.com/cyd01/KiTTY/issues/74#issuecomment-626917718) терминала [far2l](https://github.com/elfmz/far2l) (на данный момент готова поддержка сочетаний клавиш, необходимых far2l, и синхронизация буфера обмена). На данный момент расширения работают только в версии putty для Windows, используйте встроенный терминал графической версии far2l на unix-подобных системах.

[putty.exe для x86](https://github.com/unxed/putty4far2l/raw/master/windows/putty.exe)

Все изменения сосредоточены в файлах `windows/window.c` и `terminal.c`, ищите по строчке `far2l`.

Кросс-компиляция на Ubuntu 18.04:
```
sudo apt install mingw-w64
git clone https://github.com/unxed/putty4far2l.git
cd putty4far2l/windows
```

А потом, для сборки версии для x86:

`make TOOLPATH=i686-w64-mingw32- -f Makefile.mgw putty.exe`

Или для x86_64:

`make TOOLPATH=x86_64-w64-mingw32- -f Makefile.mgw putty.exe`

Если вы планируете собирать PuTTY на Linux и тестировать в wine (я именно так и делаю), может потребоваться [снять все галки](https://bugs.winehq.org/show_bug.cgi?id=48196) в Connection-SSH-Auth-GSSAPI, а то будет вылетать (или же сделать `sudo apt install libkrb5-3:i386 libgssapi-krb5-2:i386`).

Штуки, которые можно улучшить (конкретных планов по ним, впрочем, у меня нет):
- Более корректное преобразование UTF16<->32 (для синхронизации буфера обмена)
- Лучше обрабатывать ошибки
- Доработать поддержку буфера обмена (запоминать разрешения доступа для конкретных клиентов)
- Сделать формат буфера обмена FAR_VerticalBlock_Unicode совместимым с Far for Windows (если возможно)
- Выделять буфер APC динамически (сейчас лимит объема загружаемого с сервера буфера обмена ~680Кб)
- Добавить поддержку других типов запросов (события мышки, уведомления etc)
- Отображать псевдографику без сглаживания (или можно использовать шрифт [Consolas](https://en.wikipedia.org/wiki/Consolas) на Windows :)

Вся остальная информация - в оригинальном [PuTTY README](https://github.com/unxed/putty4far2l/blob/master/README).

---

[PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html) 0.73 downstream fork with [far2l](https://github.com/elfmz/far2l) terminal
[extensions](https://github.com/cyd01/KiTTY/issues/74#issuecomment-626917718) (support for required by far2l key combinations and clipboard sync support are ready for now). Extensions currently work only in Windows putty version, use built-in terminal of graphical far2l version on unix-like systems.

[putty.exe for x86](https://github.com/unxed/putty4far2l/raw/master/windows/putty.exe)

All changes are in files `windows/window.c` and `terminal.c`, you may search by `far2l` string to find them.

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

If you plan to build PuTTY on Linux and test in wine (as do I), you may need to [uncheck](https://bugs.winehq.org/show_bug.cgi?id=48196) all checkboxes in Connection-SSH-Auth-GSSAPI to avoid pagefaults (or do `sudo apt install libkrb5-3:i386 libgssapi-krb5-2:i386`).

Things that can be made better (I have no concrete plans on it all, though):
- Better UTF16<->32 conversion (for clipboard sync)
- Better errors processing
- Better clipboard support (option to allow sync permanently for specific clients)
- FAR_VerticalBlock_Unicode clipboard format interoperability with Windows Far (if possible)
- Dynamic APC buffer allocation (current clipboard size download limit is ~680Kb)
- Other requests implementation (mouse, notifications, etc)
- Display line drawing characters with antialiasing disabled (or just use [Consolas](https://en.wikipedia.org/wiki/Consolas) font on Windows :)

For additional stuff see original [PuTTY README](https://github.com/unxed/putty4far2l/blob/master/README).

