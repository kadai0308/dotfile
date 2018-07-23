#!/bin/bash

# copy dotfiles to home
echo 'alias s="subl ."' >> $HOME/.bash_profile
echo 'alias o="open ."' >> $HOME/.bash_profile
echo 'alias ll="ls -lhAF"' >> $HOME/.bash_profile
./copy_dotfiles.sh

# install brew
./install_brew.sh

# menu bar display
defaults write com.apple.menuextra.battery ShowPercent -string YES

# safari opens with: A new private window
defaults write com.apple.Safari OpenPrivateWindowWhenNotRestoringSessionAtLaunch -int 1

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
