# Scala and Mill Dockerfile

This repository contains a [Dockerfile](./Dockerfile) containing [Scala](http://www.scala-lang.org) and [Mill](http://www.lihaoyi.com/mill/).

Forked from [github.com/nightscape/scala-mill](github.com/nightscape/scala-mill).

## Base Docker Image

* [openjdk](https://hub.docker.com/_/openjdk)


## Installation

1. Install [Docker](https://www.docker.com)
2. Pull [automated build](https://registry.hub.docker.com/u/awanoodle/scala-mill) from public [Docker Hub Registry](https://registry.hub.docker.com):

```shell
docker pull awanoodle/scala-mill
```

Alternatively, you can build an image from Dockerfile:

```shell
docker build -t github.com/awanoodle/scala-mill
```

`latest` tag represents the master branch.
`<java version>-<scala version>-<mill version>` tags are available and follow tags in Github.


## Usage

```shell
docker run -it --rm awanooodle/scala-mill
```


## Contribution Policy

Contributions via GitHub pull requests are gladly accepted from their original author. Along with any pull requests, please state that the contribution is your original work and that you license the work to the project under the project's open source license. Whether or not you state this explicitly, by submitting any copyrighted material via pull request, email, or other means you agree to license the material under the project's open source license and warrant that you have the legal authority to do so.


## License

This code is open source software licensed under the [Apache 2.0 License]("http://www.apache.org/licenses/LICENSE-2.0.html").
