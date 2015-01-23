#stuartfenton/docker-golang-runtime
FROM stuartfenton/docker-golang-base

ADD go-build /bin/go-build
ADD go-run /bin/go-run

ONBUILD ADD . /gopath/src/app/
ONBUILD RUN /bin/go-build

EXPOSE 8080
CMD []
ENTRYPOINT ["/bin/go-run"]
