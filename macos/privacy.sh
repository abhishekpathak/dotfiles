#!/bin/bash

set -e

echo "Disable crash reporter."
defaults write com.apple.CrashReporter DialogType none

echo "Disable Bonjour multicast advertisements."
sudo defaults write /Library/Preferences/com.apple.mDNSResponder.plist NoMulticastAdvertisements -bool YES

echo "Disable Captive Portal Hijacking Attack."
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.captive.control Active -bool false

echo "Disable wake on network access."
sudo systemsetup -setwakeonnetworkaccess off