# Docker Shortcuts

Convenience shortcuts for working with Docker containers.

## Commands

* `dps` - docker ps with a much nicer formatting
* `da` - docker exec with interactive terminal
* `dcon` - docker console - runs bin/console, for applications that have an interactive console
* `dlogs` - docker logs

## Installation

1. Install Docker
2. Install Ruby (tested with 2.5.1 using `apt install ruby-full`)
3. Install fzf: https://github.com/junegunn/fzf
4. Run `./install.sh`

Installation will copy files to: `~/.docker-shortcuts/`.

It will also add a path in your `~/.bash_profile` if it exists or `~/.profile` if not.

To uninstall:

1. `rm -rf ~/.docker-shortcuts`
2. Remove the path in `~/.bash_profile` or `~/.profile`.

## MIT License

Copyright 2020 ArtStation

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.