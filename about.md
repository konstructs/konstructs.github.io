---
layout: page
title: About Konstructs
permalink: about/
---

# The beginning

It all started a winter day the around the new year 2014/2015 in Stockholm, Sweden.
Two friends started to tinker and experiment with a game written by
Michael Fogleman called Craft. Our visions started to take shape and we
quickly realized that our take on the game was very different compared to
Fogleman’s game, so we forked it.

The original was based around the client, there was a multiplayer server
but that was more like a simple relay. All the logic happened in the client.
Nothing wrong with that but we had other plans...

Since then, we have stripped the client of features. The idea is to make it
a dumb viewer and make all decisions in the server. This adds some interesting
problems but overall it works really well!

# Architecture

The game is based in two parts, a client written in C that we forked from
Fogleman (and since then partly rewriten to C++), and a server written in Scala. To test the game you can connect to our public server, but for a private world, you need both.

## The client

Our client processes and receives huge amount of block data from the server,
we have added both compression and a binary extension to speed it up.

The client is really stupid, we have removed concepts like block placements.
The client only sends "clicked at x, y, z with the right mouse button" to the
server. The server then takes the appropriate action like a block placement,
removal or maybe opens a chest.

We have also added a inventory, backpacks (chest) and crafting.
All managed by the server. We have plans to extend and add machines later on.

The available blocks and textures are send from the server, this make it possible to add blocks to the game with the help of server plugins.

All these things means that we will be able to play at different servers with
a wide range of mods with the same client. It will also be extremely hard to
cheat when most of the logic is located in the server.

## The server

The server is written in Scala with Akka, the idea is to focus on scalability,
extendability and huge worlds with server driven game logic.

### Scalability - actors

The server is implemented using [Akka](http://akka.io/) actors and the new IO subsystem ported from the [Spray](http://spray.io/) project. We try to keep everything nicely isolated in or behind an actor to make the game easy to scale up (run on multiple cores/CPUs). We hope that this in the long run also will help with scaling out (running the same world on several servers).

### Huge worlds - separated game logic and world

At the core we try to have very simple block format that is shared with the client. We store all blocks compressed using [DEFLATE](http://en.wikipedia.org/wiki/DEFLATE), also when in memory or being sent to the client. This means that we can keep a huge amount of blocks in memory which helps fight IO latency as well as keeping disk IO to a minimum. Actually, one of the unimplemented features is block unloading. So far we never needed it!

Since we can manage a huge amount of blocks, it makes sense to not limit world interaction to where the player is. Therefore we have completely separated all world logic from the world itself. Therefore automatic world interaction is not dependent on the part of the world being loaded, but is always done for all of the world via plugins.

### Extendability - plugins are actors

Since the server is at is core just a set of actors exchanging messages every plugin is created equal. Message interfaces are provided to interact with the block world as well as with players. Persistence are provide by actors capable of loading and storing JSON data on behalf of other actors. It is therefore easy to create a plugin that keeps out of the way of other plugins.

### Server driven game logic - true multiplayer game

To keep the game extremely extensible, while still keeping the client simple, all game logic is implemented server side. This means that for the player there is no need to download different plugins or versions of the client to play different worlds. Plugins mainly interact with the block world and/or using one of the simple features implemented in the client (like the inventory).
