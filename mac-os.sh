#!/usr/bin/env bash

echo | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor # do what it says
brew tap caskroom/cask
brew install node
brew upgrade node
brew cask install caskroom/versions/java8
brew install ant maven gradle
brew cask install android-sdk android-ndk
sdkmanager "platform-tools" "platforms;android-26"
sdkmanager --install "build-tools;26.0.2"
echo "export ANDROID_HOME=/usr/local/share/android-sdk" >> ~/.bash_profile
echo "export PATH=${PATH}:/usr/local/share/android-sdk/platform-tools:/usr/local/share/android-sdk/tools" >> ~/.bash_profile
echo "export ANDROID_SDK_ROOT=/usr/local/share/android-sdk" >> ~/.bash_profile
source ~/.bash_profile
sudo npm install -g ios-deploy --unsafe-perm=true
brew install CocoaPods
npm install -g cordova
