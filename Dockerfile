FROM docker.io/frolvlad/alpine-go:latest
RUN ["mkdir", "/nagflux"]
ADD nagflux /nagflux/nagflux
ADD config.gcfg /nagflux/config.gcfg
CMD ["/nagflux/nagflux", "-configPath=/nagflux/config.gcfg"]
