# freebsd-cross-build

This creates a container that can be used to build FreeBSD binaries
natively on Linux

To build:

    docker build -t <docker tag> .

Example:

    docker build -t spectralogic/freebsd-cross-build:12.3 .

To run:

    docker run --rm -it <tag>
