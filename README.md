# Docker_Tor-Relay
A lightweight Docker Container containing Tor and Nyx based on Alpine Linux (around 100mb)


In this repository you will find everything you need to set up an ultra lightweight Docker container containing Tor (as middle relay) and Nyx.

My Folderstructure is as follows, you can use the same or a different one, just adjust the paths accordingly if you take another one:

/docker
|-- /bin
    |-- /ator-relay
        |-- build.sh
        |-- run.sh
|-- /data
    |-- /ator-relay
|-- /images
    |-- /ator-relay
        |-- Dockerfile
        |-- /conf
            |-- torrc



            /docker
|-- /bin
| |-- /ator-relay
| |-- build.sh
| |-- run.sh
|-- /data
| |-- /ator-relay
|-- /images
|-- /ator-relay
|-- Dockerfile
|-- /conf
|-- torrc

If you are looking for incentives to run the relay and support a great project I higly recommend to look into ATOR. (Still in testnet as of 03.11.23)
ATOR empowers the adoption and strength of the Tor network. ATOR Proof-of-Uptime and relay hardware allow users to earn passively while contributing to Tor.

The Docs can be found here:
https://docs.ator.io/
Website
https://ator.io/
Twitter
https://twitter.com/atorprotocol


There is no additional work (If you already have an On-Chain Crypto wallet like Metamask, Rabby or similar)
Simply add "@ator: [YOUR WALLET ADDRESS]" to the ContactInfo in the torrc config file and claim your Node here: https://ator-dashboard.ar-io.dev/
