#!/usr/bin/env bash

meson setup ${MESON_ARGS} builddir
meson compile -C builddir

if [[ "${CONDA_BUILD_CROSS_COMPILATION:-}" != "1" || "${CROSSCOMPILING_EMULATOR}" != "" ]]
then
    meson test -C builddir
fi

meson install -C builddir
