#!/bin/sh
#Script auto fix time on hackintosh
#Version 1.1: Otc 11, 2015
#Version 1.2: Jan 17, 2021 by milaoshu1020
#OSX: 10.6 and above

echo "This script required to run as root"

echo "Copy file to destination place..."

mkdir /Users/Shared/sbin
sudo cp -R ./sbin/localtime-toggle /Users/Shared/sbin/
sudo cp -R ./Library/LaunchDaemons/org.osx86.localtime-toggle.plist /Library/LaunchDaemons/

echo "Chmod localtime-toggle..."

sudo chmod +x /Users/Shared/sbin/localtime-toggle

echo "Chmod org.osx86.localtime-toggle.plist..."

sudo chown root /Library/LaunchDaemons/org.osx86.localtime-toggle.plist
sudo chmod 644 /Library/LaunchDaemons/org.osx86.localtime-toggle.plist

echo "Load LaunchDaemons..."

sudo launchctl load -w /Library/LaunchDaemons/org.osx86.localtime-toggle.plist

echo "Done!"
