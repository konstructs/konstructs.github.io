---
layout: news
title: Two years of konstructs!
by: Petter
excerpt: Konstructs is celebrating its second birthday!
---
# Two years of konstructs

Two years ago I started konstructs together with Stefan. We started out writing a new server for the open source project [craft](https://www.michaelfogleman.com/craft/), but quite soon we started to update the client as well. In the beginning we struggled with making sense of voxels and how to manage big amounts of them, but we soon understood some important facts about multiplayer voxel games. You need a lot of voxels to render a scene in the client, so a server needs to be very good at sending a lot of voxels with minimal effort. Our first working server generated a world that looked like this:

![Terrain Gen](/images/news/early-terrain-gen.png)

<p class="image-with-caption">
The "rainbow terrain" is sent from the server looping through all available textures. The clouds and ground is still rendered by the client, the code was not removed at this point.
</p>

## The server and the first release

We did focus a lot on the server in the beginning and you can read more about our initial development [here](http://www.konstructs.org/the-start/). The work culminated in the initial [http://www.konstructs.org/release-1/](playable release of the game). What makes me really happy looking at those screenshots is that the they are all from our server and everything is still there. We have kept our promise to never deprecate worlds, always making all the newest blocks available everywhere, even though the world was initially created one and a half years ago. This is done by not generating the world, but rather [evolving it](http://www.konstructs.org/the-server-and-the-world-is-evolving/).

![Early screenshot from play.konstructs.org](/images/news/inventory-closed.png)

<p class="image-with-caption">
This is screenshot from play.konstructs.org the way it looked at the time of the initial release.
</p>

## The new client and the new model format

After our first few releases we realized that patching the old client from the Craft project was in the end not feasible. Therefore, on our one year birthday, we [rewrote our client in C++](http://www.konstructs.org/one-year/). This included an updated to the shaders to better suit a voxel game. I think it is now fair to say that we have one of the most compact model formats of any voxel engine out there, allowing huge amount of blocks to be render in a single scene.

![Long Distance Rendering](/images/long-distance-render-flying.png)

<p class="image-with-caption">
This is with view distance set to 30, that's 960 blocks away with approximately 13 500 chunks processed!
</p>

## Plugins!

Extending the game has always been our focus and the way to do this in konstructs is to write plugins. We now have an [ever growing collection of plugins](http://www.konstructs.org/plugins/) and the world evolution mechanisms makes sure that new plugins become available everywhere in the world. I just mined [a new ore](https://github.com/konstructs/server-plugin-ore) in rock that was generated all the way back in release 1. The server makes sure that it is easy to write plugins that are generic and can easily work with and be extended by other plugins. This means that plugins are not likely to conflict each other and it is easy to make sure that blocks that the plugin doesn't know about yet can still be used by the plugin via block type classes. Plugins are written in any language that runs on the JVM and there is a [Java API](http://doc.konstructs.org/server-api/index.html) to interact with the server.

The server is actually a very small software project that totals at ~5000 lines of Scala code (the client is ~6000 lines of C++). For a voxel game server (and client), this is really tiny! It anyway already have a lot of advanced features, some not present in any other voxel game, as well as being fundamentally multithreaded and can make use of all your server's CPU cores.

## New Features

After the new client was done and [the server plugin API](http://doc.konstructs.org/server-api/index.html) was published, we started to focus on adding new features. One of the things that makes konstructs quite unique is that [each block has its own health](http://www.konstructs.org/release-7/). This means that if you hit a block with a pick axe, it breaks a bit. If you then arrive back later on, this block will still be broken. Another interesting feature is that any block that is configured for it can be rotated. This is useful to rotate for example wood blocks to make nice looking beams. One of the features that were missing for quite some time was ambient and source light. This was added in the [latest release](http://www.konstructs.org/release-8/) and one of the real cool things is that any block can have light and the light can be in any colour. This is very useful when celebrating a two year birthday. Happy birthday Konstructs!

<iframe width="560" height="315" src="https://www.youtube.com/embed/NXtVOd00HBs" frameborder="0" allowfullscreen></iframe>
