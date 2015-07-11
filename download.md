---
layout: konstructs
title: Download the game
permalink: download/
---

# Client

The game is early pre-alpha so there are no releases yet, these builds are build from the latest commit in the master branch. There are usually tested and usable, but if you finds some problem please report them in the [issue tracker](https://github.com/konstructs/client/issues).

## Windows

Windows builds are cross compiled and packaged from a Linux host 
using MinGW. A 32-bit binary are produced that should work on most 
Windows installations. There are no GUI to connect to a server yet
so you need to launch the game from the command line like this.

`
konstructs-client.exe play.konstructs.org username password
`

<a class="btn btn-warning" href="https://bintray.com/artifact/download/konstructs/windows/konstructs-client.zip">Download development version</a>

## Linux

We have automatic 64-bit binaries built and packages for Linux. The tar.bz2 file should work on most Linux distributions with the appropriate libraries installed. We also provide a deb package for Debian based distributions, like for example Ubuntu.

<a class="btn btn-warning" href="https://bintray.com/artifact/download/konstructs/linux/konstructs-client.tar.bz2">Download tar.bz2 (development version)</a>
<a class="btn btn-warning" href="https://dl.bintray.com/konstructs/debian/pool/main/k/konstructs-client/">Download deb (development version)</a>

The deb will install the game under Games in your menu. If you are using the tar.bz2 version, extract the files and run it like this.

`
./konstructs-client play.konstructs.org username password
`

We also have a deb repo over at Bintray for you Debian/Ubuntu users. The advantage is that you will get updates to the client with your normal OS updates. If you like to add the repository, do the following.

`
sudo apt-key adv --keyserver pgp.mit.edu --recv-key 379CE192D401AB61
`

`
echo 'deb https://dl.bintray.com/konstructs/debian jessie main' | sudo tee /etc/apt/sources.list.d/konstructs.list
`

`
sudo apt-get update
`

Now search for konstructs-client to install the game, or type:
`
sudo apt-get install konstructs-client
`

## OS X

We do not have any automatic builds for OS X because we do not have the hardware to nether run or test the game. We have reports on successful builds on latest OS X so you should be able to build it from source, for that, follow the instructions over at [GitHub](https://github.com/konstructs/client/blob/master/BUILD.md).

# Server

You only need the server if you like to host your own private server, play offline or prefer to play alone. For everything else, you have a public server hosted at `play.konstructs.org`.

<a class="btn btn-warning" href="https://bintray.com/artifact/download/konstructs/jars/konstructs-server-build-dev.jar">Download development version</a>
