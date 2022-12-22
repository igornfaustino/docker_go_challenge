FROM golang:1.19 as Builder

WORKDIR /usr/src/app
COPY . .
RUN go build .


FROM scratch

COPY --from=Builder /usr/src/app/hello .
CMD [ "./hello" ]