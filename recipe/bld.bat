meson setup %MESON_ARGS% -Dprefix=%LIBRARY_PREFIX% builddir
if errorlevel 1 exit 1

meson compile -C builddir
if errorlevel 1 exit 1

meson test -C builddir
if errorlevel 1 exit 1

meson install -C builddir
if errorlevel 1 exit 1
