ARG BUILD_FROM
FROM rogerfar/rdtclient:latest

# Install jq
RUN apk add --no-cache jq

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

ENTRYPOINT [ "/run.sh" ]
