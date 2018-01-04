# cordova-vagrant

A VM for developing cordova apps on macOS

## Install Vagrant, VirtualBox and git

    http://www.vagrantup.com
    https://www.virtualbox.org (don't worry about setting up any VMs as the steps below will cover this)
    http://git-scm.com

## Set up

    $ git clone https://github.com/redgeoff/cordova-vagrant.git
    $ cd cordova-vagrant
    $ vagrant up
    $ vagrant ssh
    Launch macOS UI and open terminal window
    Manually run mac-os.sh line by line

## Create sample app:

    $ cordova create hello com.example.hello HelloWorld
    $ cd hello
    $ cordova platform add ios
    $ cordova emulate ios --target="iPhone-7, 11.2"

