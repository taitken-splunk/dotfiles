#!/usr/bin/env bash

BREW='/usr/local/bin/brew'
if [ -f $BREW ]; then
    echo "Tapping all the kegs!"
    taps='puppetlabs/puppet versent/taps zaquestion/tap wagoodman/dive'
    tapped=`$BREW tap`
    for tap in $taps
    do
        if [[ "$tapped" != *$tap* ]]
        then
            brew_command="$BREW tap $tap"
            $brew_command
        fi
    done

    echo "Updating brew"
    $BREW update
    echo "Installing stuff if needed"
    packages=`cat ~/.brew-list`
    installed=`$BREW list`
    for package in $packages
    do
        if [[ "$installed" != *$package* ]]
        then
            brew_command="$BREW install $package"
            $brew_command
        fi
    done
    # cask_packages=`cat ~/.brew-cask-list`
    # cask_installed=`$BREW cask list`
    # for package in $cask_packages
    # do
    #     if [[ "$installed" != *$package* ]]
    #     then
    #         brew_command="$BREW cask install $package"
    #         $brew_command
    #     fi
    # done
    echo "Upgrading stuff"
    $BREW upgrade
    echo "Cleaning up old versions"
    $BREW cleanup
fi
