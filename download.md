---
layout: konstructs
title: Download the game
permalink: download/
---

# Client

The orange builds are built from the latest commit in the master branch. There are usually tested and usable, but if you finds some problem please report them in the [issue tracker](https://github.com/konstructs/client/issues).

The client will then ask for a username and a password. A new server account will be created automatically if needed.

## Windows

Windows builds are cross compiled and packaged from a Linux host 
using MinGW. A 32-bit binary are produced that should work on most 
Windows installations.

<a class="btn btn-primary" href="https://bintray.com/artifact/download/konstructs/windows/konstructs-client-3-windows.zip">Release 3</a>
<a class="btn btn-warning" href="https://bintray.com/artifact/download/konstructs/windows/konstructs-client.zip">Development version</a>

## Linux

We have automatic 64-bit binaries built and packages for Linux. The tar.bz2 file should work on most Linux distributions with the appropriate libraries installed. We also provide a deb package for Debian based distributions, like for example Ubuntu.

<a class="btn btn-primary" href="https://bintray.com/artifact/download/konstructs/linux/konstructs-client-3-linux.tar.bz2">Release 3 (tar.bz2)</a>
<a class="btn btn-primary" href="https://bintray.com/artifact/download/konstructs/debian/pool/main/k/konstructs-client/konstructs-client_3-996_amd64.deb">Release 3 (deb)</a>
<a class="btn btn-warning" href="https://bintray.com/artifact/download/konstructs/linux/konstructs-client.tar.bz2">Development version (tar.bz2)</a>
<a class="btn btn-warning" href="https://dl.bintray.com/konstructs/debian/pool/main/k/konstructs-client/">Development version (deb)</a>

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

<a class="btn btn-primary" href="https://bintray.com/artifact/download/konstructs/jars/konstructs-server-build-v0.1.11.jar">0.1.11 (for client release 3)</a>
<a class="btn btn-warning" href="https://bintray.com/artifact/download/konstructs/jars/konstructs-server-build-dev.jar">Development version</a>
