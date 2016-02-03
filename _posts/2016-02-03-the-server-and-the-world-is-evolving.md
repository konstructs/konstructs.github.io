---
layout: news
title: The ever evolving world
by: Stefan
excerpt: The server and the world are evolving
---

# What is an evolving world?

The basis of a game like Konstructs (or Minecraft) is the ability of the player to change the world to their liking. If you don't like a mountain, you just dig it away, blow it up or make it even higher. What always annoyed me a bit was how static the world itself was. Therefore one of the things we really wanted to change with Konstructs was how the world was generated.

In most game, the world is either modeled by a human or generated in a programmatic way, before the player enters the world (or a specific part of the world). This means that when the player enters the world, it is already dead. While for a purely creative game, where the player mainly plays to build something or alter the world, this might even be preferable, I think that for a more adventure oriented game, this is a bit boring.

# How to keep a world evolving?

One of the first questions to be discussed was where do we put the line between the dead world and the evolving world. In the end we kind of ended up with putting it between Mars and Earth. Basically, what is generated in a programmatic way is a stone, dirt, elevation, sand and water. So when you first enter the latest version of a Konstruct server it's going to be something like this:

![Empty and lifeless world](/images/news/empty-world.png)

Boring. But don't despair, craft some grass,

![Craft some grass](/images/news/craft-grass.png)

plant it, and watch the world slowly evolve right in front of you.

![Growing grass](/images/news/growing-grass.png)

Yey a flower!

![A flower](/images/news/growing-grass-flower.png)

Is that a tree? OMG where did all those trees come from!?

![A tree](/images/news/growing-tree.png)

# Where to go from here?

Everything in Konstructs is a plugin. The pictures above are the combination of the following three plugins running on a server:

- https://github.com/konstructs/server-plugin-grass
- https://github.com/konstructs/server-plugin-forest
- https://github.com/konstructs/server-plugin-flowers

They are just examples of what you can do to keep the world evolving. Fork one and create something unique for yourself!
