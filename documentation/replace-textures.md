---
layout: konstructs
title: Replace Textures
permalink: documentation/replace-textures/
---

# Replace Textures

This page explains how to replace/update/add textures for non-developers.

## Format

A texture is an 16x16 PNG image, for example <img src="https://raw.githubusercontent.com/konstructs/server/master/src/main/resources/textures/org/konstructs/flower-red.png" class="normal-img">. Note the pink, this will be interpreted as transparent.

### Cross Texture
<img src="/images/documentation/cross-texture-demo.png" class="normal-img" style="width: 250px">

The cross texture renders in an cross, it still behaviors like a normal block. This texture is mainly used for plants like grass and flowers. The texture for the flower in the picture looks like this <img src="https://raw.githubusercontent.com/konstructs/server/master/src/main/resources/textures/org/konstructs/flower-yellow.png" class="normal-img">

### Cube Texture
<img src="/images/documentation/cube-texture-demo.png" class="normal-img">

This is the well known cube or block form, this texture can be in two formats. In it's simplest form something like this dirt texture: <img src="https://raw.githubusercontent.com/konstructs/server/master/src/main/resources/textures/org/konstructs/dirt.png" class="normal-img">, this will be applied to all sides of the cube.

The more complex (but still simple) texture form is something like the grass block <img src="https://raw.githubusercontent.com/konstructs/server/master/src/main/resources/textures/org/konstructs/grass-dirt.png" class="normal-img">, the first part of the image will cover the bottom of the cube, the middle will cover the sides and the last covers the top.

## The location

Konstructs is a server driven game where most of the things happens in the server, this is also true with the textures. The server core is quite small, many textures rests inside different plugins, but as today there is a core collection of textures bundled with the server.

* [https://github.com/konstructs/server](https://github.com/konstructs/server)

This is the core server, the absolute minimum needed to play the game. It contains blocks like stone, dirt and water. For a full list navigate to `src > main > resources > textures`.

Another example is the plugin forests that adds saplings and beech wood:

* [https://github.com/konstructs/server-plugin-forest/tree/master/src/main/resources/textures/org/konstructs/forest](https://github.com/konstructs/server-plugin-forest/tree/master/src/main/resources/textures/org/konstructs/forest)

## Update the textures

If you know your way around Java/Scala and gradle/sbt the simplest way is probably to checkout the code from git, update the textures and then build a jar and use it. This guide uses a more manual but simpler approach that needs no coding experience.

Download the appropriate jar that you like to modify, in this example we will use the server and update the dirt block.

* From the [download page](http://www.konstructs.org/download/), download the server.
* A JAR-file is just a ZIP file, extract it with an unzip utility of your choice.
* Navigate to `textures > org > konstructs` and update the dirt.png texture.
* Compress it again and make and make sure that it's called JAR, not ZIP.

Notes:

* In some ZIP programs you can probably just open and manipulate the files directly, like a folder, no need to unpack/repack the file. This is much easier and highly recommended.


## Test the textures

To start a local server, open a command prompt and navigate to the folder where your server jar is.

Type something like this:

`java -cp konstructs-server-build-v0.1.11.jar konstructs.Main`

If you like to load plugins, separate them with `:`, for example `-cp konstructs-server-build-v0.1.11.jar:myplugin.jar`

Now launch the game client and connect to `localhost`.

Note: There is currently a bug that _sometimes_ causes you to spawn under water, or even under the world, that can be a little confusing. Press tab to enter fly mode and press space to fly up, look up and you may see the bottom of the world :) You can dig your self up, or just remove the world and try again.

## How to _add_ a new block

Once again, look inside the server jar, make a new image, let us call it `example.png`. Now find the configuration file called `reference.conf`, edit it and find a similar block that we can use as an template, in our case the dirt block will work just fine. Under `org/konstructs/block-manager` you will find the dirt block:

```
org/konstructs/dirt {
}
```

Copy that and add out own example block:

```
org/konstructs/example {
}
```

All done, of course there is no way to craft the block so we need to add that as well. Under `org/konstructs/konstructing` find a template, I will use wood:

```
      org/konstructs/wood {
        match.stack {
          id = org/konstructs/dirt
          amount = 8 
        }
        result.id = org/konstructs/wood
      }   
```

add something like this:

```
      org/konstructs/example {
        match.stack {
          id = org/konstructs/dirt
          amount = 2 
        }
        result.id = org/konstructs/example
      }   
```

This will make our new block craftable from 2 dirt blocks.