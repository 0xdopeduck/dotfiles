#!/bin/bash

sudo pacman -Syu --needed \
  base-devel \
  wget \
  unzip \
  ca-certificates \
  gtk3 \
  libx11 \
  libxrandr \
  libxinerama \
  libxcursor \
  libxi \
  mesa \
  fuse2 \
  nspr \
  nss \
  alsa-lib \
  at-spi2-core \
  libcups \
  libxdamage \
  libxcomposite \
  libxfixes \
  libxkbcommon \
  libxrandr \
  libdrm \
  mesa \
  pango \
  cairo

sudo pacman -Syu --needed caido-cli caido-desktop

distrobox-export --bin $(which caido)
distrobox-export --app caido

