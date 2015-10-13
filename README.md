# deckie.io
[![Circle CI](https://circleci.com/gh/ContainerHQ/deckie.io.svg?style=svg)](https://circleci.com/gh/ContainerHQ/deckie.io)

**Deckie** website is available online [here](http://www.deckie.io/).

## Hack

To hack on this documentation, you can directly use any markdown editor of
your choice (including directly editing the file on GitHub).

This website is built using [Middleman](https://middlemanapp.com/).

If you want to preview a live version of this documentation, all you need
is [Docker](http://www.docker.com) and [Make](http://www.gnu.org/software/make/).

### Run the website server inside a container

    make

### Clean the container

    make clean

### Rebuild and restart the website server

    make re

### Run a development environment

    make dev

Then you should be able to start the website server with:

    bundle exec middleman server

The project directory is mounted inside a volume, allowing to change files
without leaving the container.

### Open the website

The website should be running on your Docker host and available at:

    http://$(your-docker-ip):$PORT

You can run the website server on another port of your Docker host
by specifying the environment variable `PORT` (default: `4567`) before any
of the previous commands (except clean).

### Deployment

 The website is automatically deployed on
[GitHub Pages](https://pages.github.com/) when something happen on the
master branch.

## Contributing

See the contributing [guidelines](CONTRIBUTING.md).

## Licensing
deckie.io is licensed under the MIT License. See [LICENSE](LICENSE) for
full license text.
