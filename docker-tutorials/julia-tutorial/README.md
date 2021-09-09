Based on tutorials [here](https://nbis-reproducible-research.readthedocs.io/en/course_2104/docker/) and [here](https://docs.docker.com/language/python/). 

```julia
pkg> activate .
```

```julia
pkg> add Dash, DashCoreComponents, DashHtmlComponents, DashTable
pkg> add PlotlyJS
```

Fill out `app.jl`. 


Pull the latest julia docker image from dockerhub 
```bash
$ docker pull julia
```

Create the Dockerfile for the project

Build an Image 
```bash
$ docker build --tag julia-tutoiral .
```

Run the Container
```bash
$ docker run -p 8000:8000 julia-tutorial
```
