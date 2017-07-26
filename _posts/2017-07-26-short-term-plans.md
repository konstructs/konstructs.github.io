---
layout: news
title: Short term plans
by: Stefan
excerpt: Time for a update with our short term plans
---

# Short term plans

You may wonder in which direction the project is heading? Our overall [roadmap](/documentation/roadmap/) is still true, but how do we plan to get there from this point? Lets discuss that by citing the roadmap:

> Make a voxel based game that’s focused on massive multiplayer, a simple client with most of the game logic in the server. The server is extendable with plugins.

This is still true, our server is powerful and with Akka it spawns most things inside Actors that scales perfectly over multiple cores, or possible even several servers. The plugins are powerful and have control over both the world, interactions with the player and even has control over the players UI. Most of the core logic that makes the game fun, and a game, are written with the plugin system. Some of the plugins are bundled with the server, others are written in Java and are hosted as separate projects under the [Konstructs organization on GitHub](https://github.com/konstructs).

When it comes to the server the thing we need to improve is easy of use, it's a little hard to understand how to get started with a new plugin, and it can be a little tricky as a server administrator to configure and manage the plugins. To solve this we plan to:

* Improve documentation, the public API has excellent documentation but some interfaces need to be improved and we also need examples and guides how to get started. There will be a few quickstart guides soon!
* Expose more internal features in the public API, most inventory logic is still part of the internal API, we hope to move it to the public API soon.
* Make distributions, the core server is just plain boring. It's a platform for plugins, and they are what makes the game fun to play. We plan to release a pre-packaged official distribution of the server with most of the plugins running at play.konstructs.org for easy install.

We played with the idea to rewrite the client in something else, like Go or Rust but decided that C++ ecosystem and all the available integrations are worth a little pain. We also looked what options of graphic engines to use out there, but at the moment that's not a focus. Future will tell!

* We will drop NanoGUI from the project, we only used a small part of the project and without NanoGUI it will be easier to upgrade to a newer version of GLFW, support of Wayland is then possible.
* We plan to implement the ability for plugins to register GUI textures and display them on the inventory UI, this will make interaction with blocks with inventories more interesting, especially machines. Everything needed to implement buttons are also there. 
* Block inventory management will be improved, we plan to make a system that standardizes a default input and output inventory to blocks that support it. This allows other blocks to pick up or place items from or into other blocks. This make things like transport pipes or machines that places the output in a chest possible.
* We plan to support complex models registered by plugins, this allows plugin writers to make nicer looking blocks, if you like a tea kettle shaped block this will be possible! This will of course have a performance impact so we will probably limit the model render distance.

The next thing is packaging, with release nine of the client we distributed a zip archive for Windows and a tar-archive, rpm, deb and snap for Linux. From [PR client#240](https://github.com/konstructs/client/pull/240) and forward we will only build the zip and a snap.

If you like to maintain the project you will probably build it from source anyway, and the same goes for a PPA and so on. We started distributing the deb to target the popular Linux distribution Ubuntu, with the build system in place a rpm was easy to add (but that was never really tested). For a while we have hosted the game inside a new package format called [snap](https://snapcraft.io), it's build with security and easy of distribution in mind, exactly what we need.

Snaps allows us to support Arch, Debian, Gentoo, Fedora, openSUSE, Ubuntu and plenty more from a single package. To focus on just one package format for Linux makes our work easier and we can focus more time at the actual game. If you like to maintain a 3rd-party repository or be a real maintainer for a official one you are of course welcome to do so.

It is probably also a good idea to think about distribution under Windows, maybe it's time to use a installer to give the Windows users their well known wizard type of install.

## Over the horizon

Which the above done we plan to focus on gaming experience and fun, this work will mainly be focused around plugins, the official distribution and play.konstructs.org with is the official server.