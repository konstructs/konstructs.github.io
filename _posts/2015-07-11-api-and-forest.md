---
layout: news
title: API and Forest
by: Stefan
excerpt: API and the Forest plugin
---

# API and Forest

Over the last month or so most work has been around the server, the server API is taking form and we have today our first plugin called Forest. Forest is a plugin that listen to block changes and builds trees, the tree is then managed for a time while it grows and spreads and make more trees.

The client has been quiet for some time now, until just a hour ago when I merged a sequence of commits that refactored the main() function and made thing much easier to read. I also sneaked in a small change, a little primitive GUI. No need with the command line parameters anymore. This will make things much easier for the Windows folks!

One big problem for me has been the lack of OpenGL knowledge, I have spent some time to learn that and I understand things much better today. When I got a hang of it I will start to modify the client to add the missing GUI components for bags and crafting.
