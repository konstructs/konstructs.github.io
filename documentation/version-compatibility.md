---
layout: page
title: Version Compatibility
permalink: documentation/version-compatibility/
---

# Version Compatibility

You can't mix and match versions freely, from time to time we need to change the protocol used between the server and client, or update the API used by plugins. This page is here to help you figure out what versions works together.

| Date           | Game Release | Server Release | Client Release | API release |
|:--------------:|:------------:|:--------------:|:--------------:|:-----------:|
| 2015-08-10     | 1            | 0.1.7          | 1              | -           |
| 2015-09-05     | 2            | 0.1.8          | 2              | -           |
| 2015-12-31     | 3            | 0.1.11         | 3              | -           |
| 2016-03-26     | 4            | 0.1.15         | 4              | 0.1.0       |
| 2016-05-08     | 5            | 0.1.16         | 5              | 0.1.6       |
| **2016-06-09** | **6**        | **0.1.17**     | **6**          | **0.1.8**   |

You most likely want the latest released versions of everything, if not told otherwise. The latest released versions of the API, server and client will always work together. The API is only relevant if you are developing new plugins.

While released versions do work together, this is not always the case with master in the git repositories. We try to keep everything in sync as much it's possible. So if you like to contribute, keep an eye out if there are some open PR that may contain some critical code.

How to figure out these things your self? The game release always equals the client release, so that's simple. For matching server and client, look at this page, or check the [download page history](https://github.com/konstructs/konstructs.github.io/commits/master/download.md). Finally, the server uses the API, so see `build.sbt` for a matching version. The same thing goes for plugins, most of them uses Gradle so see `build.gradle`. You need a server that supports the specified version, or newer. Deprecated API:s are supported until the next minor version (0.1.x -> 0.2.0). There are no guaranties what so ever if you are using internal server methods.

If you need help, open a issue in the appropriate repository over at [GitHub](https://github.com/konstructs), or ask in your Chat room at [Gitter](https://gitter.im/orgs/konstructs/rooms).