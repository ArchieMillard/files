#! /bin/sh
/usr/bin/distrobox-enter -T -n debian -- "signal-desktop"
podman stop debian