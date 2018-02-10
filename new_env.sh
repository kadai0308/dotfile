#!/bin/bash

# personal info of git
git config --global user.email "kychang009@gmail.com"

# install Google Chrome Incognito
curl -o $HOME/Downloads/GoogleChromeIncognito_v0.0.4.dmg https://ente.limmat.ch/ftp/pub/software/applications/GoogleChromeIncognito/GoogleChromeIncognito_v0.0.4.dmg
sudo hdiutil attach $HOME/Downloads/GoogleChromeIncognito_v0.0.4.dmg
cp -r /Volumes/Google\ Chrome\ Incognito/Google\ Chrome\ Incognito.app /Applications/
sudo hdiutil detach /Volumes/Google\ Chrome\ Incognito/
rm $HOME/Downloads/GoogleChromeIncognito_v0.0.4.dmg

# install brew
./install_brew.sh

# Extension for visual studio code
code --install-extension gerane.Theme-Blackboard
code --install-extension mshr-h.VerilogHDL
code --install-extension mshr-h.SystemVerilog

# global config
defaults write NSGlobalDomain AppleInterfaceStyle -string Dark

# menu bar display
defaults write com.apple.menuextra.battery ShowPercent -string YES

# terminal
defaults write com.apple.Terminal "Default Window Settings" -string Pro
defaults write com.apple.Terminal "Startup Window Settings" -string Pro

# input source
defaults write com.apple.HIToolbox AppleEnabledInputSources -array
defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add '
  <dict>
    <key>InputSourceKind</key><string>Keyboard Layout</string>
    <key>KeyboardLayout ID</key><integer>252</integer>
    <key>KeyboardLayout Name</key><string>ABC</string>
  </dict>
'
defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add '
  <dict>
    <key>Bundle ID</key><string>com.apple.inputmethod.TCIM</string>
    <key>Input Mode</key><string>com.apple.inputmethod.TCIM.Zhuyin</string>
    <key>InputSourceKind</key><string>Input Mode</string>
  </dict>
'
defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add '
  <dict>
    <key>Bundle ID</key><string>com.apple.inputmethod.TCIM</string>
    <key>InputSourceKind</key><string>Keyboard Input Method</string>
  </dict>
'
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 60 '
  <dict>
    <key>enabled</key><true/>
    <key>value</key><dict>
      <key>type</key><string>standard</string>
      <key>parameters</key>
      <array>
        <integer>32</integer>
        <integer>49</integer>
        <integer>262144</integer>
      </array>
    </dict>
  </dict>
'
# trackpad
defaults write com.apple.AppleMultitouchTrackpad ActuateDetents -int 1
defaults write com.apple.AppleMultitouchTrackpad ActuationStrength -int 1
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 1
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadFiveFingerPinchGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerPinchGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadHandResting -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadHorizScroll -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadMomentumScroll -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadPinch -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadRotate -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadScroll -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerDoubleTapGesture -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3

# dock
defaults write com.apple.dock orientation -string left
defaults write com.apple.dock mineffect -string scale
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-apps -array-add '
  <dict>
    <key>tile-data</key>
      <dict>
        <key>file-data</key>
          <dict>
            <key>_CFURLString</key><string>/Applications/Mail.app</string>
            <key>_CFURLStringType</key><integer>0</integer>
          </dict>
      </dict>
  </dict>
'
defaults write com.apple.dock persistent-apps -array-add '
  <dict>
    <key>tile-data</key>
      <dict>
        <key>file-data</key>
          <dict>
            <key>_CFURLString</key><string>/Applications/iTunes.app</string>
            <key>_CFURLStringType</key><integer>0</integer>
          </dict>
      </dict>
  </dict>
'
defaults write com.apple.dock persistent-apps -array-add '
  <dict>
    <key>tile-data</key>
      <dict>
        <key>file-data</key>
          <dict>
            <key>_CFURLString</key><string>/Applications/Google Chrome Incognito.app</string>
            <key>_CFURLStringType</key><integer>0</integer>
          </dict>
      </dict>
  </dict>
'
