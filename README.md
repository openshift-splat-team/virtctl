# virtctl

This repo creates a shell image for virtctl. This image is intended to be used in a multi-stage build with the installer image. The installer image should copy powershell.tar.gz and install-pwsh.sh. install-pwsh.sh should be run to install powershell in the upi-installer image.