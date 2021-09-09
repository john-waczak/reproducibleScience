# syntax=docker/dockerfile:1

FROM julia:1.6.1

WORKDIR /app

COPY Project.toml Project.toml
COPY Manifest.toml Manifest.toml
COPY app.jl app.jl

ENV JULIA_PROJECT=@. 
RUN julia -e 'using Pkg; Pkg.instantiate()'
RUN julia -e 'using Pkg; Pkg.status()'
RUN julia -e 'println(Base.active_project())'


EXPOSE 8000


CMD ["julia", "app.jl"]

