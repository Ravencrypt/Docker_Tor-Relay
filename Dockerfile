```
# Use the latest Alpine image as the base
FROM alpine:latest

# Install Tor and Nyx
RUN apk update && apk add tor
RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    rm -r /root/.cache

RUN pip install nyx

# Copy the torrc configuration file from the conf directory to /etc/tor inside the container
COPY conf/torrc /etc/tor/torrc

# Change the owner of the /etc/tor directory to the 'tor' user
RUN chown -R tor /etc/tor

# Switch to the 'tor' user
USER tor

# Set tor as the entrypoint with the default command to run the Tor service with the specified config file
ENTRYPOINT ["tor"]
CMD ["-f", "/etc/tor/torrc"]
```

