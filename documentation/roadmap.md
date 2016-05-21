---
layout: page
title: Roadmap
permalink: documentation/roadmap/
---

# Roadmap

While the specific details has changed a few times over the year, the overall plan with the game is still the same. The intention with this page is to share our vision of the future of the game, what we are working towards.

Specific tasks are located in the various git repositories over at [GitHub](http://github.com/konstructs). If you have questions or opinions be free to add a message to a open issue, or, open a new one. Pull requests are always welcome, if you are uncertain if the changes are in the line with our roadmap, open a issue or ask in the [appropriate chatroom](https://gitter.im/orgs/konstructs/rooms) over at Gitter.

## Overall goal

Make a [voxel](https://en.wikipedia.org/wiki/Voxel) based game that's focused on massive multiplayer, a simple client with most of the game logic in the server. The server is extendable with plugins.

It is important for us to make a fun game with the usual core parts like building, constructing, mining, exploring and protect your self from the dangers of the world. The core parts of the server implements the core concepts together with the client. The rest is in plugins.

## Short time goals

### The Client

The client is the user facing application, the actual software that needs to be downloaded and installed at the player's computer so we need to provide a stable, good looking and easy to use application. The target platforms are Linux, Windows and OS X.

- [konstructs/client - Release 6](https://github.com/konstructs/client/milestones/Release%206)
- [konstructs/client - Undecided - Short-term](https://github.com/konstructs/client/milestones/Undecided%20-%20Short-term)

### The Server

The server core APIs need to be finalized and documented to provide the needed tools to extend and add to the game with the help of plugins. Write several plugins both to make the game more fun and interesting, but also to test out the plugin APIs.

- [konstructs/server - Release 6](https://github.com/konstructs/server/milestones/Release%206)
- [konstructs/server - Undecided - Short-term](https://github.com/konstructs/server/milestones/Undecided%20-%20Short-term)

## Long term goals

We like the game to be a server core running plugins to make a dynamic and interesting game. The world is not a static thing but a simulation with forests that grow together with flowers, grass and water flowing down in rivers. Everything controlled by clever written plugins and algorithms.

Mobs both friendly and dangerous roam the steppes, oceans and mountains. Dwarfs build kingdoms under your feet deep in the core of the mountains. You collect stone, rocks and build your first tools, slowly moving forward and crafting more and more powerful items. Finally you build your first craft, a boat (blocks of course!) and sail the ocean looking for new land to settle. Later on you decide that this world is to small for you and you pull all your resources together and builds a huge spaceship and launch in to deep space.

Everything above is possible with our current design, both the client and server is written to handle these things. Still, there are a lot of code to be written to finalize it.

- [konstructs/client - Undecided - Long-term](https://github.com/konstructs/client/milestones/Undecided%20-%20Long-term)
- [konstructs/server - Undecided - Long-term](https://github.com/konstructs/server/milestones/Undecided%20-%20Long-term)

## Like to help with the Game?

There are plenty of options that we need help with, I will list a few of them here:

* If you know you way around OpenGL and/or C++ the client is a good place to start, there are always hundreds of minor things to do. Everything from optimizing to adding new interesting effects and UI elements. A good place to start to get some inspiration is from the [list of issues](https://github.com/konstructs/client/issues).

* If you love backend programming in Scala with actors the server is a interesting place to be. Looking for something to do, I recommend to [check out the issues](https://github.com/konstructs/server/issues).

* Is graphic design your thing? We needs plenty of good looking blocks and UI elements. Improvements and additions are always welcome. Is the web more of your thing? Improvements to the web page is always welcome.

* Write a plugin! We needs hundreds of plugins to make this game interesting. It can be really simple things like a new block, to really advanced things like a mob AI. Plugins can be written in both Scala and Java.

* Help us with the documentation. There is a lot of work to write good and easy to understandable documentation and help in that department is really helpful both for us and for new developers.

* Play the game! We need a lot of players to test things and make sure that things do not break, that things are fun and balanced, that the game run smooths and is playable on all supported platforms. Report problems and we will look in to them.
