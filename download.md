---
layout: page
title: Download the game
permalink: download/
---

The game is early pre-alpha and there are no releases yet, these 
builds are build from the latest commit.

## Windows

[Download devel version](https://bintray.com/artifact/download/konstructs/windows/konstructs-client.zip)

Download, unzip and start konstructs-client.exe

## Linux

[Download devel version](https://bintray.com/artifact/download/konstructs/linux/konstructs-client.tar.bz2)

Download, unpack and start konstructs-client.

### Debian (Ubuntu)

Import Bintray's signing key
```
sudo apt-key adv --keyserver pgp.mit.edu --recv-key 379CE192D401AB61
```

Add the repository
```
echo 'deb https://dl.bintray.com/konstructs/debian jessie main' | sudo tee /etc/apt/sources.list.d/konstructs.list
```

Update the package database and install the package `konstructs-client`:

`
sudo apt-get update
sudo apt-get install konstructs-client
`

Start the game from a terminal, or from your main menu under Games.

## OS X

Sorry, we have no automatic builds for OS X. You need to build it from source.
It is easy, follow the instructions over at [GitHub](https://github.com/konstructs/client/blob/master/BUILD.md).
