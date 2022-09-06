FROM golang:alpine

RUN go install golang.org/x/vuln/cmd/govulncheck@latest
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
