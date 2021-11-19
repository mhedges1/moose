#!/usr/bin/env bash

joinByChar() {
  local IFS="$1"
  shift
  echo "$*"
}

export FLATPAK_DEFAULT_USER_APPS=(
    com.belmoussaoui.Authenticator
    com.bitwarden.desktop
    com.discordapp.Discord
    com.github.unrud.VideoDownloader
    com.slack.Slack
    com.spotify.Client
    com.visualstudio.code
    org.freedesktop.Platform
    org.freedesktop.Platform.GL.default
    org.freedesktop.Platform.GL.default
    org.freedesktop.Platform.GL.nvidia-470-82-00
    org.freedesktop.Platform.GL.nvidia-470-86
    org.freedesktop.Platform.openh264
    org.freedesktop.Sdk
    org.gnome.Platform
    org.gtk.Gtk3theme.Pop-dark
    org.kde.Platform
    org.kde.PlatformTheme.QGnomePlatform
    org.kde.PlatformTheme.QtSNI
    org.kde.WaylandDecoration.QGnomePlatform-decoration
    org.videolan.VLC
)

TO_INSTALL=$(joinByChar ' ' "${FLATPAK_DEFAULT_USER_APPS[@]}")

# Installs packages
flatpak install -y "$TO_INSTALL"