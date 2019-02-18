# ime_prokka
Docker image for PROKKA annotation pipeline

## Prerequisities

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

## Usage

The docker image provides the
[PROKKA](https://github.com/tseemann/prokka) software. It will run the
`prokka` command as entrypoint.  Therefore, running a container is as
easy as:

```
docker run --rm -it greatfireball/ime_prokka --version
```

Just provide all required parameters via command line.
Default working directory is `/data`.
Therefore, input data should be mounted using `/data` volume.

Running the command to run PROKKA on its sample files in `result` as
output folder in the current folder:

```
docker run --rm -it -v $PWD:/data greatfireball/ime_prokka \
   --cpus 2 \
   --outdir result \
   --prefix asm \
   /opt/prokka/test/plasmid.fna
```

## Releases

The master branch contains a rolling release.  The develop branch is
used for further development.  Specific tags are used for different
SeqFilter releases. Latest release is
[![](https://images.microbadger.com/badges/version/greatfireball/ime_prokka:v1.13.4.svg)](https://microbadger.com/images/greatfireball/ime_prokka:v1.13.4
"Get your own version badge on microbadger.com").

| Version/Branch | Commit in Docker Repo | Image |
| -------------- | --------------------- | ----- |
| [![](https://images.microbadger.com/badges/version/greatfireball/ime_prokka:master.svg)](https://microbadger.com/images/greatfireball/ime_prokka:master
  "Get your own version badge on microbadger.com") |
  [![](https://images.microbadger.com/badges/commit/greatfireball/ime_prokka:master.svg)](https://microbadger.com/images/greatfireball/ime_prokka:master
  "Get your own commit badge on microbadger.com") |
  [![](https://images.microbadger.com/badges/image/greatfireball/ime_prokka:master.svg)](https://microbadger.com/images/greatfireball/ime_prokka:master
  "Get your own image badge on microbadger.com") |
| [![](https://images.microbadger.com/badges/version/greatfireball/ime_prokka:develop.svg)](https://microbadger.com/images/greatfireball/ime_prokka:develop
  "Get your own version badge on microbadger.com") |
  [![](https://images.microbadger.com/badges/commit/greatfireball/ime_prokka:develop.svg)](https://microbadger.com/images/greatfireball/ime_prokka:develop
  "Get your own commit badge on microbadger.com") |
  [![](https://images.microbadger.com/badges/image/greatfireball/ime_prokka:develop.svg)](https://microbadger.com/images/greatfireball/ime_prokka:develop
  "Get your own image badge on microbadger.com") |
| [![](https://images.microbadger.com/badges/version/greatfireball/ime_prokka:v1.13.4.svg)](https://microbadger.com/images/greatfireball/ime_prokka:v1.13.4
  "Get your own version badge on microbadger.com") |
  [![](https://images.microbadger.com/badges/commit/greatfireball/ime_prokka:v1.13.4.svg)](https://microbadger.com/images/greatfireball/ime_prokka:v1.13.4
  "Get your own commit badge on microbadger.com") |
  [![](https://images.microbadger.com/badges/image/greatfireball/ime_prokka:v1.13.4.svg)](https://microbadger.com/images/greatfireball/ime_prokka:v1.13.4
  "Get your own image badge on microbadger.com") |

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code
of conduct, and the process for submitting pull requests to us.

## Author

- **Frank Förster** - *Initial work* - [greatfireball](https://github.com/greatfireball)

See also the list of
[contributors](https://github.com/greatfireball/ime_prokka/contributors)
who participated in this project.

## License

This project is licensed under the MIT License - see the
[LICENSE.md](LICENSE.md) file for details.
