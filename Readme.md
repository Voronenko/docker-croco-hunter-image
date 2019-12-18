This is demo used to demonstrate some aspects for dealing with containerized applications cd/ci on a simple example.
For purposes of the demo I just needed simple workable image exposing some useful service over http.

If you want nice original source with helm, etc, proceed to  https://github.com/lachie83/croc-hunter



If you choose to start from this fork, steps generally are


to build demo image

```
make docker_build
make docker_push
```

to run demo image

```
docker run -p 7777:7777 voronenko/docker-sample-image:7777
```

