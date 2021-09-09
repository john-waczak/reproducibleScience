Based on [this](https://docs.docker.com/language/python/build-images/) tutorial. 

1. Create Dockerfile for Python 
2. Build an Image 
```bash
$ docker build --tag python-tutorial .
```
3. Verify the image exists
```bash 
$ docker images
```
4. Run image as a container 
```bash 
$ docker run python-tutorial
```

